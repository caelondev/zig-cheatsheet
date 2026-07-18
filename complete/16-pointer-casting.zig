const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var bytes align(@alignOf(u32)) = [_]u8{ 0x12, 0x12, 0x12, 0x12 };
    const u32_ptr: *const u32 = @ptrCast(&bytes);

    print("u32_ptr:{d}\n", .{u32_ptr.*});

    // Try to avoid @ptrCast if possible
    //
    // > Generally, other kinds of type
    // > conversions are preferable to @ptrCast
    // > if possible.
    // -- Zig docs

    // []T -> T
    const u32_slice_ptr: u32 = @as(u32, @bitCast(bytes));
    print("u32_slice_ptr:{d}\n", .{u32_slice_ptr});
}
