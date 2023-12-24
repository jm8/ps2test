const c = @import("headers.zig");

const PixelStorageMethod = enum(c_int) {
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

const FrameBufferOptions = struct {
    width: i32,
    height: i32,
    mask: i32,
    psm: PixelStorageMethod,
};

const FrameBuffer = struct {
    width: i32,
    height: i32,
    mask: i32,
    psm: PixelStorageMethod,
    address: i32,

    fn init(options: FrameBufferOptions) FrameBuffer {
        const address = c.graph_vram_allocate(options.width, options.height, @intFromEnum(options.psm), c.GRAPH_ALIGN_PAGE);

        return .{
            .width = options.width,
            .height = options.height,
            .mask = options.mask,
            .psm = options.psm,
            .address = address,
        };
    }
};

fn game() !void {
    const frame_buffer = FrameBuffer.init(.{
        .width = 640,
        .height = 512,
        .mask = 0,
        .psm = .PSM_32,
    });
    _ = c.graph_initialize(frame_buffer.address, frame_buffer.width, frame_buffer.height, @intFromEnum(frame_buffer.psm), 0, 0);
    _ = c.graph_set_bgcolor(1, 0, 0);
}

export fn main() c_int {
    game() catch {};

    _ = c.SleepThread();
    return 0;
}
