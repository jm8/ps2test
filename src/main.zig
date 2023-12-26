const std = @import("std");
const c = @import("headers.zig");

extern fn write(fd: i32, buf: [*]const u8, n: u32) i32;
const _write = write;

pub const os = struct {
    pub const system = struct {
        pub const fd_t = i32;
        pub const STDOUT_FILENO = 1;
        /// Redirect stderr to stdout, since the ps2sdk only gives us stderr
        pub const STDERR_FILENO = 1;
        /// Should return a "negative" value between "-4096" and "-1" in case of error, otherwise the number of bytes writen
        pub fn write(fd: i32, buf: [*]const u8, n: u32) u32 {
            return @bitCast(_write(fd, buf, n));
        }

        pub const E = std.os.linux.E;
        /// Checks if the number is "negative" and more than "-4096", flips it and converts it to the error enum
        pub const getErrno = std.os.linux.getErrno;
    };
};

/// How to store pixels in the frame buffer
const PixelStorageMethod = enum(i32) {
    /// 32 bits per pixel.
    PSM_32 = c.GS_PSM_32,
    /// 24 bits per pixel.
    PSM_24 = c.GS_PSM_24,
    /// 16 bits per pixel.
    PSM_16 = c.GS_PSM_16,
    /// 16 bits per pixel.
    PSM_16S = c.GS_PSM_16S,
    /// 24 bits per pixel.
    PSM_PS24 = c.GS_PSM_PS24,
    /// 8 bits per pixel, palettized.
    PSM_8 = c.GS_PSM_8,
    /// 4 bits per pixel, palettized.
    PSM_4 = c.GS_PSM_4,
    /// 8 bits per pixel, 24 to 32
    PSM_8H = c.GS_PSM_8H,
    /// 4 bits per pixel, 28 to 32
    PSM_4HL = c.GS_PSM_4HL,
    /// 4 bits per pixel, 24 to 27
    PSM_4HH = c.GS_PSM_4HH,
    /// 32 bits per pixel.
    PSMZ_32 = c.GS_PSMZ_32,
    /// 24 bits per pixel.
    PSMZ_24 = c.GS_PSMZ_24,
    /// 16 bits per pixel.
    PSMZ_16 = c.GS_PSMZ_16,
    /// 16 bits per pixel.
    PSMZ_16S = c.GS_PSMZ_16S,
};

/// ZBuffer storage setting
const ZStorageMethod = enum(i32) {
    /// 32 bit zbuffer
    ZBUF_32 = c.GS_ZBUF_32,
    /// 24 bit zbuffer
    ZBUF_24 = c.GS_ZBUF_24,
    /// 16 bit zbuffer
    ZBUF_16 = c.GS_ZBUF_16,
    /// 32/24 bit compatible 16 bit zbuffer
    ZBUF_16S = c.GS_ZBUF_16S,
};

const CanvasCreateOptions = struct {
    width: u32,
    height: u32,
    mask: i32 = 0,
    psm: PixelStorageMethod = .PSM_32,
    zsm: ZStorageMethod = .ZBUF_32,
};

/// A canvas represents a frame buffer and z buffer.
const Canvas = struct {
    width: u32,
    height: u32,
    mask: i32,
    psm: PixelStorageMethod,
    zsm: ZStorageMethod,
    frame_buffer: i32,
    z_buffer: i32,

    fn init(options: CanvasCreateOptions) !Canvas {
        const frame_buffer = c.graph_vram_allocate(@intCast(options.width), @intCast(options.height), @intFromEnum(options.psm), c.GRAPH_ALIGN_PAGE);
        const z_buffer = c.graph_vram_allocate(@intCast(options.width), @intCast(options.height), @intFromEnum(options.zsm), c.GRAPH_ALIGN_PAGE);

        // graph_initialize always returns 0.
        _ = c.graph_initialize(@intCast(frame_buffer), @intCast(options.width), @intCast(options.height), @intFromEnum(options.psm), 0, 0);
        _ = write(1, "AAAA\n", 5);
        // const buffer = try std.heap.c_allocator.alignedAlloc(Qword, 64, 32);
        const buffer = c.memalign(64, @sizeOf(Qword) * 32);
        _ = write(1, "BBBB\n", 5);
        var q = @as(*Qword, @ptrCast(@alignCast(buffer)));
        _ = write(1, "CCCC\n", 5);
        const start = q;
        var c_frame_buffer = c.framebuffer_t{
            .address = @intCast(frame_buffer),
            .width = options.width,
            .height = options.height,
            .psm = @intCast(@intFromEnum(options.psm)),
            .mask = @intCast(options.mask),
        };
        _ = write(1, "DDDD\n", 5);
        var c_z_buffer = c.zbuffer_t{
            .address = @intCast(z_buffer),
            .enable = c.DRAW_ENABLE,
            .method = c.ZTEST_METHOD_GREATER_EQUAL,
            .mask = @intCast(options.mask),
            .zsm = @intCast(@intFromEnum(options.zsm)),
        };
        _ = write(1, "EEEE\n", 5);
        q = c.draw_setup_environment(q, 0, &c_frame_buffer, &c_z_buffer);
        _ = write(1, "FFFF\n", 5);
        q = c.draw_primitive_xyoffset(q, 0, (2048.0 - @as(f32, @floatFromInt(options.width)) / 2.0), (2048.0 - (2048.0 - @as(f32, @floatFromInt(options.height)) / 2.0) / 2.0));
        _ = write(1, "GGGG\n", 5);
        q = c.draw_clear(q, 0, 2048.0 - 320.0, 2048.0 - 256.0, @floatFromInt(options.width), @floatFromInt(options.height), 0xff, 0, 0);
        _ = write(1, "HHHH\n", 5);
        q = c.draw_finish(q);
        _ = write(1, "IIII\n", 5);
        var i = start;
        while (i != q) {
            _ = c.printf("%08x %08x\n", q.dw[0], q.dw[1]);
            i = @ptrFromInt(@intFromPtr(i) + @sizeOf(Qword));
        }
        //_ = c.dma_channel_send_normal(c.DMA_CHANNEL_GIF, start, @intCast((@intFromPtr(q) - @intFromPtr(start)) / @sizeOf(Qword)), 0, 0);
        //c.dma_wait_fast();

        // std.heap.raw_c_allocator.free(buffer);
        c.free(buffer);

        return .{
            .width = options.width,
            .height = options.height,
            .mask = options.mask,
            .psm = options.psm,
            .zsm = options.zsm,
            .frame_buffer = frame_buffer,
            .z_buffer = z_buffer,
        };
    }
};

fn game() !void {
    const canvas = try Canvas.init(.{
        .width = 640,
        .height = 512,
    });

    _ = canvas;
}

const Qword = c.qword_t;

export fn main() i32 {
    game() catch |err| {
        std.debug.print("Error: {s}\n", .{@errorName(err)});
    };

    _ = c.SleepThread();
    return 0;
}
