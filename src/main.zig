const c = @import("headers.zig");
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
pub export fn render(arg_frame: [*c]c.framebuffer_t, arg_z: [*c]c.zbuffer_t) c_int {
    var frame = arg_frame;
    var z = arg_z;
    var i: c_int = undefined;
    var context: c_int = 0;
    var local_world: c.MATRIX = undefined;
    var world_view: c.MATRIX = undefined;
    var view_screen: c.MATRIX = undefined;
    var local_screen: c.MATRIX = undefined;
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
    while (true) {
        var q: [*c]c.qword_t = undefined;
        current = packets[@as(c_uint, @intCast(context))];
        object_rotation[@as(c_uint, @intCast(@as(c_int, 0)))] += 0.00800000037997961;
        object_rotation[@as(c_uint, @intCast(@as(c_int, 1)))] += 0.012000000104308128;
        c.create_local_world(@as([*c]f32, @ptrCast(@alignCast(&local_world))), @as([*c]f32, @ptrCast(@alignCast(&object_position))), @as([*c]f32, @ptrCast(@alignCast(&object_rotation))));
        c.create_world_view(@as([*c]f32, @ptrCast(@alignCast(&world_view))), @as([*c]f32, @ptrCast(@alignCast(&camera_position))), @as([*c]f32, @ptrCast(@alignCast(&camera_rotation))));
        c.create_local_screen(@as([*c]f32, @ptrCast(@alignCast(&local_screen))), @as([*c]f32, @ptrCast(@alignCast(&local_world))), @as([*c]f32, @ptrCast(@alignCast(&world_view))), @as([*c]f32, @ptrCast(@alignCast(&view_screen))));
        c.calculate_vertices(temp_vertices, vertex_count, @as([*c]c.VECTOR, @ptrCast(@alignCast(&vertices))), @as([*c]f32, @ptrCast(@alignCast(&local_screen))));
        _ = c.draw_convert_xyz(verts, @as(f32, @floatFromInt(@as(c_int, 2048))), @as(f32, @floatFromInt(@as(c_int, 2048))), @as(c_int, 32), vertex_count, @as([*c]c.vertex_f_t, @ptrCast(@alignCast(temp_vertices))));
        _ = c.draw_convert_rgbq(colors, vertex_count, @as([*c]c.vertex_f_t, @ptrCast(@alignCast(temp_vertices))), @as([*c]c.color_f_t, @ptrCast(@alignCast(@as([*c]c.VECTOR, @ptrCast(@alignCast(&colours)))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))));
        dmatag = current.*.data;
        q = dmatag;
        q += 1;
        q = c.draw_disable_tests(q, @as(c_int, 0), z);
        q = c.draw_clear(q, @as(c_int, 0), 2048.0 - 320.0, 2048.0 - 256.0, @as(f32, @floatFromInt(frame.*.width)), @as(f32, @floatFromInt(frame.*.height)), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
        q = c.draw_enable_tests(q, @as(c_int, 0), z);
        q = c.draw_prim_start(q, @as(c_int, 0), &prim, &color);
        {
            i = 0;
            while (i < points_count) : (i += 1) {
                q.*.dw[@as(c_uint, @intCast(@as(c_int, 0)))] = (blk: {
                    const tmp = points[@as(c_uint, @intCast(i))];
                    if (tmp >= 0) break :blk colors + @as(usize, @intCast(tmp)) else break :blk colors - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.rgbaq;
                q.*.dw[@as(c_uint, @intCast(@as(c_int, 1)))] = (blk: {
                    const tmp = points[@as(c_uint, @intCast(i))];
                    if (tmp >= 0) break :blk verts + @as(usize, @intCast(tmp)) else break :blk verts - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.xyz;
                q += 1;
            }
        }
        q = c.draw_prim_end(q, @as(c_int, 2), (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 1)))) << @intCast(0)) | (@as(u64, @bitCast(@as(c_longlong, @as(c_int, 5)))) << @intCast(4)));
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
    return 0;
}
pub export fn main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    _ = @TypeOf(argc);
    var argv = arg_argv;
    _ = @TypeOf(argv);
    var frame: c.framebuffer_t = undefined;
    var z: c.zbuffer_t = undefined;
    _ = c.dma_channel_initialize(@as(c_int, 2), @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(c_int, 0));
    c.dma_channel_fast_waits(@as(c_int, 2));
    init_gs(&frame, &z);
    init_drawing_environment(&frame, &z);
    _ = render(&frame, &z);
    _ = c.SleepThread();
    return 0;
}
