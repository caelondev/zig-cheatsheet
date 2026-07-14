const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    // [N:x]T where N is the array length and
    // x is the sentinel value
    const sentinel_arr = [_:0]u8{ 'H', 'e', 'l', 'l', 'o' }; // suffixed with whatever sentinel is. "Hello\0"
    print("{s}\n", .{sentinel_arr});
}
