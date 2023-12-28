const c = @import("headers.zig");
const game = @import("game.zig");
const std = @import("std");
const allocator = @import("allocator.zig").memalign_allocator;
const input = @import("input.zig");

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

pub export fn init_gs(arg_frame: [*c]c.framebuffer_t, arg_z: [*c]c.zbuffer_t) void {
    var frame = arg_frame;
    var z = arg_z;
    frame.*.width = @as(c_uint, @bitCast(@as(c_int, 640)));
    frame.*.height = @as(c_uint, @bitCast(@as(c_int, 512)));
    frame.*.mask = 0;
    frame.*.psm = 0;
    frame.*.address = @as(c_uint, @bitCast(c.graph_vram_allocate(@as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(frame.*.psm)), @as(c_int, 2048))));
    z.*.enable = 1;
    z.*.mask = 0;
    z.*.method = 2;
    z.*.zsm = 0;
    z.*.address = @as(c_uint, @bitCast(c.graph_vram_allocate(@as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(z.*.zsm)), @as(c_int, 2048))));
    _ = c.graph_initialize(@as(c_int, @bitCast(frame.*.address)), @as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(frame.*.psm)), @as(c_int, 0), @as(c_int, 0));
}
pub export fn init_drawing_environment(arg_frame: [*c]c.framebuffer_t, arg_z: [*c]c.zbuffer_t) void {
    var frame = arg_frame;
    var z = arg_z;
    var packet: [*c]c.packet_t = c.packet_init(@as(c_int, 16), @as(c_int, 0));
    var q: [*c]c.qword_t = packet.*.data;
    q = c.draw_setup_environment(q, @as(c_int, 0), frame, z);
    q = c.draw_primitive_xyoffset(q, @as(c_int, 0), @as(f32, @floatFromInt(@as(c_int, 2048) - @as(c_int, 320))), @as(f32, @floatFromInt(@as(c_int, 2048) - @as(c_int, 256))));
    q = c.draw_finish(q);
    _ = c.dma_channel_send_normal(@as(c_int, 2), @as(?*anyopaque, @ptrCast(packet.*.data)), @divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(packet.*.data))), @sizeOf(c.qword_t)), @as(c_int, 0), @as(c_int, 0));
    c.dma_wait_fast();
    c.packet_free(packet);
}

const RegisterDescriptor = enum(u4) {
    PRIM = 0x0,
    RGBAQ = 0x1,
    ST = 0x2,
    UV = 0x3,
    XYZF2 = 0x4,
    XYZ2 = 0x5,
    TEX0_1 = 0x6,
    TEX0_2 = 0x7,
    CLAMP_1 = 0x8,
    CLAMP_2 = 0x9,
    FOG = 0xa,
    // _ = 0xb,
    XYZF3 = 0xc,
    XYZ3 = 0xd,
    A = 0xe,
    NOP = 0xf,
};

const GifTagOptions = struct {
    prim: ?u11,
    registers: []const RegisterDescriptor,
    nloop: u15,
    end_of_packet: bool,
    data_format: GifTagDataFormat,
};

const GifTagDataFormat = enum(u2) {
    PACKED = 0b00,
    REGLIST = 0b01,
    IMAGE = 0b10,
    DISABLE = 0b11,
};

