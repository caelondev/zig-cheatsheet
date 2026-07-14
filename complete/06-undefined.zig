const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    // undefined is basjcally a way of
    // explicitly asking the compile
    // for an uninitialized var
    var x: i8 = undefined;
    x = 10;
    print("{d}\n", .{x});
}
