const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const nums = [_]i8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const chars = [5]u8{ 'H', 'E', 'L', 'L', 'O' };

    print("nums:{any} chars:{any}\n", .{ nums, chars });
}