const GifTag = packed struct(u128) {
    const RegisterDescriptors = packed struct(u64) {
        reg0: RegisterDescriptor = @enumFromInt(0),
        reg1: RegisterDescriptor = @enumFromInt(0),
        reg2: RegisterDescriptor = @enumFromInt(0),
        reg3: RegisterDescriptor = @enumFromInt(0),
        reg4: RegisterDescriptor = @enumFromInt(0),
        reg5: RegisterDescriptor = @enumFromInt(0),
        reg6: RegisterDescriptor = @enumFromInt(0),
        reg7: RegisterDescriptor = @enumFromInt(0),
        reg8: RegisterDescriptor = @enumFromInt(0),
        reg9: RegisterDescriptor = @enumFromInt(0),
        reg10: RegisterDescriptor = @enumFromInt(0),
        reg11: RegisterDescriptor = @enumFromInt(0),
        reg12: RegisterDescriptor = @enumFromInt(0),
        reg13: RegisterDescriptor = @enumFromInt(0),
        reg14: RegisterDescriptor = @enumFromInt(0),
        reg15: RegisterDescriptor = @enumFromInt(0),
    };

    /// Repeat count (GS primitive data size)
    ///     PACKED mode NREG x NLOOP(qword)
    ///     REGLIST mode NREG x NLOOP(dword)
    ///     IMAGE mode NLOOP(qword)
    NLOOP: u15,

    /// Termination information (End Of Packet)
    ///     0: With following primitive
    ///     1: Without following primitive (End of GS packet)
    EOP: bool,

    _: u30 = 0,

    /// Prim field enable
    ///     0: Ignores PRIM field
    ///     1: Outputs PRIM field value to PRIM register
    PRE: bool,

    /// Data to be set to the PRIM register of GS
    PRIM: u11,

    /// Data format
    FLG: GifTagDataFormat,

    /// Number of register descriptors in REGS field
    NREG: u4,

    REGS: RegisterDescriptors,

    fn as_qword(self: GifTag) u128 {
        return @bitCast(self);
    }

    fn init(options: GifTagOptions) GifTag {
        const registers = RegisterDescriptors{
            .reg0 = if (options.registers.len >= 0 + 1) options.registers[0] else @enumFromInt(0),
            .reg1 = if (options.registers.len >= 1 + 1) options.registers[1] else @enumFromInt(0),
            .reg2 = if (options.registers.len >= 2 + 1) options.registers[2] else @enumFromInt(0),
            .reg3 = if (options.registers.len >= 3 + 1) options.registers[3] else @enumFromInt(0),
            .reg4 = if (options.registers.len >= 4 + 1) options.registers[4] else @enumFromInt(0),
            .reg5 = if (options.registers.len >= 5 + 1) options.registers[5] else @enumFromInt(0),
            .reg6 = if (options.registers.len >= 6 + 1) options.registers[6] else @enumFromInt(0),
            .reg7 = if (options.registers.len >= 7 + 1) options.registers[7] else @enumFromInt(0),
            .reg8 = if (options.registers.len >= 8 + 1) options.registers[8] else @enumFromInt(0),
            .reg9 = if (options.registers.len >= 9 + 1) options.registers[9] else @enumFromInt(0),
            .reg10 = if (options.registers.len >= 10 + 1) options.registers[10] else @enumFromInt(0),
            .reg11 = if (options.registers.len >= 11 + 1) options.registers[11] else @enumFromInt(0),
            .reg12 = if (options.registers.len >= 12 + 1) options.registers[12] else @enumFromInt(0),
            .reg13 = if (options.registers.len >= 13 + 1) options.registers[13] else @enumFromInt(0),
            .reg14 = if (options.registers.len >= 14 + 1) options.registers[14] else @enumFromInt(0),
            .reg15 = if (options.registers.len >= 15 + 1) options.registers[15] else @enumFromInt(0),
        };

        return GifTag{
            .NLOOP = options.nloop,
            .PRIM = if (options.prim) |x| x else 0,
            .PRE = options.prim != null,
            .EOP = options.end_of_packet,
            .FLG = options.data_format,
            .REGS = registers,
            .NREG = @intCast(options.registers.len),
        };
    }
};

pub fn render(arg_frame: [*c]c.framebuffer_t, arg_z: [*c]c.zbuffer_t) !void {
    _ = arg_z;
    _ = arg_frame;
    c.dma_wait_fast();
    while (true) {
        input.update();

        c.dma_wait_fast();
        // _ = c.dma_channel_send_chain(@as(c_int, 2), @as(?*anyopaque, @ptrCast(current.*.data)), @divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(current.*.data))), @sizeOf(c.qword_t)), @as(c_int, 0), @as(c_int, 0));
        c.draw_wait_finish();
        c.graph_wait_vsync();
    }
}

fn run() !void {
    // graphics initialization
    var frame: c.framebuffer_t = undefined;
    var z: c.zbuffer_t = undefined;
    _ = c.dma_channel_initialize(c.DMA_CHANNEL_GIF, @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(c_int, 0));
    c.dma_channel_fast_waits(c.DMA_CHANNEL_GIF);
    init_gs(&frame, &z);
    init_drawing_environment(&frame, &z);

    try input.init(allocator);

    try render(&frame, &z);
}

pub export fn main() c_int {
    const giftag = GifTag.init(.{
        .nloop = 1,
        .end_of_packet = false,
        .data_format = .REGLIST,
        .prim = null,
        .registers = &[_]RegisterDescriptor{
            .RGBAQ,
            .XYZ2,
            .RGBAQ,
            .XYZ2,
            .RGBAQ,
            .XYZ2,
        },
    });
    std.debug.print("{x:0>32}\n", .{giftag.as_qword()});

    // run() catch |err| {
    //     std.debug.print("Error: {s}\n", .{@errorName(err)});
    // };
    _ = c.SleepThread();
    return 0;
}
