pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const @"u8" = u8;
pub const @"u16" = c_ushort;
pub const vu8 = @"u8";
pub const vu16 = @"u16";
pub const @"u32" = c_uint;
pub const @"u64" = c_ulonglong;
pub const @"u128" = u128;
pub const vu32 = @"u32";
pub const vu64 = @"u64";
pub const vu128 = u128;
pub const s8 = i8;
pub const s16 = c_short;
pub const vs8 = s8;
pub const vs16 = s16;
pub const s32 = c_int;
pub const s64 = c_longlong;
pub const s128 = i128;
pub const vs32 = s32;
pub const vs64 = s64;
pub const vs128 = i128;
pub const uiptr = @"u32";
pub const siptr = s32;
pub const vuiptr = @"u32";
pub const vsiptr = s32;
pub const qword_t = extern union {
    qw: @"u128",
    b: [16]@"u8",
    hw: [8]@"u16",
    sw: [4]@"u32",
    dw: [2]@"u64",
};
pub fn _lb(arg_addr: @"u32") callconv(.C) @"u8" {
    var addr = arg_addr;
    return @as([*c]volatile vu8, @ptrFromInt(addr)).*;
}
pub fn _lh(arg_addr: @"u32") callconv(.C) @"u16" {
    var addr = arg_addr;
    return @as([*c]volatile vu16, @ptrFromInt(addr)).*;
}
pub fn _lw(arg_addr: @"u32") callconv(.C) @"u32" {
    var addr = arg_addr;
    return @as([*c]volatile vu32, @ptrFromInt(addr)).*;
}
pub fn _sb(arg_val: @"u8", arg_addr: @"u32") callconv(.C) void {
    var val = arg_val;
    var addr = arg_addr;
    @as([*c]volatile vu8, @ptrFromInt(addr)).* = val;
}
pub fn _sh(arg_val: @"u16", arg_addr: @"u32") callconv(.C) void {
    var val = arg_val;
    var addr = arg_addr;
    @as([*c]volatile vu16, @ptrFromInt(addr)).* = val;
}
pub fn _sw(arg_val: @"u32", arg_addr: @"u32") callconv(.C) void {
    var val = arg_val;
    var addr = arg_addr;
    @as([*c]volatile vu32, @ptrFromInt(addr)).* = val;
}
pub fn _ld(arg_addr: @"u32") callconv(.C) @"u64" {
    var addr = arg_addr;
    return @as([*c]volatile vu64, @ptrFromInt(addr)).*;
}
pub fn _lq(arg_addr: @"u32") callconv(.C) @"u128" {
    var addr = arg_addr;
    return @as([*c]vu128, @ptrFromInt(addr)).*;
}
pub fn _sd(arg_val: @"u64", arg_addr: @"u32") callconv(.C) void {
    var val = arg_val;
    var addr = arg_addr;
    @as([*c]volatile vu64, @ptrFromInt(addr)).* = val;
}
pub fn _sq(arg_val: @"u128", arg_addr: @"u32") callconv(.C) void {
    var val = arg_val;
    var addr = arg_addr;
    @as([*c]vu128, @ptrFromInt(addr)).* = val;
}
pub const P2_MODE_NORMAL: c_int = 0;
pub const P2_MODE_CHAIN: c_int = 1;
pub const enum_Packet2Mode = c_uint;
pub const P2_TYPE_NORMAL: c_int = 0;
pub const P2_TYPE_UNCACHED: c_int = 536870912;
pub const P2_TYPE_UNCACHED_ACCL: c_int = 805306368;
pub const P2_TYPE_SPRAM: c_int = 1879048192;
pub const enum_Packet2Type = c_uint;
pub const P2_DMA_TAG_REFE: c_int = 0;
pub const P2_DMA_TAG_CNT: c_int = 1;
pub const P2_DMA_TAG_NEXT: c_int = 2;
pub const P2_DMA_TAG_REF: c_int = 3;
pub const P2_DMA_TAG_REFS: c_int = 4;
pub const P2_DMA_TAG_CALL: c_int = 5;
pub const P2_DMA_TAG_RET: c_int = 6;
pub const P2_DMA_TAG_END: c_int = 7;
pub const enum_DmaTagType = c_uint; // include/packet2_types.h:92:9: warning: struct demoted to opaque type - has bitfield
pub const dma_tag_t = opaque {};
pub const P2_UNPACK_S_32: c_int = 0;
pub const P2_UNPACK_S_16: c_int = 1;
pub const P2_UNPACK_S_8: c_int = 2;
pub const P2_UNPACK_V2_32: c_int = 4;
pub const P2_UNPACK_V2_16: c_int = 5;
pub const P2_UNPACK_V2_8: c_int = 6;
pub const P2_UNPACK_V3_32: c_int = 8;
pub const P2_UNPACK_V3_16: c_int = 9;
pub const P2_UNPACK_V3_8: c_int = 10;
pub const P2_UNPACK_V4_32: c_int = 12;
pub const P2_UNPACK_V4_16: c_int = 13;
pub const P2_UNPACK_V4_8: c_int = 14;
pub const P2_UNPACK_V4_5: c_int = 15;
pub const enum_UnpackMode = c_uint;
pub const P2_VIF_NOP: c_int = 0;
pub const P2_VIF_STCYCL: c_int = 1;
pub const P2_VIF_OFFSET: c_int = 2;
pub const P2_VIF_BASE: c_int = 3;
pub const P2_VIF_ITOP: c_int = 4;
pub const P2_VIF_STMOD: c_int = 5;
pub const P2_VIF_MSKPATH3: c_int = 6;
pub const P2_VIF_MARK: c_int = 7;
pub const P2_VIF_FLUSHE: c_int = 16;
pub const P2_VIF_FLUSH: c_int = 17;
pub const P2_VIF_FLUSHA: c_int = 19;
pub const P2_VIF_MSCAL: c_int = 20;
pub const P2_VIF_MSCNT: c_int = 23;
pub const P2_VIF_MSCALF: c_int = 21;
pub const P2_VIF_STMASK: c_int = 32;
pub const P2_VIF_STROW: c_int = 48;
pub const P2_VIF_STCOL: c_int = 49;
pub const P2_VIF_MPG: c_int = 74;
pub const P2_VIF_DIRECT: c_int = 80;
pub const P2_VIF_DIRECTHL: c_int = 81;
pub const enum_VIFOpcode = c_uint; // include/packet2_types.h:281:9: warning: struct demoted to opaque type - has bitfield
pub const vif_code_t = opaque {};
pub const packet2_t = extern struct {
    max_qwords_count: @"u16",
    type: enum_Packet2Type,
    mode: enum_Packet2Mode,
    tte: @"u8",
    base: [*c]qword_t align(64),
    next: [*c]qword_t,
    tag_opened_at: ?*dma_tag_t,
    vif_code_opened_at: ?*vif_code_t,
}; // include/packet2_types.h:337:22: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_1 = opaque {};
pub const Mask = extern union {
    unnamed_0: struct_unnamed_1,
    m: c_uint,
};
pub extern fn dma_reset() c_int;
pub extern fn dma_channel_initialize(channel: c_int, handler: ?*anyopaque, flags: c_int) c_int;
pub extern fn dma_channel_fast_waits(channel: c_int) void;
pub extern fn dma_wait_fast() void;
pub extern fn dma_channel_wait(channel: c_int, timeout: c_int) c_int;
pub extern fn dma_channel_send_packet2(packet2: [*c]packet2_t, channel: c_int, flush_cache: @"u8") void;
pub extern fn dma_channel_send_chain(channel: c_int, data: ?*anyopaque, qwc: c_int, flags: c_int, spr: c_int) c_int;
pub extern fn dma_channel_send_chain_ucab(channel: c_int, data: ?*anyopaque, qwc: c_int, flags: c_int) c_int;
pub extern fn dma_channel_send_normal(channel: c_int, data: ?*anyopaque, qwc: c_int, flags: c_int, spr: c_int) c_int;
pub extern fn dma_channel_send_normal_ucab(channel: c_int, data: ?*anyopaque, qwc: c_int, flags: c_int) c_int;
pub extern fn dma_channel_receive_normal(channel: c_int, data: ?*anyopaque, data_size: c_int, flags: c_int, spr: c_int) c_int;
pub extern fn dma_channel_receive_chain(channel: c_int, data: ?*anyopaque, data_size: c_int, flags: c_int, spr: c_int) c_int;
pub extern fn dma_channel_shutdown(channel: c_int, flags: c_int) c_int;
pub const blend_t = extern struct {
    color1: u8,
    color2: u8,
    alpha: u8,
    color3: u8,
    fixed_alpha: u8,
};
pub extern fn draw_pixel_alpha_control(q: [*c]qword_t, enable: c_int) [*c]qword_t;
pub extern fn draw_alpha_blending(q: [*c]qword_t, context: c_int, blend: [*c]blend_t) [*c]qword_t;
pub extern fn draw_alpha_correction(q: [*c]qword_t, context: c_int, alpha: c_int) [*c]qword_t;
pub const texinfo_t = extern struct {
    width: u8,
    height: u8,
    components: u8,
    function: u8,
};
pub const framebuffer_t = extern struct {
    address: c_uint,
    width: c_uint,
    height: c_uint,
    psm: c_uint,
    mask: c_uint,
};
pub const zbuffer_t = extern struct {
    enable: c_uint,
    method: c_uint,
    address: c_uint,
    zsm: c_uint,
    mask: c_uint,
};
pub const texbuffer_t = extern struct {
    address: c_uint,
    width: c_uint,
    psm: c_uint,
    info: texinfo_t,
};
pub const clutbuffer_t = extern struct {
    address: c_uint,
    psm: c_uint,
    storage_mode: c_uint,
    start: c_uint,
    load_method: c_uint,
};
pub extern fn draw_log2(x: c_uint) u8;
pub extern fn draw_framebuffer(q: [*c]qword_t, context: c_int, frame: [*c]framebuffer_t) [*c]qword_t;
pub extern fn draw_zbuffer(q: [*c]qword_t, context: c_int, zbuffer: [*c]zbuffer_t) [*c]qword_t;
pub extern fn draw_texturebuffer(q: [*c]qword_t, context: c_int, texbuffer: [*c]texbuffer_t, clut: [*c]clutbuffer_t) [*c]qword_t;
pub extern fn draw_clutbuffer(q: [*c]qword_t, context: c_int, psm: c_int, clut: [*c]clutbuffer_t) [*c]qword_t;
pub extern fn draw_clut_offset(q: [*c]qword_t, cbw: c_int, u: c_int, v: c_int) [*c]qword_t;
pub const dithermx_t = [16]i8;
pub extern fn draw_dithering(q: [*c]qword_t, enable: c_int) [*c]qword_t;
pub extern fn draw_dither_matrix(q: [*c]qword_t, dm: [*c]u8) [*c]qword_t;
pub extern fn draw_fog_color(q: [*c]qword_t, r: u8, g: u8, b: u8) [*c]qword_t;
pub extern fn draw_scan_masking(q: [*c]qword_t, mask: c_int) [*c]qword_t;
pub extern fn draw_color_clamping(q: [*c]qword_t, enable: c_int) [*c]qword_t;
pub const prim_t = extern struct {
    type: u8,
    shading: u8,
    mapping: u8,
    fogging: u8,
    blending: u8,
    antialiasing: u8,
    mapping_type: u8,
    colorfix: u8,
};
pub extern fn draw_primitive_xyoffset(q: [*c]qword_t, context: c_int, x: f32, y: f32) [*c]qword_t;
pub extern fn draw_primitive_override(q: [*c]qword_t, mode: c_int) [*c]qword_t;
pub extern fn draw_primitive_override_setting(q: [*c]qword_t, context: c_int, prim: [*c]prim_t) [*c]qword_t;
pub const lod_t = extern struct {
    calculation: u8,
    max_level: u8,
    mag_filter: u8,
    min_filter: u8,
    mipmap_select: u8,
    l: u8,
    k: f32,
};
pub const mipmap_t = extern struct {
    address1: c_int,
    address2: c_int,
    address3: c_int,
    width1: u8,
    width2: u8,
    width3: u8,
};
pub const texwrap_t = extern struct {
    horizontal: u8,
    vertical: u8,
    minu: c_int,
    maxu: c_int,
    minv: c_int,
    maxv: c_int,
};
pub extern fn draw_texture_sampling(q: [*c]qword_t, context: c_int, lod: [*c]lod_t) [*c]qword_t;
pub extern fn draw_mipmap1(q: [*c]qword_t, context: c_int, mipmap: [*c]mipmap_t) [*c]qword_t;
pub extern fn draw_mipmap2(q: [*c]qword_t, context: c_int, mipmap: [*c]mipmap_t) [*c]qword_t;
pub extern fn draw_texture_wrapping(q: [*c]qword_t, context: c_int, wrap: [*c]texwrap_t) [*c]qword_t;
pub extern fn draw_texture_expand_alpha(q: [*c]qword_t, zero_value: u8, expand: c_int, one_value: u8) [*c]qword_t;
pub const atest_t = extern struct {
    enable: u8,
    method: u8,
    compval: u8,
    keep: u8,
};
pub const dtest_t = extern struct {
    enable: u8,
    pass: u8,
};
pub const ztest_t = extern struct {
    enable: u8,
    method: u8,
};
pub extern fn draw_scissor_area(q: [*c]qword_t, context: c_int, x0: c_int, x1: c_int, y0: c_int, y1: c_int) [*c]qword_t;
pub extern fn draw_pixel_test(q: [*c]qword_t, context: c_int, atest: [*c]atest_t, dtest: [*c]dtest_t, ztest: [*c]ztest_t) [*c]qword_t;
pub extern fn draw_disable_tests(q: [*c]qword_t, context: c_int, z: [*c]zbuffer_t) [*c]qword_t;
pub extern fn draw_enable_tests(q: [*c]qword_t, context: c_int, z: [*c]zbuffer_t) [*c]qword_t;
pub const VECTOR = [4]f32;
pub const MATRIX = [16]f32;
pub extern fn vector_apply(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn vector_clamp(output: [*c]f32, input0: [*c]f32, min: f32, max: f32) void;
pub extern fn vector_copy(output: [*c]f32, input0: [*c]f32) void;
pub extern fn vector_innerproduct(input0: [*c]f32, input1: [*c]f32) f32;
pub extern fn vector_multiply(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn vector_normalize(output: [*c]f32, input0: [*c]f32) void;
pub extern fn vector_outerproduct(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn vector_add(sum: [*c]f32, addend: [*c]f32, summand: [*c]f32) void;
pub extern fn vector_cross_product(product: [*c]f32, multiplicand: [*c]f32, multiplier: [*c]f32) void;
pub extern fn vector_triangle_normal(output: [*c]f32, a: [*c]f32, b: [*c]f32, c: [*c]f32) void;
pub extern fn matrix_copy(output: [*c]f32, input0: [*c]f32) void;
pub extern fn matrix_inverse(output: [*c]f32, input0: [*c]f32) void;
pub extern fn matrix_multiply(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn matrix_rotate(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn matrix_scale(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn matrix_translate(output: [*c]f32, input0: [*c]f32, input1: [*c]f32) void;
pub extern fn matrix_transpose(output: [*c]f32, input0: [*c]f32) void;
pub extern fn matrix_unit(output: [*c]f32) void;
pub extern fn create_local_world(local_world: [*c]f32, translation: [*c]f32, rotation: [*c]f32) void;
pub extern fn create_local_light(local_light: [*c]f32, rotation: [*c]f32) void;
pub extern fn create_world_view(world_view: [*c]f32, translation: [*c]f32, rotation: [*c]f32) void;
pub extern fn create_view_screen(view_screen: [*c]f32, aspect: f32, left: f32, right: f32, bottom: f32, top: f32, near: f32, far: f32) void;
pub extern fn create_local_screen(local_screen: [*c]f32, local_world: [*c]f32, world_view: [*c]f32, view_screen: [*c]f32) void;
pub extern fn calculate_normals(output: [*c]VECTOR, count: c_int, normals: [*c]VECTOR, local_light: [*c]f32) void;
pub extern fn calculate_lights(output: [*c]VECTOR, count: c_int, normals: [*c]VECTOR, light_directions: [*c]VECTOR, light_colours: [*c]VECTOR, light_types: [*c]const c_int, light_count: c_int) void;
pub extern fn calculate_colours(output: [*c]VECTOR, count: c_int, colours: [*c]VECTOR, lights: [*c]VECTOR) void;
pub extern fn calculate_vertices(output: [*c]VECTOR, count: c_int, vertices: [*c]VECTOR, local_screen: [*c]f32) void;
const struct_unnamed_2 = extern struct {
    x: @"u16",
    y: @"u16",
    z: @"u32",
};
pub const xyz_t = extern union {
    xyz: @"u64" align(1),
    unnamed_0: struct_unnamed_2 align(1),
};
const struct_unnamed_3 = extern struct {
    s: f32,
    t: f32,
};
const struct_unnamed_4 = extern struct {
    u: f32,
    v: f32,
};
pub const texel_t = extern union {
    uv: @"u64" align(1),
    unnamed_0: struct_unnamed_3 align(1),
    unnamed_1: struct_unnamed_4 align(1),
};
const struct_unnamed_5 = extern struct {
    r: @"u8",
    g: @"u8",
    b: @"u8",
    a: @"u8",
    q: f32,
};
pub const color_t = extern union {
    rgbaq: @"u64" align(1),
    unnamed_0: struct_unnamed_5 align(1),
};
pub const vertex_t = extern struct {
    x: f32,
    y: f32,
    z: c_uint,
};
const struct_unnamed_6 = extern struct {
    s: f32,
    t: f32,
    r: f32,
    q: f32,
};
pub const texel_f_t = extern union {
    strq: VECTOR align(1),
    unnamed_0: struct_unnamed_6 align(1),
};
const struct_unnamed_7 = extern struct {
    r: f32,
    g: f32,
    b: f32,
    a: f32,
};
pub const color_f_t = extern union {
    rgba: VECTOR align(1),
    unnamed_0: struct_unnamed_7 align(1),
};
const struct_unnamed_8 = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const vertex_f_t = extern union {
    xyzw: VECTOR align(1),
    unnamed_0: struct_unnamed_8 align(1),
};
pub const point_t = extern struct {
    v0: vertex_t,
    color: color_t,
};
pub const line_t = extern struct {
    v0: vertex_t,
    v1: vertex_t,
    color: color_t,
};
pub const triangle_t = extern struct {
    v0: vertex_t,
    v1: vertex_t,
    v2: vertex_t,
    color: color_t,
};
pub const rect_t = extern struct {
    v0: vertex_t,
    v1: vertex_t,
    color: color_t,
};
pub const texrect_t = extern struct {
    v0: vertex_t,
    t0: texel_t,
    v1: vertex_t,
    t1: texel_t,
    color: color_t,
};
pub extern fn draw_enable_blending(...) void;
pub extern fn draw_disable_blending(...) void;
pub extern fn draw_point(q: [*c]qword_t, context: c_int, point: [*c]point_t) [*c]qword_t;
pub extern fn draw_line(q: [*c]qword_t, context: c_int, line: [*c]line_t) [*c]qword_t;
pub extern fn draw_triangle_outline(q: [*c]qword_t, context: c_int, triangle: [*c]triangle_t) [*c]qword_t;
pub extern fn draw_triangle_filled(q: [*c]qword_t, context: c_int, triangle: [*c]triangle_t) [*c]qword_t;
pub extern fn draw_rect_outline(q: [*c]qword_t, context: c_int, rect: [*c]rect_t) [*c]qword_t;
pub extern fn draw_rect_filled(q: [*c]qword_t, context: c_int, rect: [*c]rect_t) [*c]qword_t;
pub extern fn draw_rect_textured(q: [*c]qword_t, context: c_int, rect: [*c]texrect_t) [*c]qword_t;
pub extern fn draw_rect_filled_strips(q: [*c]qword_t, context: c_int, rect: [*c]rect_t) [*c]qword_t;
pub extern fn draw_rect_textured_strips(q: [*c]qword_t, context: c_int, rect: [*c]texrect_t) [*c]qword_t;
pub extern fn draw_round_rect_filled(q: [*c]qword_t, context: c_int, rect: [*c]rect_t) [*c]qword_t;
pub extern fn draw_round_rect_outline(q: [*c]qword_t, context: c_int, rect: [*c]rect_t) [*c]qword_t;
pub extern fn draw_arc_outline(q: [*c]qword_t, context: c_int, center: [*c]point_t, radius: f32, angle_start: f32, angle_end: f32) [*c]qword_t;
pub extern fn draw_arc_filled(q: [*c]qword_t, context: c_int, center: [*c]point_t, radius: f32, angle_start: f32, angle_end: f32) [*c]qword_t;
pub extern fn draw_prim_start(q: [*c]qword_t, context: c_int, prim: [*c]prim_t, color: [*c]color_t) [*c]qword_t;
pub extern fn draw_prim_end(q: [*c]qword_t, nreg: c_int, reglist: @"u64") [*c]qword_t;
pub extern fn draw_convert_rgbq(output: [*c]color_t, count: c_int, vertices: [*c]vertex_f_t, colours: [*c]color_f_t, alpha: u8) c_int;
pub extern fn draw_convert_rgbaq(output: [*c]color_t, count: c_int, vertices: [*c]vertex_f_t, colours: [*c]color_f_t) c_int;
pub extern fn draw_convert_st(output: [*c]texel_t, count: c_int, vertices: [*c]vertex_f_t, coords: [*c]texel_f_t) c_int;
pub extern fn draw_convert_xyz(output: [*c]xyz_t, x: f32, y: f32, z: c_int, count: c_int, vertices: [*c]vertex_f_t) c_int;
pub extern fn draw_setup_environment(q: [*c]qword_t, context: c_int, frame: [*c]framebuffer_t, z: [*c]zbuffer_t) [*c]qword_t;
pub extern fn draw_clear(q: [*c]qword_t, context: c_int, x: f32, y: f32, width: f32, height: f32, r: c_int, g: c_int, b: c_int) [*c]qword_t;
pub extern fn draw_finish(q: [*c]qword_t) [*c]qword_t;
pub extern fn draw_wait_finish() void;
pub extern fn draw_texture_transfer(q: [*c]qword_t, src: ?*anyopaque, width: c_int, height: c_int, psm: c_int, dest: c_int, dest_width: c_int) [*c]qword_t;
pub extern fn draw_texture_flush(q: [*c]qword_t) [*c]qword_t;
pub extern fn graph_vram_allocate(width: c_int, height: c_int, psm: c_int, alignment: c_int) c_int;
pub extern fn graph_vram_free(address: c_int) void;
pub extern fn graph_vram_clear() void;
pub extern fn graph_vram_size(width: c_int, height: c_int, psm: c_int, alignment: c_int) c_int;
pub const GRAPH_MODE = extern struct {
    x: c_int,
    y: c_int,
    width: c_int,
    height: c_int,
    mode: c_int,
};
pub const graph_mode: [*c]GRAPH_MODE = @extern([*c]GRAPH_MODE, .{
    .name = "graph_mode",
});
pub extern fn graph_initialize(fbp: c_int, width: c_int, height: c_int, psm: c_int, x: c_int, y: c_int) c_int;
pub extern fn graph_get_region() c_int;
pub extern fn graph_aspect_ratio() f32;
pub extern fn graph_enable_output() void;
pub extern fn graph_disable_output() void;
pub extern fn graph_set_mode(interlace: c_int, mode: c_int, ffmd: c_int, flicker_filter: c_int) c_int;
pub extern fn graph_set_screen(x: c_int, y: c_int, width: c_int, height: c_int) c_int;
pub extern fn graph_set_framebuffer_filtered(fbp: c_int, width: c_int, psm: c_int, x: c_int, y: c_int) void;
pub extern fn graph_set_framebuffer(context: c_int, fbp: c_int, width: c_int, psm: c_int, x: c_int, y: c_int) void;
pub extern fn graph_set_bgcolor(r: u8, g: u8, b: u8) void;
pub extern fn graph_set_output(rc1: c_int, rc2: c_int, alpha_select: c_int, alpha_output: c_int, blend_method: c_int, alpha: u8) void;
pub extern fn graph_add_vsync_handler(vsync_callback: ?*const fn (...) callconv(.C) c_int) c_int;
pub extern fn graph_remove_vsync_handler(callback_id: c_int) void;
pub extern fn graph_wait_hsync() void;
pub extern fn graph_wait_vsync() void;
pub extern fn graph_check_vsync() c_int;
pub extern fn graph_start_vsync() void;
pub extern fn graph_shutdown() c_int;
pub const ptrdiff_t = c_int;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __max_align_ll: c_longlong align(8),
    __max_align_ld: c_longdouble align(8),
};
pub const __builtin_va_list = ?*anyopaque;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
pub const SIF_REG_MAINADDR: c_int = 1;
pub const SIF_REG_SUBADDR: c_int = 2;
pub const SIF_REG_MSFLAG: c_int = 3;
pub const SIF_REG_SMFLAG: c_int = 4;
pub const SIF_SYSREG_SUBADDR: c_uint = 2147483648;
pub const SIF_SYSREG_MAINADDR: c_uint = 2147483649;
pub const SIF_SYSREG_RPCINIT: c_uint = 2147483650;
pub const enum__sif_regs = c_uint;
pub const struct_t_SifDmaTransfer = extern struct {
    src: ?*anyopaque,
    dest: ?*anyopaque,
    size: c_int,
    attr: c_int,
};
pub const SifDmaTransfer_t = struct_t_SifDmaTransfer;
pub extern fn SifSetDma(sdd: [*c]SifDmaTransfer_t, len: s32) @"u32";
pub extern fn SifDmaStat(id: @"u32") s32;
pub extern fn ChangeGP(gp: ?*anyopaque) ?*anyopaque;
pub extern fn SetGP(gp: ?*anyopaque) void;
pub extern fn GetGP() ?*anyopaque;
pub extern var _gp: ?*anyopaque;
pub const INTC_GS: c_int = 0;
pub const INTC_SBUS: c_int = 1;
pub const INTC_VBLANK_S: c_int = 2;
pub const INTC_VBLANK_E: c_int = 3;
pub const INTC_VIF0: c_int = 4;
pub const INTC_VIF1: c_int = 5;
pub const INTC_VU0: c_int = 6;
pub const INTC_VU1: c_int = 7;
pub const INTC_IPU: c_int = 8;
pub const INTC_TIM0: c_int = 9;
pub const INTC_TIM1: c_int = 10;
pub const INTC_TIM2: c_int = 11;
pub const INTC_SFIFO: c_int = 13;
pub const INTC_VU0WD: c_int = 14;
const enum_unnamed_9 = c_uint;
pub const DMAC_VIF0: c_int = 0;
pub const DMAC_VIF1: c_int = 1;
pub const DMAC_GIF: c_int = 2;
pub const DMAC_FROM_IPU: c_int = 3;
pub const DMAC_TO_IPU: c_int = 4;
pub const DMAC_SIF0: c_int = 5;
pub const DMAC_SIF1: c_int = 6;
pub const DMAC_SIF2: c_int = 7;
pub const DMAC_FROM_SPR: c_int = 8;
pub const DMAC_TO_SPR: c_int = 9;
pub const DMAC_CIS: c_int = 13;
pub const DMAC_MEIS: c_int = 14;
pub const DMAC_BEIS: c_int = 15;
const enum_unnamed_10 = c_uint; // include/kernel.h:146:9: warning: TODO implement translation of stmt class GCCAsmStmtClass
// include/kernel.h:141:20: warning: unable to translate function, demoted to extern
pub extern fn nopdelay() callconv(.C) void; // include/kernel.h:154:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// include/kernel.h:150:19: warning: unable to translate function, demoted to extern
pub extern fn ee_get_opmode() callconv(.C) c_int; // include/kernel.h:168:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// include/kernel.h:164:19: warning: unable to translate function, demoted to extern
pub extern fn ee_set_opmode(arg_opmode: @"u32") callconv(.C) c_int; // include/kernel.h:188:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// include/kernel.h:184:19: warning: unable to translate function, demoted to extern
pub extern fn ee_kmode_enter() callconv(.C) c_int; // include/kernel.h:206:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// include/kernel.h:202:19: warning: unable to translate function, demoted to extern
pub extern fn ee_kmode_exit() callconv(.C) c_int;
pub const struct_t_ee_sema = extern struct {
    count: c_int,
    max_count: c_int,
    init_count: c_int,
    wait_threads: c_int,
    attr: @"u32",
    option: @"u32",
};
pub const ee_sema_t = struct_t_ee_sema;
pub const struct_t_ee_thread = extern struct {
    status: c_int,
    func: ?*anyopaque,
    stack: ?*anyopaque,
    stack_size: c_int,
    gp_reg: ?*anyopaque,
    initial_priority: c_int,
    current_priority: c_int,
    attr: @"u32",
    option: @"u32",
};
pub const ee_thread_t = struct_t_ee_thread;
pub const struct_t_ee_thread_status = extern struct {
    status: c_int,
    func: ?*anyopaque,
    stack: ?*anyopaque,
    stack_size: c_int,
    gp_reg: ?*anyopaque,
    initial_priority: c_int,
    current_priority: c_int,
    attr: @"u32",
    option: @"u32",
    waitType: @"u32",
    waitId: @"u32",
    wakeupCount: @"u32",
};
pub const ee_thread_status_t = struct_t_ee_thread_status;
pub const CPU_CONFIG_ENABLE_DIE: c_int = 0;
pub const CPU_CONFIG_ENABLE_ICE: c_int = 1;
pub const CPU_CONFIG_ENABLE_DCE: c_int = 2;
pub const CPU_CONFIG_DISBLE_DIE: c_int = 3;
pub const CPU_CONFIG_DISBLE_ICE: c_int = 4;
pub const CPU_CONFIG_DISBLE_DCE: c_int = 5;
pub const enum_CPU_CONFIG = c_uint;
pub extern fn _InitSys() void;
pub extern fn TerminateLibrary() void;
pub extern fn InitThread() c_int;
pub extern fn iWakeupThread(thread_id: s32) s32;
pub extern fn iRotateThreadReadyQueue(priority: s32) s32;
pub extern fn iSuspendThread(thread_id: s32) s32;
pub extern fn InitTLBFunctions() void;
pub extern fn InitTLB() void;
pub extern fn Exit(exit_code: s32) noreturn;
pub extern fn ExecPS2(entry: ?*anyopaque, gp: ?*anyopaque, num_args: c_int, args: [*c][*c]u8) s32;
pub extern fn LoadExecPS2(filename: [*c]const u8, num_args: s32, args: [*c][*c]u8) noreturn;
pub extern fn ExecOSD(num_args: c_int, args: [*c][*c]u8) noreturn;
pub extern fn InitAlarm() void;
pub extern fn InitExecPS2() void;
pub extern fn InitOsd() void;
pub extern fn PatchIsNeeded() c_int;
pub extern fn InitDebug() void;
pub extern fn DIntr() c_int;
pub extern fn EIntr() c_int;
pub extern fn EnableIntc(intc: c_int) c_int;
pub extern fn DisableIntc(intc: c_int) c_int;
pub extern fn EnableDmac(dmac: c_int) c_int;
pub extern fn DisableDmac(dmac: c_int) c_int;
pub extern fn iEnableIntc(intc: c_int) c_int;
pub extern fn iDisableIntc(intc: c_int) c_int;
pub extern fn iEnableDmac(dmac: c_int) c_int;
pub extern fn iDisableDmac(dmac: c_int) c_int;
pub extern fn SyncDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn iSyncDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn InvalidDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn iInvalidDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn ResetEE(init_bitfield: @"u32") void;
pub extern fn SetGsCrt(interlace: s16, pal_ntsc: s16, field: s16) void;
pub extern fn KExit(exit_code: s32) noreturn;
pub extern fn _LoadExecPS2(filename: [*c]const u8, num_args: s32, args: [*c][*c]u8) noreturn;
pub extern fn _ExecPS2(entry: ?*anyopaque, gp: ?*anyopaque, num_args: c_int, args: [*c][*c]u8) s32;
pub extern fn RFU009(arg0: @"u32", arg1: @"u32") void;
pub extern fn AddSbusIntcHandler(cause: s32, handler: ?*const fn (c_int) callconv(.C) void) s32;
pub extern fn RemoveSbusIntcHandler(cause: s32) s32;
pub extern fn Interrupt2Iop(cause: s32) s32;
pub extern fn SetVTLBRefillHandler(handler_num: s32, handler_func: ?*anyopaque) void;
pub extern fn SetVCommonHandler(handler_num: s32, handler_func: ?*anyopaque) void;
pub extern fn SetVInterruptHandler(handler_num: s32, handler_func: ?*anyopaque) void;
pub extern fn AddIntcHandler(cause: s32, handler_func: ?*const fn (s32) callconv(.C) s32, next: s32) s32;
pub extern fn AddIntcHandler2(cause: s32, handler_func: ?*const fn (s32, ?*anyopaque, ?*anyopaque) callconv(.C) s32, next: s32, arg: ?*anyopaque) s32;
pub extern fn RemoveIntcHandler(cause: s32, handler_id: s32) s32;
pub extern fn AddDmacHandler(channel: s32, handler: ?*const fn (s32) callconv(.C) s32, next: s32) s32;
pub extern fn AddDmacHandler2(channel: s32, handler: ?*const fn (s32, ?*anyopaque, ?*anyopaque) callconv(.C) s32, next: s32, arg: ?*anyopaque) s32;
pub extern fn RemoveDmacHandler(channel: s32, handler_id: s32) s32;
pub extern fn _EnableIntc(cause: s32) s32;
pub extern fn _DisableIntc(cause: s32) s32;
pub extern fn _EnableDmac(channel: s32) s32;
pub extern fn _DisableDmac(channel: s32) s32;
pub extern fn SetAlarm(time: @"u16", callback: ?*const fn (s32, @"u16", ?*anyopaque) callconv(.C) void, common: ?*anyopaque) s32;
pub extern fn _SetAlarm(time: @"u16", callback: ?*const fn (s32, @"u16", ?*anyopaque) callconv(.C) void, common: ?*anyopaque) s32;
pub extern fn ReleaseAlarm(alarm_id: s32) s32;
pub extern fn _ReleaseAlarm(alarm_id: s32) s32;
pub extern fn _iEnableIntc(cause: s32) s32;
pub extern fn _iDisableIntc(cause: s32) s32;
pub extern fn _iEnableDmac(channel: s32) s32;
pub extern fn _iDisableDmac(channel: s32) s32;
pub extern fn iSetAlarm(time: @"u16", callback: ?*const fn (s32, @"u16", ?*anyopaque) callconv(.C) void, common: ?*anyopaque) s32;
pub extern fn _iSetAlarm(time: @"u16", callback: ?*const fn (s32, @"u16", ?*anyopaque) callconv(.C) void, common: ?*anyopaque) s32;
pub extern fn iReleaseAlarm(alarm_id: s32) s32;
pub extern fn _iReleaseAlarm(alarm_id: s32) s32;
pub extern fn CreateThread(thread: [*c]ee_thread_t) s32;
pub extern fn DeleteThread(thread_id: s32) s32;
pub extern fn StartThread(thread_id: s32, args: ?*anyopaque) s32;
pub extern fn ExitThread() void;
pub extern fn ExitDeleteThread() void;
pub extern fn TerminateThread(thread_id: s32) s32;
pub extern fn iTerminateThread(thread_id: s32) s32;
pub extern fn ChangeThreadPriority(thread_id: s32, priority: s32) s32;
pub extern fn iChangeThreadPriority(thread_id: s32, priority: s32) s32;
pub extern fn RotateThreadReadyQueue(priority: s32) s32;
pub extern fn _iRotateThreadReadyQueue(priority: s32) s32;
pub extern fn ReleaseWaitThread(thread_id: s32) s32;
pub extern fn iReleaseWaitThread(thread_id: s32) s32;
pub extern fn GetThreadId() s32;
pub extern fn _iGetThreadId() s32;
pub extern fn ReferThreadStatus(thread_id: s32, info: [*c]ee_thread_status_t) s32;
pub extern fn iReferThreadStatus(thread_id: s32, info: [*c]ee_thread_status_t) s32;
pub extern fn SleepThread() s32;
pub extern fn WakeupThread(thread_id: s32) s32;
pub extern fn _iWakeupThread(thread_id: s32) s32;
pub extern fn CancelWakeupThread(thread_id: s32) s32;
pub extern fn iCancelWakeupThread(thread_id: s32) s32;
pub extern fn SuspendThread(thread_id: s32) s32;
pub extern fn _iSuspendThread(thread_id: s32) s32;
pub extern fn ResumeThread(thread_id: s32) s32;
pub extern fn iResumeThread(thread_id: s32) s32;
pub extern fn RFU059() @"u8";
pub extern fn SetupThread(gp: ?*anyopaque, stack: ?*anyopaque, stack_size: s32, args: ?*anyopaque, root_func: ?*anyopaque) ?*anyopaque;
pub extern fn SetupHeap(heap_start: ?*anyopaque, heap_size: s32) void;
pub extern fn EndOfHeap() ?*anyopaque;
pub extern fn CreateSema(sema: [*c]ee_sema_t) s32;
pub extern fn DeleteSema(sema_id: s32) s32;
pub extern fn SignalSema(sema_id: s32) s32;
pub extern fn iSignalSema(sema_id: s32) s32;
pub extern fn WaitSema(sema_id: s32) s32;
pub extern fn PollSema(sema_id: s32) s32;
pub extern fn iPollSema(sema_id: s32) s32;
pub extern fn ReferSemaStatus(sema_id: s32, sema: [*c]ee_sema_t) s32;
pub extern fn iReferSemaStatus(sema_id: s32, sema: [*c]ee_sema_t) s32;
pub extern fn iDeleteSema(sema_id: s32) s32;
pub extern fn SetOsdConfigParam(addr: ?*anyopaque) void;
pub extern fn GetOsdConfigParam(addr: ?*anyopaque) void;
pub extern fn GetGsHParam(addr1: ?*anyopaque, addr2: ?*anyopaque, addr3: ?*anyopaque) void;
pub extern fn GetGsVParam() s32;
pub extern fn SetGsHParam(addr1: ?*anyopaque, addr2: ?*anyopaque, addr3: ?*anyopaque, addr4: ?*anyopaque) void;
pub extern fn SetGsVParam(arg1: s32) void;
pub extern fn PutTLBEntry(PageMask: c_uint, EntryHi: c_uint, EntryLo0: c_uint, EntryLo1: c_uint) c_int;
pub extern fn iPutTLBEntry(PageMask: c_uint, EntryHi: c_uint, EntryLo0: c_uint, EntryLo1: c_uint) c_int;
pub extern fn _SetTLBEntry(index: c_uint, PageMask: c_uint, EntryHi: c_uint, EntryLo0: c_uint, EntryLo1: c_uint) c_int;
pub extern fn iSetTLBEntry(index: c_uint, PageMask: c_uint, EntryHi: c_uint, EntryLo0: c_uint, EntryLo1: c_uint) c_int;
pub extern fn GetTLBEntry(index: c_uint, PageMask: [*c]c_uint, EntryHi: [*c]c_uint, EntryLo0: [*c]c_uint, EntryLo1: [*c]c_uint) c_int;
pub extern fn iGetTLBEntry(index: c_uint, PageMask: [*c]c_uint, EntryHi: [*c]c_uint, EntryLo0: [*c]c_uint, EntryLo1: [*c]c_uint) c_int;
pub extern fn ProbeTLBEntry(EntryHi: c_uint, PageMask: [*c]c_uint, EntryLo0: [*c]c_uint, EntryLo1: [*c]c_uint) c_int;
pub extern fn iProbeTLBEntry(EntryHi: c_uint, PageMask: [*c]c_uint, EntryLo0: [*c]c_uint, EntryLo1: [*c]c_uint) c_int;
pub extern fn ExpandScratchPad(page: c_uint) c_int;
pub extern fn EnableIntcHandler(cause: @"u32") void;
pub extern fn iEnableIntcHandler(cause: @"u32") void;
pub extern fn DisableIntcHandler(cause: @"u32") void;
pub extern fn iDisableIntcHandler(cause: @"u32") void;
pub extern fn EnableDmacHandler(channel: @"u32") void;
pub extern fn iEnableDmacHandler(channel: @"u32") void;
pub extern fn DisableDmacHandler(channel: @"u32") void;
pub extern fn iDisableDmacHandler(channel: @"u32") void;
pub extern fn KSeg0(arg1: s32) void;
pub extern fn EnableCache(cache: s32) s32;
pub extern fn DisableCache(cache: s32) s32;
pub extern fn GetCop0(reg_id: s32) @"u32";
pub extern fn FlushCache(operation: s32) void;
pub extern fn CpuConfig(config: @"u32") @"u32";
pub extern fn iGetCop0(reg_id: s32) @"u32";
pub extern fn iFlushCache(operation: s32) void;
pub extern fn iCpuConfig(config: @"u32") @"u32";
pub extern fn SetCPUTimerHandler(handler: ?*const fn () callconv(.C) void) void;
pub extern fn SetCPUTimer(compval: s32) void;
pub extern fn SetOsdConfigParam2(config: ?*anyopaque, size: s32, offset: s32) void;
pub extern fn GetOsdConfigParam2(config: ?*anyopaque, size: s32, offset: s32) void;
pub extern fn GsGetIMR() @"u64";
pub extern fn iGsGetIMR() @"u64";
pub extern fn GsPutIMR(imr: @"u64") @"u64";
pub extern fn iGsPutIMR(imr: @"u64") @"u64";
pub extern fn SetPgifHandler(handler: ?*anyopaque) void;
pub extern fn SetVSyncFlag([*c]@"u32", [*c]@"u64") void;
pub extern fn SetSyscall(syscall_num: s32, handler: ?*anyopaque) void;
pub extern fn _print(fmt: [*c]const u8, ...) void;
pub extern fn SifStopDma() void;
pub extern fn iSifDmaStat(id: @"u32") s32;
pub extern fn iSifSetDma(sdd: [*c]SifDmaTransfer_t, len: s32) @"u32";
pub extern fn SifSetDChain() void;
pub extern fn iSifSetDChain() void;
pub extern fn SifSetReg(register_num: @"u32", register_value: c_int) c_int;
pub extern fn SifGetReg(register_num: @"u32") c_int;
pub extern fn _ExecOSD(num_args: c_int, args: [*c][*c]u8) noreturn;
pub extern fn Deci2Call(s32, [*c]@"u32") s32;
pub extern fn PSMode() void;
pub extern fn MachineType() s32;
pub extern fn GetMemorySize() s32;
pub extern fn _GetGsDxDyOffset(mode: c_int, dx: [*c]c_int, dy: [*c]c_int, dw: [*c]c_int, dh: [*c]c_int) void;
pub extern fn _InitTLB() c_int;
pub extern fn SetMemoryMode(mode: c_int) c_int;
pub extern fn _SyncDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn _InvalidDCache(start: ?*anyopaque, end: ?*anyopaque) void;
pub extern fn GetSyscallHandler(syscall_no: c_int) ?*anyopaque;
pub extern fn GetExceptionHandler(except_no: c_int) ?*anyopaque;
pub extern fn GetInterruptHandler(intr_no: c_int) ?*anyopaque;
pub extern fn kCopy(dest: ?*anyopaque, src: ?*const anyopaque, size: c_int) c_int;
pub extern fn kCopyBytes(dest: ?*anyopaque, src: ?*const anyopaque, size: c_int) c_int;
pub extern fn Copy(dest: ?*anyopaque, src: ?*const anyopaque, size: c_int) c_int;
pub extern fn setup(syscall_num: c_int, handler: ?*anyopaque) void;
pub extern fn GetEntryAddress(syscall: c_int) ?*anyopaque;
pub extern fn malloc(usize) ?*anyopaque;
pub extern fn calloc(usize, usize) ?*anyopaque;
pub extern fn realloc(?*anyopaque, usize) ?*anyopaque;
pub extern fn free(?*anyopaque) void;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn memalign(usize, usize) ?*anyopaque;
pub extern fn malloc_usable_size(?*anyopaque) usize;
pub const packet_t = extern struct {
    qwords: @"u32",
    qwc: @"u16",
    type: @"u16",
    data: [*c]qword_t align(64),
};
pub extern fn packet_init(qwords: c_int, @"type": c_int) [*c]packet_t;
pub extern fn packet_reset(packet: [*c]packet_t) void;
pub extern fn packet_free(packet: [*c]packet_t) void;
pub extern fn packet_increment_qwc(packet: [*c]packet_t, num: c_int) [*c]qword_t;
pub fn packet_get_qword(arg_packet: [*c]packet_t) callconv(.C) [*c]qword_t {
    var packet = arg_packet;
    return packet.*.data;
}
pub const off_t = c_long;
pub const struct__IO_FILE = opaque {};
pub const FILE = struct__IO_FILE;
pub const __isoc_va_list = __builtin_va_list;
pub const union__G_fpos64_t = extern union {
    __opaque: [16]u8,
    __lldata: c_longlong,
    __align: f64,
};
pub const fpos_t = union__G_fpos64_t;
pub extern const stdin: ?*FILE;
pub extern const stdout: ?*FILE;
pub extern const stderr: ?*FILE;
pub extern fn fopen(noalias [*c]const u8, noalias [*c]const u8) ?*FILE;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias ?*FILE) ?*FILE;
pub extern fn fclose(?*FILE) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename([*c]const u8, [*c]const u8) c_int;
pub extern fn feof(?*FILE) c_int;
pub extern fn ferror(?*FILE) c_int;
pub extern fn fflush(?*FILE) c_int;
pub extern fn clearerr(?*FILE) void;
pub extern fn fseek(?*FILE, c_long, c_int) c_int;
pub extern fn ftell(?*FILE) c_long;
pub extern fn rewind(?*FILE) void;
pub extern fn fgetpos(noalias ?*FILE, noalias [*c]fpos_t) c_int;
pub extern fn fsetpos(?*FILE, [*c]const fpos_t) c_int;
pub extern fn fread(noalias ?*anyopaque, usize, usize, noalias ?*FILE) usize;
pub extern fn fwrite(noalias ?*const anyopaque, usize, usize, noalias ?*FILE) usize;
pub extern fn fgetc(?*FILE) c_int;
pub extern fn getc(?*FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn ungetc(c_int, ?*FILE) c_int;
pub extern fn fputc(c_int, ?*FILE) c_int;
pub extern fn putc(c_int, ?*FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, noalias ?*FILE) [*c]u8;
pub extern fn fputs(noalias [*c]const u8, noalias ?*FILE) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn printf(noalias [*c]const u8, ...) c_int;
pub extern fn fprintf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn snprintf(noalias [*c]u8, usize, noalias [*c]const u8, ...) c_int;
pub extern fn vprintf(noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vfprintf(noalias ?*FILE, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsprintf(noalias [*c]u8, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsnprintf(noalias [*c]u8, usize, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn vscanf(noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vfscanf(noalias ?*FILE, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn vsscanf(noalias [*c]const u8, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn perror([*c]const u8) void;
pub extern fn setvbuf(noalias ?*FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn setbuf(noalias ?*FILE, noalias [*c]u8) void;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpfile() ?*FILE;
pub extern fn fmemopen(noalias ?*anyopaque, usize, noalias [*c]const u8) ?*FILE;
pub extern fn open_memstream([*c][*c]u8, [*c]usize) ?*FILE;
pub extern fn fdopen(c_int, [*c]const u8) ?*FILE;
pub extern fn popen([*c]const u8, [*c]const u8) ?*FILE;
pub extern fn pclose(?*FILE) c_int;
pub extern fn fileno(?*FILE) c_int;
pub extern fn fseeko(?*FILE, off_t, c_int) c_int;
pub extern fn ftello(?*FILE) off_t;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, __isoc_va_list) c_int;
pub extern fn flockfile(?*FILE) void;
pub extern fn ftrylockfile(?*FILE) c_int;
pub extern fn funlockfile(?*FILE) void;
pub extern fn getc_unlocked(?*FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, ?*FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getdelim(noalias [*c][*c]u8, noalias [*c]usize, c_int, noalias ?*FILE) isize;
pub extern fn getline(noalias [*c][*c]u8, noalias [*c]usize, noalias ?*FILE) isize;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn tempnam([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn cuserid([*c]u8) [*c]u8;
pub extern fn setlinebuf(?*FILE) void;
pub extern fn setbuffer(?*FILE, [*c]u8, usize) void;
pub extern fn fgetc_unlocked(?*FILE) c_int;
pub extern fn fputc_unlocked(c_int, ?*FILE) c_int;
pub extern fn fflush_unlocked(?*FILE) c_int;
pub extern fn fread_unlocked(?*anyopaque, usize, usize, ?*FILE) usize;
pub extern fn fwrite_unlocked(?*const anyopaque, usize, usize, ?*FILE) usize;
pub extern fn clearerr_unlocked(?*FILE) void;
pub extern fn feof_unlocked(?*FILE) c_int;
pub extern fn ferror_unlocked(?*FILE) c_int;
pub extern fn fileno_unlocked(?*FILE) c_int;
pub extern fn getw(?*FILE) c_int;
pub extern fn putw(c_int, ?*FILE) c_int;
pub extern fn fgetln(?*FILE, [*c]usize) [*c]u8;
pub extern fn asprintf([*c][*c]u8, [*c]const u8, ...) c_int;
pub extern fn vasprintf([*c][*c]u8, [*c]const u8, __isoc_va_list) c_int;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn atof([*c]const u8) f64;
pub extern fn strtof(noalias [*c]const u8, noalias [*c][*c]u8) f32;
pub extern fn strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;
pub extern fn strtold(noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;
pub extern fn strtol(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_long;
pub extern fn strtoul(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulong;
pub extern fn strtoll(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_longlong;
pub extern fn strtoull(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulonglong;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn aligned_alloc(usize, usize) ?*anyopaque;
pub extern fn abort() void;
pub extern fn atexit(?*const fn () callconv(.C) void) c_int;
pub extern fn exit(c_int) void;
pub extern fn _Exit(c_int) void;
pub extern fn at_quick_exit(?*const fn () callconv(.C) void) c_int;
pub extern fn quick_exit(c_int) void;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn system([*c]const u8) c_int;
pub extern fn bsearch(?*const anyopaque, ?*const anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;
pub extern fn qsort(?*anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn abs(c_int) c_int;
pub extern fn labs(c_long) c_long;
pub extern fn llabs(c_longlong) c_longlong;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn div(c_int, c_int) div_t;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen([*c]const u8, usize) c_int;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn posix_memalign([*c]?*anyopaque, usize, usize) c_int;
pub extern fn setenv([*c]const u8, [*c]const u8, c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mkostemp([*c]u8, c_int) c_int;
pub extern fn mkdtemp([*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn random() c_long;
pub extern fn srandom(c_uint) void;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn setstate([*c]u8) [*c]u8;
pub extern fn putenv([*c]u8) c_int;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn unlockpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn setkey([*c]const u8) void;
pub extern fn drand48() f64;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn srand48(c_long) void;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn alloca(usize) ?*anyopaque;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemps([*c]u8, c_int) c_int;
pub extern fn mkostemps([*c]u8, c_int, c_int) c_int;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn clearenv() c_int;
pub extern fn reallocarray(?*anyopaque, usize, usize) ?*anyopaque;
pub extern fn qsort_r(?*anyopaque, usize, usize, ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.C) c_int, ?*anyopaque) void;
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
pub export var vertices: [24]VECTOR = [24]VECTOR{
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
pub export var colours: [24]VECTOR = [24]VECTOR{
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        1.0,
        0.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        1.0,
        0.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
    [4]f32{
        0.0,
        0.0,
        1.0,
        1.0,
    },
};
pub export var object_position: VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
};
pub export var object_rotation: VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
};
pub export var camera_position: VECTOR = [4]f32{
    0.0,
    0.0,
    100.0,
    1.0,
};
pub export var camera_rotation: VECTOR = [4]f32{
    0.0,
    0.0,
    0.0,
    1.0,
};
pub export fn init_gs(arg_frame: [*c]framebuffer_t, arg_z: [*c]zbuffer_t) void {
    var frame = arg_frame;
    var z = arg_z;
    frame.*.width = @as(c_uint, @bitCast(@as(c_int, 640)));
    frame.*.height = @as(c_uint, @bitCast(@as(c_int, 512)));
    frame.*.mask = 0;
    frame.*.psm = 0;
    frame.*.address = @as(c_uint, @bitCast(graph_vram_allocate(@as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(frame.*.psm)), @as(c_int, 2048))));
    z.*.enable = 1;
    z.*.mask = 0;
    z.*.method = 2;
    z.*.zsm = 0;
    z.*.address = @as(c_uint, @bitCast(graph_vram_allocate(@as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(z.*.zsm)), @as(c_int, 2048))));
    _ = graph_initialize(@as(c_int, @bitCast(frame.*.address)), @as(c_int, @bitCast(frame.*.width)), @as(c_int, @bitCast(frame.*.height)), @as(c_int, @bitCast(frame.*.psm)), @as(c_int, 0), @as(c_int, 0));
}
pub export fn init_drawing_environment(arg_frame: [*c]framebuffer_t, arg_z: [*c]zbuffer_t) void {
    var frame = arg_frame;
    var z = arg_z;
    var packet: [*c]packet_t = packet_init(@as(c_int, 16), @as(c_int, 0));
    var q: [*c]qword_t = packet.*.data;
    q = draw_setup_environment(q, @as(c_int, 0), frame, z);
    q = draw_primitive_xyoffset(q, @as(c_int, 0), @as(f32, @floatFromInt(@as(c_int, 2048) - @as(c_int, 320))), @as(f32, @floatFromInt(@as(c_int, 2048) - @as(c_int, 256))));
    q = draw_finish(q);
    _ = dma_channel_send_normal(@as(c_int, 2), @as(?*anyopaque, @ptrCast(packet.*.data)), @divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(packet.*.data))), @sizeOf(qword_t)), @as(c_int, 0), @as(c_int, 0));
    dma_wait_fast();
    packet_free(packet);
}
pub export fn render(arg_frame: [*c]framebuffer_t, arg_z: [*c]zbuffer_t) c_int {
    var frame = arg_frame;
    var z = arg_z;
    var i: c_int = undefined;
    var context: c_int = 0;
    var local_world: MATRIX = undefined;
    var world_view: MATRIX = undefined;
    var view_screen: MATRIX = undefined;
    var local_screen: MATRIX = undefined;
    var temp_vertices: [*c]VECTOR = undefined;
    var prim: prim_t = undefined;
    var color: color_t = undefined;
    var verts: [*c]xyz_t = undefined;
    var colors: [*c]color_t = undefined;
    var packets: [2][*c]packet_t = undefined;
    var current: [*c]packet_t = undefined;
    var dmatag: [*c]qword_t = undefined;
    packets[@as(c_uint, @intCast(@as(c_int, 0)))] = packet_init(@as(c_int, 100), @as(c_int, 0));
    packets[@as(c_uint, @intCast(@as(c_int, 1)))] = packet_init(@as(c_int, 100), @as(c_int, 0));
    temp_vertices = @as([*c]VECTOR, @ptrCast(@alignCast(memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(VECTOR) *% @as(c_uint, @bitCast(vertex_count))))));
    verts = @as([*c]xyz_t, @ptrCast(@alignCast(memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(vertex_t) *% @as(c_uint, @bitCast(vertex_count))))));
    colors = @as([*c]color_t, @ptrCast(@alignCast(memalign(@as(usize, @bitCast(@as(c_int, 128))), @sizeOf(color_t) *% @as(c_uint, @bitCast(vertex_count))))));
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
    create_view_screen(@as([*c]f32, @ptrCast(@alignCast(&view_screen))), graph_aspect_ratio(), -3.0, 3.0, -3.0, 3.0, 1.0, 2000.0);
    dma_wait_fast();
    while (true) {
        var q: [*c]qword_t = undefined;
        current = packets[@as(c_uint, @intCast(context))];
        object_rotation[@as(c_uint, @intCast(@as(c_int, 0)))] += 0.00800000037997961;
        object_rotation[@as(c_uint, @intCast(@as(c_int, 1)))] += 0.012000000104308128;
        create_local_world(@as([*c]f32, @ptrCast(@alignCast(&local_world))), @as([*c]f32, @ptrCast(@alignCast(&object_position))), @as([*c]f32, @ptrCast(@alignCast(&object_rotation))));
        create_world_view(@as([*c]f32, @ptrCast(@alignCast(&world_view))), @as([*c]f32, @ptrCast(@alignCast(&camera_position))), @as([*c]f32, @ptrCast(@alignCast(&camera_rotation))));
        create_local_screen(@as([*c]f32, @ptrCast(@alignCast(&local_screen))), @as([*c]f32, @ptrCast(@alignCast(&local_world))), @as([*c]f32, @ptrCast(@alignCast(&world_view))), @as([*c]f32, @ptrCast(@alignCast(&view_screen))));
        calculate_vertices(temp_vertices, vertex_count, @as([*c]VECTOR, @ptrCast(@alignCast(&vertices))), @as([*c]f32, @ptrCast(@alignCast(&local_screen))));
        _ = draw_convert_xyz(verts, @as(f32, @floatFromInt(@as(c_int, 2048))), @as(f32, @floatFromInt(@as(c_int, 2048))), @as(c_int, 32), vertex_count, @as([*c]vertex_f_t, @ptrCast(@alignCast(temp_vertices))));
        _ = draw_convert_rgbq(colors, vertex_count, @as([*c]vertex_f_t, @ptrCast(@alignCast(temp_vertices))), @as([*c]color_f_t, @ptrCast(@alignCast(@as([*c]VECTOR, @ptrCast(@alignCast(&colours)))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))));
        dmatag = current.*.data;
        q = dmatag;
        q += 1;
        q = draw_disable_tests(q, @as(c_int, 0), z);
        q = draw_clear(q, @as(c_int, 0), 2048.0 - 320.0, 2048.0 - 256.0, @as(f32, @floatFromInt(frame.*.width)), @as(f32, @floatFromInt(frame.*.height)), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
        q = draw_enable_tests(q, @as(c_int, 0), z);
        q = draw_prim_start(q, @as(c_int, 0), &prim, &color);
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
        q = draw_prim_end(q, @as(c_int, 2), (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 1)))) << @intCast(0)) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 5)))) << @intCast(4)));
        q = draw_finish(q);
        _ = blk: {
            _ = blk_1: {
                dmatag.*.dw[@as(c_uint, @intCast(@as(c_int, 0)))] = (((((@as(@"u64", @bitCast(@as(c_longlong, (@divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(current.*.data))), @sizeOf(qword_t)) - @as(c_int, 1)) & @as(c_int, 65535)))) << @intCast(0)) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 3)))) << @intCast(26))) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 7) & @as(c_int, 7)))) << @intCast(28))) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 1)))) << @intCast(31))) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 2147483647)))) << @intCast(32))) | (@as(@"u64", @bitCast(@as(c_longlong, @as(c_int, 0) & @as(c_int, 1)))) << @intCast(63));
                break :blk_1 blk_2: {
                    const tmp = @as(@"u32", @bitCast(@as(c_int, 0)));
                    dmatag.*.sw[@as(c_uint, @intCast(@as(c_int, 2)))] = tmp;
                    break :blk_2 tmp;
                };
            };
            break :blk blk_1: {
                const tmp = @as(@"u32", @bitCast(@as(c_int, 0)));
                dmatag.*.sw[@as(c_uint, @intCast(@as(c_int, 3)))] = tmp;
                break :blk_1 tmp;
            };
        };
        dma_wait_fast();
        _ = dma_channel_send_chain(@as(c_int, 2), @as(?*anyopaque, @ptrCast(current.*.data)), @divExact(@as(c_int, @bitCast(@intFromPtr(q) -% @intFromPtr(current.*.data))), @sizeOf(qword_t)), @as(c_int, 0), @as(c_int, 0));
        context ^= @as(c_int, 1);
        draw_wait_finish();
        graph_wait_vsync();
    }
    packet_free(packets[@as(c_uint, @intCast(@as(c_int, 0)))]);
    packet_free(packets[@as(c_uint, @intCast(@as(c_int, 1)))]);
    return 0;
}
pub export fn main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    _ = @TypeOf(argc);
    var argv = arg_argv;
    _ = @TypeOf(argv);
    var frame: framebuffer_t = undefined;
    var z: zbuffer_t = undefined;
    _ = dma_channel_initialize(@as(c_int, 2), @as(?*anyopaque, @ptrFromInt(@as(c_int, 0))), @as(c_int, 0));
    dma_channel_fast_waits(@as(c_int, 2));
    init_gs(&frame, &z);
    init_drawing_environment(&frame, &z);
    _ = render(&frame, &z);
    _ = SleepThread();
    return 0;
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):79:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):85:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):167:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):189:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):197:9
pub const _MIPS_ISA = @compileError("unable to translate macro: undefined identifier `_MIPS_ISA_MIPS32`"); // (no file):324:9
pub const PACK_DMATAG = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:51:9
pub const DMATAG_CNT = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:57:9
pub const DMATAG_CNTS = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:63:9
pub const DMATAG_NEXT = @compileError("unable to translate C expr: unexpected token ','"); // include/dma_tags.h:69:9
pub const DMATAG_END = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:75:9
pub const DMATAG_CALL = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:81:9
pub const DMATAG_RET = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:87:9
pub const DMATAG_REF = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:93:9
pub const DMATAG_REFS = @compileError("unable to translate C expr: unexpected token '='"); // include/dma_tags.h:99:9
pub const DMATAG_REFE = @compileError("unable to translate macro: undefined identifier `qwc`"); // include/dma_tags.h:105:9
pub const PACK_GIFTAG = @compileError("unable to translate C expr: unexpected token '='"); // include/gif_tags.h:76:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // include/stddef.h:416:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // include/stdarg.h:50:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // include/stdarg.h:52:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // include/stdarg.h:53:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // include/stdarg.h:56:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // include/stdarg.h:58:9
pub const ExitHandler = @compileError("unable to translate macro: undefined identifier `asm`"); // include/kernel.h:28:9
pub const EE_SYNC = @compileError("unable to translate macro: undefined identifier `__asm__`"); // include/kernel.h:31:9
pub const EE_SYNCL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // include/kernel.h:32:9
pub const EE_SYNCP = @compileError("unable to translate macro: undefined identifier `__asm__`"); // include/kernel.h:33:9
pub const PUSHDATA = @compileError("unable to translate C expr: unexpected token ')'"); // include/kernel.h:44:9
pub const POPDATA = @compileError("unable to translate C expr: unexpected token '='"); // include/kernel.h:48:9
pub const ALIGNED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // include/kernel.h:52:9
pub const DISABLE_PATCHED_Exit = @compileError("unable to translate macro: undefined identifier `exit_code`"); // include/kernel.h:525:9
pub const DISABLE_PATCHED_LoadExecPS2 = @compileError("unable to translate macro: undefined identifier `filename`"); // include/kernel.h:528:9
pub const NO_PATCHED_ExecOSD = @compileError("unable to translate macro: undefined identifier `num_args`"); // include/kernel.h:531:9
pub const DISABLE_TimerSystemTime = @compileError("unable to translate macro: undefined identifier `StartTimerSystemTime`"); // include/kernel.h:534:9
pub const DISABLE_TimerAlarm = @compileError("unable to translate macro: undefined identifier `InitTimerAlarm`"); // include/kernel.h:538:9
pub const DISABLE_PATCHED_ALARMS = @compileError("unable to translate C expr: unexpected token '}'"); // include/kernel.h:542:9
pub const DISABLE_PATCHED_THREADS = @compileError("unable to translate macro: undefined identifier `priority`"); // include/kernel.h:545:9
pub const DISABLE_PATCHED_ExecPS2 = @compileError("unable to translate macro: undefined identifier `entry`"); // include/kernel.h:551:9
pub const DISABLE_PATCHED_TLBFunctions = @compileError("unable to translate C expr: unexpected token '}'"); // include/kernel.h:555:9
pub const DISABLE_PATCHED_FUNCTIONS = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // include/kernel.h:559:9
pub const DISABLE_EXTRA_TIMERS_FUNCTIONS = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // include/kernel.h:567:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // include/features.h:20:9
pub const __inline = @compileError("unable to translate C expr: unexpected token 'inline'"); // include/features.h:26:9
pub const __REDIR = @compileError("unable to translate macro: undefined identifier `__typeof__`"); // include/features.h:38:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "16.0.6 ";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.6";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _ILP32 = @as(c_int, 1);
pub const __ILP32__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 32);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 32);
pub const __INTPTR_MAX__ = @as(c_long, 2147483647);
pub const __INTPTR_WIDTH__ = @as(c_int, 32);
pub const __UINTPTR_MAX__ = @as(c_ulong, 4294967295);
pub const __UINTPTR_WIDTH__ = @as(c_int, 32);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 4);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 4);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 4);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __PTRDIFF_TYPE__ = c_int;
pub const __PTRDIFF_FMTd__ = "d";
pub const __PTRDIFF_FMTi__ = "i";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_uint;
pub const __SIZE_FMTo__ = "o";
pub const __SIZE_FMTu__ = "u";
pub const __SIZE_FMTx__ = "x";
pub const __SIZE_FMTX__ = "X";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 32);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const MIPSEL = @as(c_int, 1);
pub const __MIPSEL = @as(c_int, 1);
pub const __MIPSEL__ = @as(c_int, 1);
pub const _MIPSEL = @as(c_int, 1);
pub const __mips__ = @as(c_int, 1);
pub const _mips = @as(c_int, 1);
pub const mips = @as(c_int, 1);
pub const __mips = @as(c_int, 32);
pub const __mips_isa_rev = @as(c_int, 1);
pub const __mips_o32 = @as(c_int, 1);
pub const _ABIO32 = @as(c_int, 1);
pub const _MIPS_SIM = _ABIO32;
pub const __mips_abicalls = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __mips_hard_float = @as(c_int, 1);
pub const __mips_fpr = @as(c_int, 32);
pub const _MIPS_FPSET = @as(c_int, 16);
pub const _MIPS_SZPTR = @as(c_int, 32);
pub const _MIPS_SZINT = @as(c_int, 32);
pub const _MIPS_SZLONG = @as(c_int, 32);
pub const _MIPS_ARCH = "mips32";
pub const _MIPS_ARCH_MIPS32 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 0);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const _EE = "";
pub const __DMA_H__ = "";
pub const __TAMTYPES_H__ = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __PACKET2_DATA_TYPES_H__ = "";
pub const DMA_CHANNEL_VIF0 = @as(c_int, 0x00);
pub const DMA_CHANNEL_VIF1 = @as(c_int, 0x01);
pub const DMA_CHANNEL_GIF = @as(c_int, 0x02);
pub const DMA_CHANNEL_fromIPU = @as(c_int, 0x03);
pub const DMA_CHANNEL_toIPU = @as(c_int, 0x04);
pub const DMA_CHANNEL_fromSIF0 = @as(c_int, 0x05);
pub const DMA_CHANNEL_toSIF1 = @as(c_int, 0x06);
pub const DMA_CHANNEL_SIF2 = @as(c_int, 0x07);
pub const DMA_CHANNEL_fromSPR = @as(c_int, 0x08);
pub const DMA_CHANNEL_toSPR = @as(c_int, 0x09);
pub const DMA_FLAG_TRANSFERTAG = @as(c_int, 0x01);
pub const DMA_FLAG_INTERRUPTSAFE = @as(c_int, 0x02);
pub const __DMA_TAGS_H__ = "";
pub const DMA_TAG_CNTS = @as(c_int, 0x00);
pub const DMA_TAG_REFE = @as(c_int, 0x00);
pub const DMA_TAG_CNT = @as(c_int, 0x01);
pub const DMA_TAG_NEXT = @as(c_int, 0x02);
pub const DMA_TAG_REF = @as(c_int, 0x03);
pub const DMA_TAG_REFS = @as(c_int, 0x04);
pub const DMA_TAG_CALL = @as(c_int, 0x05);
pub const DMA_TAG_RET = @as(c_int, 0x06);
pub const DMA_TAG_END = @as(c_int, 0x07);
pub inline fn DMATAG(QWC: anytype, PCE: anytype, ID: anytype, IRQ: anytype, ADDR: anytype, SPR: anytype) @TypeOf((((((@import("std").zig.c_translation.cast(@"u64", QWC & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", PCE & @as(c_int, 0x00000003)) << @as(c_int, 26))) | (@import("std").zig.c_translation.cast(@"u64", ID & @as(c_int, 0x00000007)) << @as(c_int, 28))) | (@import("std").zig.c_translation.cast(@"u64", IRQ & @as(c_int, 0x00000001)) << @as(c_int, 31))) | (@import("std").zig.c_translation.cast(@"u64", ADDR & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hexadecimal)) << @as(c_int, 32))) | (@import("std").zig.c_translation.cast(@"u64", SPR & @as(c_int, 0x00000001)) << @as(c_int, 63))) {
    return (((((@import("std").zig.c_translation.cast(@"u64", QWC & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", PCE & @as(c_int, 0x00000003)) << @as(c_int, 26))) | (@import("std").zig.c_translation.cast(@"u64", ID & @as(c_int, 0x00000007)) << @as(c_int, 28))) | (@import("std").zig.c_translation.cast(@"u64", IRQ & @as(c_int, 0x00000001)) << @as(c_int, 31))) | (@import("std").zig.c_translation.cast(@"u64", ADDR & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hexadecimal)) << @as(c_int, 32))) | (@import("std").zig.c_translation.cast(@"u64", SPR & @as(c_int, 0x00000001)) << @as(c_int, 63));
}
pub const __DRAW_H__ = "";
pub const __DRAW_BLENDING_H__ = "";
pub const BLEND_COLOR_SOURCE = @as(c_int, 0);
pub const BLEND_COLOR_DEST = @as(c_int, 1);
pub const BLEND_COLOR_ZERO = @as(c_int, 2);
pub const BLEND_ALPHA_SOURCE = @as(c_int, 0);
pub const BLEND_ALPHA_DEST = @as(c_int, 1);
pub const BLEND_ALPHA_FIXED = @as(c_int, 2);
pub const ALPHA_CORRECT_RGBA32 = @as(c_int, 0);
pub const ALPHA_CORRECT_RGBA16 = @as(c_int, 1);
pub const __DRAW_BUFFERS_H__ = "";
pub const TEXTURE_COMPONENTS_RGB = @as(c_int, 0);
pub const TEXTURE_COMPONENTS_RGBA = @as(c_int, 1);
pub const TEXTURE_FUNCTION_MODULATE = @as(c_int, 0);
pub const TEXTURE_FUNCTION_DECAL = @as(c_int, 1);
pub const TEXTURE_FUNCTION_HIGHLIGHT = @as(c_int, 2);
pub const TEXTURE_FUNCTION_HIGHLIGHT2 = @as(c_int, 3);
pub const CLUT_STORAGE_MODE1 = @as(c_int, 0);
pub const CLUT_STORAGE_MODE2 = @as(c_int, 1);
pub const CLUT_NO_LOAD = @as(c_int, 0);
pub const CLUT_LOAD = @as(c_int, 1);
pub const CLUT_LOAD_COPY_CBP0 = @as(c_int, 2);
pub const CLUT_LOAD_COPY_CBP1 = @as(c_int, 3);
pub const CLUT_COMPARE_CBP0 = @as(c_int, 4);
pub const CLUT_COMPARE_CBP1 = @as(c_int, 5);
pub const __DRAW_DITHERING_H__ = "";
pub const __DRAW_FOG_H__ = "";
pub const __DRAW_MASKING_H__ = "";
pub const SCAN_MASK_NORMAL = @as(c_int, 0);
pub const SCAN_MASK_ODD = @as(c_int, 2);
pub const SCAN_MASK_EVEN = @as(c_int, 3);
pub const COLOR_CLAMP_MASK = @as(c_int, 0);
pub const COLOR_CLAMP_ENABLE = @as(c_int, 1);
pub const __DRAW_PRIMITIVES_H__ = "";
pub const PRIM_POINT = @as(c_int, 0x00);
pub const PRIM_LINE = @as(c_int, 0x01);
pub const PRIM_LINE_STRIP = @as(c_int, 0x02);
pub const PRIM_TRIANGLE = @as(c_int, 0x03);
pub const PRIM_TRIANGLE_STRIP = @as(c_int, 0x04);
pub const PRIM_TRIANGLE_FAN = @as(c_int, 0x05);
pub const PRIM_SPRITE = @as(c_int, 0x06);
pub const PRIM_SHADE_FLAT = @as(c_int, 0);
pub const PRIM_SHADE_GOURAUD = @as(c_int, 1);
pub const PRIM_MAP_ST = @as(c_int, 0);
pub const PRIM_MAP_UV = @as(c_int, 1);
pub const PRIM_UNFIXED = @as(c_int, 0);
pub const PRIM_FIXED = @as(c_int, 1);
pub const PRIM_OVERRIDE_ENABLE = @as(c_int, 0);
pub const PRIM_OVERRIDE_DISABLE = @as(c_int, 1);
pub const __DRAW_SAMPLING_H__ = "";
pub const LOD_FORMULAIC = @as(c_int, 0);
pub const LOD_USE_K = @as(c_int, 1);
pub const LOD_MAG_NEAREST = @as(c_int, 0);
pub const LOD_MAG_LINEAR = @as(c_int, 1);
pub const LOD_MIN_NEAREST = @as(c_int, 0);
pub const LOD_MIN_LINEAR = @as(c_int, 1);
pub const LOD_MIN_NEAR_MIPMAP_NEAR = @as(c_int, 2);
pub const LOD_MIN_NEAR_MIPMAP_LINE = @as(c_int, 3);
pub const LOD_MIN_LINE_MIPMAP_NEAR = @as(c_int, 4);
pub const LOD_MIN_LINE_MIPMAP_LINE = @as(c_int, 5);
pub const LOD_MIPMAP_REGISTER = @as(c_int, 0);
pub const LOD_MIPMAP_CALCULATE = @as(c_int, 1);
pub const WRAP_REPEAT = @as(c_int, 0);
pub const WRAP_CLAMP = @as(c_int, 1);
pub const WRAP_REGION_CLAMP = @as(c_int, 2);
pub const WRAP_REGION_REPEAT = @as(c_int, 3);
pub const ALPHA_EXPAND_NORMAL = @as(c_int, 0);
pub const ALPHA_EXPAND_TRANSPARENT = @as(c_int, 1);
pub const __DRAW_TESTS_H__ = "";
pub const ATEST_METHOD_ALLFAIL = @as(c_int, 0);
pub const ATEST_METHOD_ALLPASS = @as(c_int, 1);
pub const ATEST_METHOD_LESS = @as(c_int, 2);
pub const ATEST_METHOD_LESS_EQUAL = @as(c_int, 3);
pub const ATEST_METHOD_EQUAL = @as(c_int, 4);
pub const ATEST_METHOD_GREATER_EQUAL = @as(c_int, 5);
pub const ATEST_METHOD_GREATER = @as(c_int, 6);
pub const ATEST_METHOD_NOTEQUAL = @as(c_int, 7);
pub const ATEST_KEEP_ALL = @as(c_int, 0);
pub const ATEST_KEEP_ZBUFFER = @as(c_int, 1);
pub const ATEST_KEEP_FRAMEBUFFER = @as(c_int, 2);
pub const ATEST_KEEP_ALPHA = @as(c_int, 3);
pub const DTEST_METHOD_PASS_ZERO = @as(c_int, 0);
pub const DTEST_METHOD_PASS_ONE = @as(c_int, 1);
pub const ZTEST_METHOD_ALLFAIL = @as(c_int, 0);
pub const ZTEST_METHOD_ALLPASS = @as(c_int, 1);
pub const ZTEST_METHOD_GREATER_EQUAL = @as(c_int, 2);
pub const ZTEST_METHOD_GREATER = @as(c_int, 3);
pub const __DRAW_TYPES_H__ = "";
pub const __MATH3D_H__ = "";
pub const LIGHT_AMBIENT = @as(c_int, 0);
pub const LIGHT_DIRECTIONAL = @as(c_int, 1);
pub inline fn ftoi4(F: anytype) c_int {
    return @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.cast(f32, F) * @as(f32, 16.0));
}
pub const __DRAW2D_H__ = "";
pub const __DRAW3D_H__ = "";
pub const __GIF_TAGS_H__ = "";
pub const GIF_BLOCK_SIZE = @as(c_int, 0x7FFF);
pub const GIF_PRE_DISABLE = @as(c_int, 0x00);
pub const GIF_PRE_ENABLE = @as(c_int, 0x01);
pub const GIF_PRIM_POINT = @as(c_int, 0x00);
pub const GIF_PRIM_LINE = @as(c_int, 0x01);
pub const GIF_PRIM_LINE_STRIP = @as(c_int, 0x02);
pub const GIF_PRIM_TRIANGLE = @as(c_int, 0x03);
pub const GIF_PRIM_TRIANGLE_STRIP = @as(c_int, 0x04);
pub const GIF_PRIM_TRIANGLE_FAN = @as(c_int, 0x05);
pub const GIF_PRIM_SPRITE = @as(c_int, 0x06);
pub const GIF_FLG_PACKED = @as(c_int, 0x00);
pub const GIF_FLG_REGLIST = @as(c_int, 0x01);
pub const GIF_FLG_IMAGE = @as(c_int, 0x02);
pub const GIF_REG_PRIM = @as(c_int, 0x00);
pub const GIF_REG_RGBAQ = @as(c_int, 0x01);
pub const GIF_REG_ST = @as(c_int, 0x02);
pub const GIF_REG_UV = @as(c_int, 0x03);
pub const GIF_REG_XYZF2 = @as(c_int, 0x04);
pub const GIF_REG_XYZ2 = @as(c_int, 0x05);
pub const GIF_REG_TEX0 = @as(c_int, 0x06);
pub const GIF_REG_TEX0_1 = @as(c_int, 0x06);
pub const GIF_REG_TEX0_2 = @as(c_int, 0x07);
pub const GIF_REG_CLAMP = @as(c_int, 0x08);
pub const GIF_REG_CLAMP_1 = @as(c_int, 0x08);
pub const GIF_REG_CLAMP_2 = @as(c_int, 0x09);
pub const GIF_REG_FOG = @as(c_int, 0x0A);
pub const GIF_REG_XYZF3 = @as(c_int, 0x0C);
pub const GIF_REG_XYZ3 = @as(c_int, 0x0D);
pub const GIF_REG_AD = @as(c_int, 0x0E);
pub const GIF_REG_NOP = @as(c_int, 0x0F);
pub inline fn GIF_SET_TAG(NLOOP: anytype, EOP: anytype, PRE: anytype, PRIM: anytype, FLG: anytype, NREG: anytype) @TypeOf((((((@import("std").zig.c_translation.cast(@"u64", NLOOP & @as(c_int, 0x00007FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", EOP & @as(c_int, 0x00000001)) << @as(c_int, 15))) | (@import("std").zig.c_translation.cast(@"u64", PRE & @as(c_int, 0x00000001)) << @as(c_int, 46))) | (@import("std").zig.c_translation.cast(@"u64", PRIM & @as(c_int, 0x000007FF)) << @as(c_int, 47))) | (@import("std").zig.c_translation.cast(@"u64", FLG & @as(c_int, 0x00000003)) << @as(c_int, 58))) | (@import("std").zig.c_translation.cast(@"u64", NREG & @as(c_int, 0x0000000F)) << @as(c_int, 60))) {
    return (((((@import("std").zig.c_translation.cast(@"u64", NLOOP & @as(c_int, 0x00007FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", EOP & @as(c_int, 0x00000001)) << @as(c_int, 15))) | (@import("std").zig.c_translation.cast(@"u64", PRE & @as(c_int, 0x00000001)) << @as(c_int, 46))) | (@import("std").zig.c_translation.cast(@"u64", PRIM & @as(c_int, 0x000007FF)) << @as(c_int, 47))) | (@import("std").zig.c_translation.cast(@"u64", FLG & @as(c_int, 0x00000003)) << @as(c_int, 58))) | (@import("std").zig.c_translation.cast(@"u64", NREG & @as(c_int, 0x0000000F)) << @as(c_int, 60));
}
pub inline fn GIF_SET_PRIM(PRIM: anytype, IIP: anytype, TME: anytype, FGE: anytype, ABE: anytype, AA1: anytype, FST: anytype, CTXT: anytype, FIX: anytype) @TypeOf(((((((((@import("std").zig.c_translation.cast(@"u64", PRIM & @as(c_int, 0x00000007)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", IIP & @as(c_int, 0x00000001)) << @as(c_int, 3))) | (@import("std").zig.c_translation.cast(@"u64", TME & @as(c_int, 0x00000001)) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", FGE & @as(c_int, 0x00000001)) << @as(c_int, 5))) | (@import("std").zig.c_translation.cast(@"u64", ABE & @as(c_int, 0x00000001)) << @as(c_int, 6))) | (@import("std").zig.c_translation.cast(@"u64", AA1 & @as(c_int, 0x00000001)) << @as(c_int, 7))) | (@import("std").zig.c_translation.cast(@"u64", FST & @as(c_int, 0x00000001)) << @as(c_int, 8))) | (@import("std").zig.c_translation.cast(@"u64", CTXT & @as(c_int, 0x00000001)) << @as(c_int, 9))) | (@import("std").zig.c_translation.cast(@"u64", FIX & @as(c_int, 0x00000001)) << @as(c_int, 10))) {
    return ((((((((@import("std").zig.c_translation.cast(@"u64", PRIM & @as(c_int, 0x00000007)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", IIP & @as(c_int, 0x00000001)) << @as(c_int, 3))) | (@import("std").zig.c_translation.cast(@"u64", TME & @as(c_int, 0x00000001)) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", FGE & @as(c_int, 0x00000001)) << @as(c_int, 5))) | (@import("std").zig.c_translation.cast(@"u64", ABE & @as(c_int, 0x00000001)) << @as(c_int, 6))) | (@import("std").zig.c_translation.cast(@"u64", AA1 & @as(c_int, 0x00000001)) << @as(c_int, 7))) | (@import("std").zig.c_translation.cast(@"u64", FST & @as(c_int, 0x00000001)) << @as(c_int, 8))) | (@import("std").zig.c_translation.cast(@"u64", CTXT & @as(c_int, 0x00000001)) << @as(c_int, 9))) | (@import("std").zig.c_translation.cast(@"u64", FIX & @as(c_int, 0x00000001)) << @as(c_int, 10));
}
pub inline fn GIF_SET_RGBAQ(R: anytype, G: anytype, B: anytype, A: anytype, Q: anytype) @TypeOf(((((@import("std").zig.c_translation.cast(@"u64", R & @as(c_int, 0x000000FF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", G & @as(c_int, 0x000000FF)) << @as(c_int, 8))) | (@import("std").zig.c_translation.cast(@"u64", B & @as(c_int, 0x000000FF)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", A & @as(c_int, 0x000000FF)) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(@"u64", Q & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32))) {
    return ((((@import("std").zig.c_translation.cast(@"u64", R & @as(c_int, 0x000000FF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", G & @as(c_int, 0x000000FF)) << @as(c_int, 8))) | (@import("std").zig.c_translation.cast(@"u64", B & @as(c_int, 0x000000FF)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", A & @as(c_int, 0x000000FF)) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(@"u64", Q & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32));
}
pub inline fn GIF_SET_ST(S: anytype, T: anytype) @TypeOf((@import("std").zig.c_translation.cast(@"u64", S & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", T & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32))) {
    return (@import("std").zig.c_translation.cast(@"u64", S & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", T & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32));
}
pub inline fn GIF_SET_UV(U: anytype, V: anytype) @TypeOf((@import("std").zig.c_translation.cast(@"u64", U & @as(c_int, 0x00003FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", V & @as(c_int, 0x00003FFF)) << @as(c_int, 16))) {
    return (@import("std").zig.c_translation.cast(@"u64", U & @as(c_int, 0x00003FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", V & @as(c_int, 0x00003FFF)) << @as(c_int, 16));
}
pub inline fn GIF_SET_XYZ(X: anytype, Y: anytype, Z: anytype) @TypeOf(((@import("std").zig.c_translation.cast(@"u64", X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", Y & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", Z & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32))) {
    return ((@import("std").zig.c_translation.cast(@"u64", X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", Y & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", Z & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal)) << @as(c_int, 32));
}
pub inline fn GIF_SET_XYZF(X: anytype, Y: anytype, Z: anytype, F: anytype) @TypeOf((((@import("std").zig.c_translation.cast(@"u64", X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", Y & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", Z & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00FFFFFF, .hexadecimal)) << @as(c_int, 32))) | (@import("std").zig.c_translation.cast(@"u64", F & @as(c_int, 0x000000FF)) << @as(c_int, 56))) {
    return (((@import("std").zig.c_translation.cast(@"u64", X & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", Y & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0000FFFF, .hexadecimal)) << @as(c_int, 16))) | (@import("std").zig.c_translation.cast(@"u64", Z & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00FFFFFF, .hexadecimal)) << @as(c_int, 32))) | (@import("std").zig.c_translation.cast(@"u64", F & @as(c_int, 0x000000FF)) << @as(c_int, 56));
}
pub inline fn GIF_SET_TEX0(TBA: anytype, TBW: anytype, PSM: anytype, TW: anytype, TH: anytype, TCC: anytype, TFNCT: anytype, CBA: anytype, CPSM: anytype, CSM: anytype, CSA: anytype, CLD: anytype) @TypeOf((((((((((((@import("std").zig.c_translation.cast(@"u64", TBA & @as(c_int, 0x00003FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", TBW & @as(c_int, 0x0000003F)) << @as(c_int, 14))) | (@import("std").zig.c_translation.cast(@"u64", PSM & @as(c_int, 0x0000003F)) << @as(c_int, 20))) | (@import("std").zig.c_translation.cast(@"u64", TW & @as(c_int, 0x0000000F)) << @as(c_int, 26))) | (@import("std").zig.c_translation.cast(@"u64", TH & @as(c_int, 0x0000000F)) << @as(c_int, 30))) | (@import("std").zig.c_translation.cast(@"u64", TCC & @as(c_int, 0x00000001)) << @as(c_int, 34))) | (@import("std").zig.c_translation.cast(@"u64", TFNCT & @as(c_int, 0x00000003)) << @as(c_int, 35))) | (@import("std").zig.c_translation.cast(@"u64", CBA & @as(c_int, 0x00003FFF)) << @as(c_int, 37))) | (@import("std").zig.c_translation.cast(@"u64", CPSM & @as(c_int, 0x0000000F)) << @as(c_int, 51))) | (@import("std").zig.c_translation.cast(@"u64", CSM & @as(c_int, 0x00000001)) << @as(c_int, 55))) | (@import("std").zig.c_translation.cast(@"u64", CSA & @as(c_int, 0x0000001F)) << @as(c_int, 56))) | (@import("std").zig.c_translation.cast(@"u64", CLD & @as(c_int, 0x00000007)) << @as(c_int, 61))) {
    return (((((((((((@import("std").zig.c_translation.cast(@"u64", TBA & @as(c_int, 0x00003FFF)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", TBW & @as(c_int, 0x0000003F)) << @as(c_int, 14))) | (@import("std").zig.c_translation.cast(@"u64", PSM & @as(c_int, 0x0000003F)) << @as(c_int, 20))) | (@import("std").zig.c_translation.cast(@"u64", TW & @as(c_int, 0x0000000F)) << @as(c_int, 26))) | (@import("std").zig.c_translation.cast(@"u64", TH & @as(c_int, 0x0000000F)) << @as(c_int, 30))) | (@import("std").zig.c_translation.cast(@"u64", TCC & @as(c_int, 0x00000001)) << @as(c_int, 34))) | (@import("std").zig.c_translation.cast(@"u64", TFNCT & @as(c_int, 0x00000003)) << @as(c_int, 35))) | (@import("std").zig.c_translation.cast(@"u64", CBA & @as(c_int, 0x00003FFF)) << @as(c_int, 37))) | (@import("std").zig.c_translation.cast(@"u64", CPSM & @as(c_int, 0x0000000F)) << @as(c_int, 51))) | (@import("std").zig.c_translation.cast(@"u64", CSM & @as(c_int, 0x00000001)) << @as(c_int, 55))) | (@import("std").zig.c_translation.cast(@"u64", CSA & @as(c_int, 0x0000001F)) << @as(c_int, 56))) | (@import("std").zig.c_translation.cast(@"u64", CLD & @as(c_int, 0x00000007)) << @as(c_int, 61));
}
pub inline fn GIF_SET_CLAMP(WMS: anytype, WMT: anytype, MINU: anytype, MAXU: anytype, MINV: anytype, MAXV: anytype) @TypeOf((((((@import("std").zig.c_translation.cast(@"u64", WMS & @as(c_int, 0x00000003)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", WMT & @as(c_int, 0x00000003)) << @as(c_int, 2))) | (@import("std").zig.c_translation.cast(@"u64", MINU & @as(c_int, 0x000003FF)) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", MAXU & @as(c_int, 0x000003FF)) << @as(c_int, 14))) | (@import("std").zig.c_translation.cast(@"u64", MINV & @as(c_int, 0x000003FF)) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(@"u64", MAXV & @as(c_int, 0x000003FF)) << @as(c_int, 34))) {
    return (((((@import("std").zig.c_translation.cast(@"u64", WMS & @as(c_int, 0x00000003)) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", WMT & @as(c_int, 0x00000003)) << @as(c_int, 2))) | (@import("std").zig.c_translation.cast(@"u64", MINU & @as(c_int, 0x000003FF)) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", MAXU & @as(c_int, 0x000003FF)) << @as(c_int, 14))) | (@import("std").zig.c_translation.cast(@"u64", MINV & @as(c_int, 0x000003FF)) << @as(c_int, 24))) | (@import("std").zig.c_translation.cast(@"u64", MAXV & @as(c_int, 0x000003FF)) << @as(c_int, 34));
}
pub inline fn GIF_SET_FOG(FOG: anytype) @TypeOf(@import("std").zig.c_translation.cast(@"u64", FOG & @as(c_int, 0x000000FF)) << @as(c_int, 56)) {
    return @import("std").zig.c_translation.cast(@"u64", FOG & @as(c_int, 0x000000FF)) << @as(c_int, 56);
}
pub const DRAW_XYZ_REGLIST = (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 4));
pub const DRAW_RGBAQ_REGLIST = (@import("std").zig.c_translation.cast(@"u64", GIF_REG_RGBAQ) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 4));
pub const DRAW_UV_REGLIST = (@import("std").zig.c_translation.cast(@"u64", GIF_REG_UV) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 4));
pub const DRAW_RGBAQ_UV_REGLIST = ((@import("std").zig.c_translation.cast(@"u64", GIF_REG_RGBAQ) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_UV) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 8));
pub const DRAW_STQ_REGLIST = ((@import("std").zig.c_translation.cast(@"u64", GIF_REG_RGBAQ) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_ST) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 8));
pub const DRAW_STQ2_REGLIST = ((@import("std").zig.c_translation.cast(@"u64", GIF_REG_ST) << @as(c_int, 0)) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_RGBAQ) << @as(c_int, 4))) | (@import("std").zig.c_translation.cast(@"u64", GIF_REG_XYZ2) << @as(c_int, 8));
pub const DRAW_DISABLE = @as(c_int, 0);
pub const DRAW_ENABLE = @as(c_int, 1);
pub const __GRAPH_H__ = "";
pub const __GRAPH_VRAM_H__ = "";
pub const GRAPH_VRAM_MAX_WORDS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1048576, .decimal);
pub const GRAPH_ALIGN_PAGE = @as(c_int, 2048);
pub const GRAPH_ALIGN_BLOCK = @as(c_int, 64);
pub const GRAPH_MODE_AUTO = @as(c_int, 0);
pub const GRAPH_MODE_NTSC = @as(c_int, 1);
pub const GRAPH_MODE_PAL = @as(c_int, 2);
pub const GRAPH_MODE_HDTV_480P = @as(c_int, 3);
pub const GRAPH_MODE_HDTV_576P = @as(c_int, 4);
pub const GRAPH_MODE_HDTV_720P = @as(c_int, 5);
pub const GRAPH_MODE_HDTV_1080I = @as(c_int, 6);
pub const GRAPH_MODE_VGA_640_60 = @as(c_int, 7);
pub const GRAPH_MODE_VGA_640_72 = @as(c_int, 8);
pub const GRAPH_MODE_VGA_640_75 = @as(c_int, 9);
pub const GRAPH_MODE_VGA_640_85 = @as(c_int, 10);
pub const GRAPH_MODE_VGA_800_56 = @as(c_int, 11);
pub const GRAPH_MODE_VGA_800_60 = @as(c_int, 12);
pub const GRAPH_MODE_VGA_800_72 = @as(c_int, 13);
pub const GRAPH_MODE_VGA_800_75 = @as(c_int, 14);
pub const GRAPH_MODE_VGA_800_85 = @as(c_int, 15);
pub const GRAPH_MODE_VGA_1024_60 = @as(c_int, 16);
pub const GRAPH_MODE_VGA_1024_70 = @as(c_int, 17);
pub const GRAPH_MODE_VGA_1024_75 = @as(c_int, 18);
pub const GRAPH_MODE_VGA_1024_85 = @as(c_int, 19);
pub const GRAPH_MODE_VGA_1280_60 = @as(c_int, 20);
pub const GRAPH_MODE_VGA_1280_75 = @as(c_int, 21);
pub const GRAPH_MODE_NONINTERLACED = @as(c_int, 0);
pub const GRAPH_MODE_INTERLACED = @as(c_int, 1);
pub const GRAPH_MODE_FIELD = @as(c_int, 0);
pub const GRAPH_MODE_FRAME = @as(c_int, 1);
pub const GRAPH_FIELD_EVEN = @as(c_int, 0);
pub const GRAPH_FIELD_ODD = @as(c_int, 1);
pub const GRAPH_DISABLE = @as(c_int, 0);
pub const GRAPH_ENABLE = @as(c_int, 1);
pub const GRAPH_GCONT_RGB = @as(c_int, 0);
pub const GRAPH_GCONT_YCRCB = @as(c_int, 1);
pub const GRAPH_CMOD_NTSC = @as(c_int, 2);
pub const GRAPH_CMOD_PAL = @as(c_int, 3);
pub const GRAPH_VALUE_RC1 = @as(c_int, 0);
pub const GRAPH_VALUE_ALPHA = @as(c_int, 1);
pub const GRAPH_RC1_ALPHA = @as(c_int, 0);
pub const GRAPH_RC2_ALPHA = @as(c_int, 1);
pub const GRAPH_BLEND_RC2 = @as(c_int, 0);
pub const GRAPH_BLEND_BGCOLOR = @as(c_int, 1);
pub const __GS_PSM_H__ = "";
pub const GS_PSM_32 = @as(c_int, 0x00);
pub const GS_PSM_24 = @as(c_int, 0x01);
pub const GS_PSM_16 = @as(c_int, 0x02);
pub const GS_PSM_16S = @as(c_int, 0x0A);
pub const GS_PSM_PS24 = @as(c_int, 0x12);
pub const GS_PSM_8 = @as(c_int, 0x13);
pub const GS_PSM_4 = @as(c_int, 0x14);
pub const GS_PSM_8H = @as(c_int, 0x1B);
pub const GS_PSM_4HL = @as(c_int, 0x24);
pub const GS_PSM_4HH = @as(c_int, 0x2C);
pub const GS_PSMZ_32 = @as(c_int, 0x30);
pub const GS_PSMZ_24 = @as(c_int, 0x31);
pub const GS_PSMZ_16 = @as(c_int, 0x32);
pub const GS_PSMZ_16S = @as(c_int, 0x3A);
pub const GS_ZBUF_32 = @as(c_int, 0x00);
pub const GS_ZBUF_24 = @as(c_int, 0x01);
pub const GS_ZBUF_16 = @as(c_int, 0x02);
pub const GS_ZBUF_16S = @as(c_int, 0x0A);
pub const __KERNEL_H__ = "";
pub const _STDDEF_H = "";
pub const _STDDEF_H_ = "";
pub const _ANSI_STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const _T_PTRDIFF_ = "";
pub const _T_PTRDIFF = "";
pub const __PTRDIFF_T = "";
pub const _PTRDIFF_T_ = "";
pub const _BSD_PTRDIFF_T_ = "";
pub const ___int_ptrdiff_t_h = "";
pub const _GCC_PTRDIFF_T = "";
pub const _PTRDIFF_T_DECLARED = "";
pub const __DEFINED_ptrdiff_t = "";
pub const __size_t__ = "";
pub const __SIZE_T__ = "";
pub const _SIZE_T = "";
pub const _SYS_SIZE_T_H = "";
pub const _T_SIZE_ = "";
pub const _T_SIZE = "";
pub const __SIZE_T = "";
pub const _SIZE_T_ = "";
pub const _BSD_SIZE_T_ = "";
pub const _SIZE_T_DEFINED_ = "";
pub const _SIZE_T_DEFINED = "";
pub const _BSD_SIZE_T_DEFINED_ = "";
pub const _SIZE_T_DECLARED = "";
pub const __DEFINED_size_t = "";
pub const ___int_size_t_h = "";
pub const _GCC_SIZE_T = "";
pub const _SIZET_ = "";
pub const __size_t = "";
pub const __wchar_t__ = "";
pub const __WCHAR_T__ = "";
pub const _WCHAR_T = "";
pub const _T_WCHAR_ = "";
pub const _T_WCHAR = "";
pub const __WCHAR_T = "";
pub const _WCHAR_T_ = "";
pub const _BSD_WCHAR_T_ = "";
pub const _WCHAR_T_DEFINED_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCHAR_T_H = "";
pub const ___int_wchar_t_h = "";
pub const __INT_WCHAR_T_H = "";
pub const _GCC_WCHAR_T = "";
pub const _WCHAR_T_DECLARED = "";
pub const __DEFINED_wchar_t = "";
pub const _GCC_MAX_ALIGN_T = "";
pub const _STDARG_H = "";
pub const _ANSI_STDARG_H_ = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_ = "";
pub const _VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub const _VA_LIST_T_H = "";
pub const __va_list__ = "";
pub const __SIFDMA_H__ = "";
pub const SIF_DMA_INT_I = @as(c_int, 0x2);
pub const SIF_DMA_INT_O = @as(c_int, 0x4);
pub const SIF_DMA_ERT = @as(c_int, 0x40);
pub const SIF_REG_ID_SYSTEM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub const SIF_STAT_SIFINIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000, .hexadecimal);
pub const SIF_STAT_CMDINIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000, .hexadecimal);
pub const SIF_STAT_BOOTEND = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000, .hexadecimal);
pub const DI = DIntr;
pub const EI = EIntr;
pub inline fn UNCACHED_SEG(x: anytype) ?*anyopaque {
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(@"u32", x) | @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal));
}
pub inline fn IS_UNCACHED_SEG(x: anytype) @TypeOf(@import("std").zig.c_translation.cast(@"u32", x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal)) {
    return @import("std").zig.c_translation.cast(@"u32", x) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
}
pub inline fn UCAB_SEG(x: anytype) ?*anyopaque {
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(@"u32", x) | @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x30000000, .hexadecimal));
}
pub inline fn SetModuleGP() @TypeOf(ChangeGP(&_gp)) {
    return ChangeGP(&_gp);
}
pub const TH_SELF = @as(c_int, 0);
pub const MAX_THREADS = @as(c_int, 256);
pub const MAX_SEMAPHORES = @as(c_int, 256);
pub const MAX_PRIORITY = @as(c_int, 128);
pub const MAX_HANDLERS = @as(c_int, 128);
pub const MAX_ALARMS = @as(c_int, 64);
pub const WRITEBACK_DCACHE = @as(c_int, 0);
pub const INVALIDATE_DCACHE = @as(c_int, 1);
pub const INVALIDATE_ICACHE = @as(c_int, 2);
pub const INVALIDATE_CACHE = @as(c_int, 3);
pub const kINTC_GS = INTC_GS;
pub const kINTC_SBUS = INTC_SBUS;
pub const kINTC_VBLANK_START = INTC_VBLANK_S;
pub const kINTC_VBLANK_END = INTC_VBLANK_E;
pub const kINTC_VIF0 = INTC_VIF0;
pub const kINTC_VIF1 = INTC_VIF1;
pub const kINTC_VU0 = INTC_VU0;
pub const kINTC_VU1 = INTC_VU1;
pub const kINTC_IPU = INTC_IPU;
pub const kINTC_TIMER0 = INTC_TIM0;
pub const kINTC_TIMER1 = INTC_TIM1;
pub const INIT_DMAC = @as(c_int, 0x01);
pub const INIT_VU1 = @as(c_int, 0x02);
pub const INIT_VIF1 = @as(c_int, 0x04);
pub const INIT_GIF = @as(c_int, 0x08);
pub const INIT_VU0 = @as(c_int, 0x10);
pub const INIT_VIF0 = @as(c_int, 0x20);
pub const INIT_IPU = @as(c_int, 0x40);
pub const THS_RUN = @as(c_int, 0x01);
pub const THS_READY = @as(c_int, 0x02);
pub const THS_WAIT = @as(c_int, 0x04);
pub const THS_SUSPEND = @as(c_int, 0x08);
pub const THS_WAITSUSPEND = @as(c_int, 0x0c);
pub const THS_DORMANT = @as(c_int, 0x10);
pub const TSW_NONE = @as(c_int, 0);
pub const TSW_SLEEP = @as(c_int, 1);
pub const TSW_SEMA = @as(c_int, 2);
pub const CPU_DATA_CACHE = @as(c_int, 1);
pub const CPU_INSTRUCTION_CACHE = @as(c_int, 2);
pub const _MALLOC_H = "";
pub const __NEED_size_t = "";
pub const _Addr = c_long;
pub const _Int64 = c_long;
pub const _Reg = c_long;
pub const __BYTE_ORDER = @as(c_int, 1234);
pub const __LONG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hexadecimal);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __PACKET_H__ = "";
pub const QWC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const PACKET_NORMAL = @as(c_int, 0x00);
pub const PACKET_UCAB = @as(c_int, 0x01);
pub const PACKET_SPR = @as(c_int, 0x02);
pub const _STDIO_H = "";
pub const _FEATURES_H = "";
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const __NEED_FILE = "";
pub const __NEED___isoc_va_list = "";
pub const __NEED_ssize_t = "";
pub const __NEED_off_t = "";
pub const __NEED_va_list = "";
pub const __DEFINED_ssize_t = "";
pub const __DEFINED_off_t = "";
pub const __DEFINED_FILE = "";
pub const __DEFINED_va_list = "";
pub const __DEFINED___isoc_va_list = "";
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const FOPEN_MAX = @as(c_int, 1000);
pub const TMP_MAX = @as(c_int, 10000);
pub const L_tmpnam = @as(c_int, 20);
pub const L_ctermid = @as(c_int, 20);
pub const P_tmpdir = "/tmp";
pub const L_cuserid = @as(c_int, 20);
pub const _STDLIB_H = "";
pub const __NEED_wchar_t = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub inline fn WEXITSTATUS(s: anytype) @TypeOf((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn WTERMSIG(s: anytype) @TypeOf(s & @as(c_int, 0x7f)) {
    return s & @as(c_int, 0x7f);
}
pub inline fn WSTOPSIG(s: anytype) @TypeOf(WEXITSTATUS(s)) {
    return WEXITSTATUS(s);
}
pub inline fn WIFEXITED(s: anytype) @TypeOf(!(WTERMSIG(s) != 0)) {
    return !(WTERMSIG(s) != 0);
}
pub inline fn WIFSTOPPED(s: anytype) @TypeOf(@import("std").zig.c_translation.cast(c_short, ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) * @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x10001, .hexadecimal)) >> @as(c_int, 8)) > @as(c_int, 0x7f00)) {
    return @import("std").zig.c_translation.cast(c_short, ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) * @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x10001, .hexadecimal)) >> @as(c_int, 8)) > @as(c_int, 0x7f00);
}
pub inline fn WIFSIGNALED(s: anytype) @TypeOf(((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) - @as(c_uint, 1)) < @as(c_uint, 0xff)) {
    return ((s & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) - @as(c_uint, 1)) < @as(c_uint, 0xff);
}
pub const _ALLOCA_H = "";
pub inline fn WCOREDUMP(s: anytype) @TypeOf(s & @as(c_int, 0x80)) {
    return s & @as(c_int, 0x80);
}
pub inline fn WIFCONTINUED(s: anytype) @TypeOf(s == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) {
    return s == @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
}
pub const Packet2Mode = enum_Packet2Mode;
pub const Packet2Type = enum_Packet2Type;
pub const DmaTagType = enum_DmaTagType;
pub const UnpackMode = enum_UnpackMode;
pub const VIFOpcode = enum_VIFOpcode;
pub const _sif_regs = enum__sif_regs;
pub const t_SifDmaTransfer = struct_t_SifDmaTransfer;
pub const t_ee_sema = struct_t_ee_sema;
pub const t_ee_thread = struct_t_ee_thread;
pub const t_ee_thread_status = struct_t_ee_thread_status;
pub const CPU_CONFIG = enum_CPU_CONFIG;
pub const _IO_FILE = struct__IO_FILE;
pub const _G_fpos64_t = union__G_fpos64_t;
