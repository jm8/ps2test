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

pub export var points_count: c_int = 36;
pub export var points: [36]c_int = [36]c_int{
    0,
    1,
    2,
    1,
    2,
    3,
    4,
    5,
    6,
    5,
    6,
    7,
    8,
    9,
    10,
    9,
    10,
    11,
    12,
    13,
    14,
    13,
    14,
    15,
    16,
    17,
    18,
    17,
    18,
    19,
    20,
    21,
    22,
    21,
    22,
    23,
};
pub export var vertex_count: c_int = 24;
pub export var vertices: [24]c.VECTOR = [24]c.VECTOR{
    [4]f32{
        10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        10.0,
        10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        -10.0,
        -10.0,
        -10.0,
        1.0,
    },
    [4]f32{
        10.0,
        -10.0,
        -10.0,
        1.0,
    },
};
pub export var colours: [24]c.VECTOR = [24]c.VECTOR{
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
    [4]f32{
        1.0,
        1.0,
        1.0,
        1.0,
    },
};
pub export var object_position: c.VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
};
pub export var object_rotation: c.VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
};
pub export var camera_position: c.VECTOR = [4]f32{
    0.0,
    0.0,
    100.0,
    1.0,
};
pub export var camera_rotation: c.VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
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

const Draw = struct {};

pub fn render(arg_frame: [*c]c.framebuffer_t, arg_z: [*c]c.zbuffer_t) !void {
    var frame = arg_frame;
    var z = arg_z;
    var i: c_int = undefined;
    _ = i;
    var context: c_int = 0;
    var local_world: c.MATRIX = undefined;
    _ = local_world;
    var world_view: c.MATRIX = undefined;
    _ = world_view;
    var view_screen: c.MATRIX = undefined;
    var local_screen: c.MATRIX = undefined;
    _ = local_screen;
    var temp_vertices: [*c]c.VECTOR = undefined;
    var prim: c.prim_t = undefined;
    var color: c.color_t = undefined;
    var verts: [*c]c.xyz_t = undefined;
    var colors: [*c]c.color_t = undefined;
    var packets: [2][*c]c.packet_t = undefined;
    var current: [*c]c.packet_t = undefined;
    var dmatag: [*c]c.qword_t = undefined;
    packets[@as(c_uint, @intCast(@as(c_int, 0)))] = c.packet_init(@as(c_int, 100), @as(c_int, 0));
    packets[@as(c_uint, @intCast(@as(c_int, 1)))] = c.packet_init(@as(c_int, 100), @as(c_int, 0));
    temp_vertices = @as([*c]c.VECTOR, @ptrCast(@alignCast(c.memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(c.VECTOR) *% @as(c_uint, @bitCast(vertex_count))))));
    verts = @as([*c]c.xyz_t, @ptrCast(@alignCast(c.memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(c.vertex_t) *% @as(c_uint, @bitCast(vertex_count))))));
    colors = @as([*c]c.color_t, @ptrCast(@alignCast(c.memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(c.color_t) *% @as(c_uint, @bitCast(vertex_count))))));
    prim.type = 3;
    prim.shading = 1;
    prim.mapping = 0;
    prim.fogging = 0;
    prim.blending = 0;
    prim.antialiasing = 1;
    prim.mapping_type = 0;
    prim.colorfix = 0;
    color.unnamed_0.r = 128;
    color.unnamed_0.g = 128;
    color.unnamed_0.b = 128;
    color.unnamed_0.a = 128;
    color.unnamed_0.q = 1.0;
    c.create_view_screen(@as([*c]f32, @ptrCast(@alignCast(&view_screen))), c.graph_aspect_ratio(), -3.0, 3.0, -3.0, 3.0, 1.0, 2000.0);
    c.dma_wait_fast();
    var t: i32 = 0;
    while (true) {
        input.update();
        t += 1;
        var q: [*c]c.qword_t = undefined;
        current = packets[@as(c_uint, @intCast(context))];
        dmatag = current.*.data;
        q = dmatag;
        q += 1;
        q = c.draw_disable_tests(q, @as(c_int, 0), z);

        var r: i32 = undefined;
        var g: i32 = undefined;
        const b: i32 = 0;
        if (input.isPressed(0, .Cross)) {
            r = 255;
            g = 0;
        } else {
            r = 0;
            g = 255;
        }

        q = c.draw_clear(q, @as(c_int, 0), 2048.0 - 320.0, 2048.0 - 256.0, @as(f32, @floatFromInt(frame.*.width)), @as(f32, @floatFromInt(frame.*.height)), r, g, b);
        q = c.draw_enable_tests(q, @as(c_int, 0), z);

        q = c.draw_finish(q);

        _ = blk: {
            _ = blk_1: {
                dmatag.*.dw[@as(c_uint, @intCast(@as(c_int, 0)))] = (((((@as(u64, @bitCast(@as(c_longlong, (@divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(current.*.data))), @sizeOf(c.qword_t)) - @as(c_int, 1)) & @as(c_int, 65535)))) << @intCast(0)) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 3)))) << @intCast(26))) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 7) & @as(c_int, 7)))) << @intCast(28))) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 1)))) << @intCast(31))) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 2147483647)))) << @intCast(32))) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 1)))) << @intCast(63));
                break :blk_1 blk_2: {
                    const tmp = @as(u32, @bitCast(@as(c_int, 0)));
                    dmatag.*.sw[@as(c_uint, @intCast(@as(c_int, 2)))] = tmp;
                    break :blk_2 tmp;
                };
            };
            break :blk blk_1: {
                const tmp = @as(u32, @bitCast(@as(c_int, 0)));
                dmatag.*.sw[@as(c_uint, @intCast(@as(c_int, 3)))] = tmp;
                break :blk_1 tmp;
            };
        };
        c.dma_wait_fast();
        _ = c.dma_channel_send_chain(@as(c_int, 2), @as(?*anyopaque, @ptrCast(current.*.data)), @divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(current.*.data))), @sizeOf(c.qword_t)), @as(c_int, 0), @as(c_int, 0));
        context ^= @as(c_int, 1);
        c.draw_wait_finish();
        c.graph_wait_vsync();
    }
    c.packet_free(packets[@as(c_uint, @intCast(@as(c_int, 0)))]);
    c.packet_free(packets[@as(c_uint, @intCast(@as(c_int, 1)))]);
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
    run() catch |err| {
        std.debug.print("Error: {s}\n", .{@errorName(err)});
    };
    _ = c.SleepThread();
    return 0;
}
