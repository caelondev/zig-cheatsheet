//! Vectors - basically arrays, but faster for math operations.
//! these are mostly used for math shenanigans, obv.
//! not recommended for general use. if u use it
//! as an array, you're basically wasting its benefits.
//! just use an array in that case.

const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const a = @Vector(5, i32){ 1, 2, 3, 4, 5 };
    const b = @Vector(5, i32){ 6, 7, 8, 9, 0 };

    // SIMD arithmetic, no hidden control flow
    const c = a + b;
    print("c:{}\n", .{c});

    // also can be coerced to an array and vice versa
    const arr1 = [_]u8{ 1, 2, 3, 4, 5 };
    const vec: @Vector(arr1.len, u8) = arr1;
    const arr2: [5]u8 = vec;
    const is_eql = comptime std.mem.eql(u8, &arr1, &arr2);

    if (is_eql) {
        print("they're equal :3\n", .{});
    }

    // can also use slices with comptime length
    const vec2: @Vector(2, u8) = arr1[1..3].*;

    print("vec2:{}\n", .{vec2});
}
