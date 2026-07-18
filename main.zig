//! Alignment - Each type has an alignment
//! - a number of bytes such that,
//! when a value of the type is loaded from
//! or stored to memory, the memory address
//! must be evenly divisible by this number.

const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const x: i32 = 1234;
    const does_align = @intFromPtr(&x) % @alignOf(i32) == 0;

    if (does_align) {
        print("it does align!\n", .{});
    }
}
