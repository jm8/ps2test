const std = @import("std");
const c = @import("headers.zig");
const Allocator = std.mem.Allocator;
const assert = std.debug.assert;

// copy+paste from https://ziglang.org/documentation/master/std/src/std/heap.zig.html#L178

/// Calls memalign
pub const memalign_allocator = Allocator{
    .ptr = undefined,
    .vtable = &ps2_allocator_vtable,
};
const ps2_allocator_vtable = Allocator.VTable{
    .alloc = memalignAlloc,
    .resize = memalignResize,
    .free = memalignFree,
};

fn memalignAlloc(
    _: *anyopaque,
    len: usize,
    log2_ptr_align: u8,
    ret_addr: usize,
) ?[*]u8 {
    _ = ret_addr;
    return @as(?[*]u8, @ptrCast(c.memalign((@as(usize, 1) << @intCast(log2_ptr_align)), len)));
}

fn memalignResize(
    _: *anyopaque,
    buf: []u8,
    log2_old_align: u8,
    new_len: usize,
    ret_addr: usize,
) bool {
    _ = log2_old_align;
    _ = ret_addr;
    return new_len <= buf.len;
}

fn memalignFree(
    _: *anyopaque,
    buf: []u8,
    log2_old_align: u8,
    ret_addr: usize,
) void {
    _ = log2_old_align;
    _ = ret_addr;
    c.free(buf.ptr);
}
