const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const immutable = 110;
    // immutable += 1; // compile error

    print("const: {d}\n", .{immutable});

    var variable: i8 = 50; // must be always mutated or error
    print("{d}\n", .{variable});

    variable += 1;
    print("{d}\n", .{variable});
}
