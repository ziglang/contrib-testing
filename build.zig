const std = @import("std");

pub fn build(b: *std.Build) void {
    add(b, "transitive_lib_headers_bug");
    add(b, "groovebasin");
}

fn add(b: *std.Build, name: []const u8) void {
    b.default_step.dependOn(b.dependency(name, .{}).builder.default_step);
}
