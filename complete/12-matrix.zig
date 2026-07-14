const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const mat4x5 = [4][5]f32{
        [_]f32{ 1.0, 0.0, 0.0, 0.0, 0.0 },
        [_]f32{ 0.0, 1.0, 0.0, 1.0, 0.0 },
        [_]f32{ 0.0, 0.0, 1.0, 0.0, 0.0 },
        [_]f32{ 0.0, 0.0, 0.0, 1.0, 9.9 },
    };

    print("matrix: {any}\n", .{mat4x5});
}
