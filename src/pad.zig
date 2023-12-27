const std = @import("std");
const Allocator = std.mem.Allocator;
const c = @import("headers.zig");

const PadState = struct {
    pad_buffer: [256]u8 align(64),
    pad_button_status: c.padButtonStatus,
};

pub const Pad = struct {
    state: *PadState,
    allocator: Allocator,
    port: i32,
    slot: i32,

    pub fn init(allocator: Allocator, port: i32, slot: i32) !Pad {
        const state = try allocator.create(PadState);
        if (c.padPortOpen(port, slot, &state.pad_buffer) == 0) {
            return error.PadOpenError;
        }
        // if (c.padSetMainMode(port, slot, c.PAD_MMODE_DUALSHOCK, 3) == 0) {
        //     return error.PadSetMainMode;
        // }
        return .{
            .state = state,
            .allocator = allocator,
            .port = port,
            .slot = slot,
        };
    }

    pub fn update(self: *const Pad) !void {
        // wait for ready
        var state = c.padGetState(self.port, self.slot);
        var tries: i32 = 10;
        while ((state != c.PAD_STATE_STABLE) and (state != c.PAD_STATE_FINDCTP1)) {
            state = c.padGetState(self.port, self.slot);
            tries -= 1;
            if (tries <= 0) {
                return error.PadWaitError;
            }
        }

        if (c.padRead(self.port, self.slot, &self.state.pad_button_status) == 0) {
            return error.PadReadError;
        }
        std.debug.print("Buttons: {}\n", .{self.state.pad_button_status.btns});
    }

    pub fn deinit(self: *const Pad) void {
        c.padPortClose(self.port, self.slot);
        self.allocator.destroy(self.state);
    }
};
