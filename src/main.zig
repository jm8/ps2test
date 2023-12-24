const c = @cImport({
    @cInclude("stdio.h");
});

export fn main() c_int {
    _ = c.printf("Hello, world!\n");
    return 0;
}
