const c = @import("headers.zig");

export fn main() c_int {
    _ = c.printf("Hello, world!\n");
    _ = c.SleepThread();
    return 0;
}
