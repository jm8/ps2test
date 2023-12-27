const std = @import("std");
const Allocator = std.mem.Allocator;
const c = @import("headers.zig");

const numpads: u8 = 2;
var pads: [numpads]Pad = undefined;

const PadState = struct {
    pad_buffer: [256]u8 align(64),
    pad_button_status: c.padButtonStatus,
};

const Pad = struct {
    state: *PadState,
    allocator: Allocator,
    port: i32,
    slot: i32,
    connected: bool,

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
            .connected = false,
            .allocator = allocator,
            .port = port,
            .slot = slot,
        };
    }

    pub fn update(self: *Pad) void {
        // wait for ready
        var state = c.padGetState(self.port, self.slot);
        var tries: i32 = 10;
        while ((state != c.PAD_STATE_STABLE) and (state != c.PAD_STATE_FINDCTP1)) {
            state = c.padGetState(self.port, self.slot);
            tries -= 1;
            if (tries <= 0) {
                self.connected = false;
                return;
            }
        }

        if (c.padRead(self.port, self.slot, &self.state.pad_button_status) == 0) {
            self.connected = false;
            return;
        }
        self.connected = true;
        std.debug.print("Buttons: {}\n", .{self.state.pad_button_status.btns});
    }

    pub fn isPressed(self: *const Pad, button: Button) bool {
        if (!self.connected) {
            return false;
        }
        return (self.state.pad_button_status.btns & @intFromEnum(button)) != 0;
    }

    pub fn deinit(self: *const Pad) void {
        c.padPortClose(self.port, self.slot);
        self.allocator.destroy(self.state);
    }
};

pub fn init(allocator: Allocator) !void {
    if (c.SifLoadModule("rom0:SIO2MAN", 0, 0) == 0) {
        return error.PadInitError;
    }
    if (c.SifLoadModule("rom0:PADMAN", 0, 0) == 0) {
        return error.PadInitError;
    }
    if (c.padInit(0) == 0) {
        return error.PadInitError;
    }

    for (0..numpads) |i| {
        pads[i] = try Pad.init(allocator, @intCast(i), @intCast(i));
    }
}

pub fn update() void {
    for (0..numpads) |i| {
        pads[i].update();
    }
}

pub const Button = enum(i32) {
    Left = c.PAD_LEFT,
    Down = c.PAD_DOWN,
    Right = c.PAD_RIGHT,
    Up = c.PAD_UP,
    Start = c.PAD_START,
    R3 = c.PAD_R3,
    L3 = c.PAD_L3,
    Select = c.PAD_SELECT,
    Square = c.PAD_SQUARE,
    Cross = c.PAD_CROSS,
    Circle = c.PAD_CIRCLE,
    Triangle = c.PAD_TRIANGLE,
    R1 = c.PAD_R1,
    L1 = c.PAD_L1,
    R2 = c.PAD_R2,
    L2 = c.PAD_L2,
};

pub fn isPressed(port: i32, button: Button) bool {
    std.debug.assert(port < numpads);
    return pads[@intCast(port)].isPressed(button);
}
