const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var x: i8 = undefined;
    var y: i8 = undefined;
    var z: i8 = undefined;

    const tuple = .{ 1, 2, 3 };

    x, y, z = tuple;

    print("tuple: x:{} y:{} z:{}", .{ x, y, z });
}
