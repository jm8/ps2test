const std = @import("std");

pub const PS2BuildInfo = struct {
    //SDK Path
    path_to_sdk: []const u8,
    src_file: []const u8,
};

pub fn build(b: *std.Build) void {
    const build_info = PS2BuildInfo{
        .path_to_sdk = "/usr/local/ps2dev/ps2sdk",
        .src_file = "src/main.zig",
    };

    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const cross_target = std.zig.CrossTarget{
        .cpu_arch = .mipsel,
        .os_tag = .freestanding,
        .cpu_model = .{ .explicit = &std.Target.mips.cpu.mips3 },
    };
    const target = b.standardTargetOptions(.{
        .default_target = cross_target,
    });

    // Standard optimization options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall. Here we do not
    // set a preferred release mode, allowing the user to decide how to optimize.
    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "main",
        .root_source_file = .{ .path = build_info.src_file },
        .target = target,
        .optimize = optimize,
    });

    exe.setLinkerScriptPath(.{ .cwd_relative = b.pathJoin(&[_][]const u8{ build_info.path_to_sdk, "/ee/startup/linkfile" }) });

    const install_exe = b.addInstallArtifact(exe, .{});

    b.default_step.dependOn(&install_exe.step);
}
