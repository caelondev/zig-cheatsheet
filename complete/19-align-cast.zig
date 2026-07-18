const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var arr align(4) = [_]u32{ 0x11111111, 0x11111111 };
    const bytes = std.mem.sliceAsBytes(arr[0..]);
    print("foo:{}\n", .{foo(bytes)});
}

fn foo(bytes: []u8) u32 {
    const slice4 = bytes[0..4];
    // @alignCast() Asserts that the pointer is aligned,
    // basically bypassing comp check when the compiler
    // cannot prove that the ptr is aligned
    const int_slice = std.mem.bytesAsSlice(u32, @as([]align(4) u8, @alignCast(slice4)));
    return int_slice[0];
}
