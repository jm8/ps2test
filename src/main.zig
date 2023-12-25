const std = @import("std");
const c = @import("headers.zig");
const allocator = @import("allocator.zig").allocator;

// pub const os = struct {
//     pub const system = struct {
//         pub const fd_t = i32;
//         pub const STDOUT_FILENO = 0;
//         pub const STDERR_FILENO = 1;
//         pub const E = std.os.linux.E;
//         pub const PROT = std.os.linux.PROT;
//         pub const MAP = std.os.linux.MAP;
//         pub const MSF = std.os.linux.MSF;
//         pub const dl_phdr_info = std.os.linux.dl_phdr_info;
//         pub const abort = c.abort;

//         pub fn getErrno(T: usize) E {
//             _ = T;
//             return .SUCCESS;
//         }

//         pub fn write(f: fd_t, ptr: [*]const u8, len: usize) usize {
//             _ = ptr;
//             _ = f;
//             return len;
//         }

//         pub fn mmap(address: [*]const u8, length: usize, flags: i32) usize {
//             _ = flags;
//             _ = length;
//             _ = address;
//             return 1;
//         }

//         pub fn munmap(address: [*]const u8, length: usize) usize {
//             _ = length;
//             _ = address;
//             return 1;
//         }

//         pub fn msync(address: [*]const u8, length: usize, flags: i32) usize {
//             _ = flags;
//             _ = length;
//             _ = address;
//             return 1;
//         }

//         pub fn isatty(_: i32) i32 {
//             return 0;
//         }
//     };
// };

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
    width: i32,
    height: i32,
    mask: i32 = 0,
    psm: PixelStorageMethod = .PSM_32,
    zsm: ZStorageMethod = .ZBUF_32,
};

/// A canvas represents a frame buffer and z buffer.
const Canvas = struct {
    width: i32,
    height: i32,
    mask: i32,
    psm: PixelStorageMethod,
    zsm: ZStorageMethod,
    frame_buffer: i32,
    z_buffer: i32,

    fn init(options: CanvasCreateOptions) Canvas {
        const frame_buffer = c.graph_vram_allocate(options.width, options.height, @intFromEnum(options.psm), c.GRAPH_ALIGN_PAGE);
        const z_buffer = c.graph_vram_allocate(options.width, options.height, @intFromEnum(options.zsm), c.GRAPH_ALIGN_PAGE);

        // graph_initialize always returns 0.
        _ = c.graph_initialize(frame_buffer, options.width, options.height, @intFromEnum(options.psm), 0, 0);

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

// const Packet = struct {
//     data: []u128,
//     buffer: []u128,

//     /// Initialize a packet with a capacity of `capacity` qwords.
//     fn init(capcity: u32) Packet {
//         const start = c.memalign(64, capcity * 16);
//         return Packet{
//             .buffer = start[0..capcity],

//         };
//     }
// };

fn game() !void {
    const canvas = Canvas.init(.{
        .width = 640,
        .height = 512,
    });
    _ = canvas;

    var array_list = std.ArrayList(Qword).init(allocator);
    try array_list.append(Qword{ .qw = 1 });

    _ = c.printf("Length of array list: %d\n", array_list.items.len);
}

const Qword = c.qword_t;

export fn main() i32 {
    game() catch {};

    _ = c.SleepThread();
    return 0;
}
