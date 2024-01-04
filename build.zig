const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    b.default_step.dependOn(b.dependency("transitive_lib_headers_bug", .{
        .target = target,
        .optimize = optimize,
    }).builder.default_step);
}
