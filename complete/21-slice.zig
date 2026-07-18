const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // Everything is available at compile time
    const array = [_]u32{ 1, 2, 3, 4, 5 };
    var known_at_runtime_zero: usize = 0;
    _ = &known_at_runtime_zero; // force to be a runtime value

    const slice = array[known_at_runtime_zero..array.len];
    _ = slice;

    // you can also instantiate them like this
    const alt_slice: []const i32 = &.{ 1, 2 };
    _ = alt_slice;

    // if you slice with comptime-known start and end positions, the result is
    // a pointer to an array, rather than a slice.
    const array_ptr = array[0..array.len];
    _ = array_ptr;

    // Zig has no concept of strings. String literals are const pointers
    // to null-terminated arrays of u8, and by convention parameters
    // that are "strings" are expected to be UTF-8 encoded slices of u8.
    // Here we coerce *const [5:0]u8 and *const [6:0]u8 to []const u8
    // -- Zig docs
    const hello: []const u8 = "hello";
    const world: []const u8 = "世界";

    var all_together: [100]u8 = undefined;
    // You can use slice syntax with at least one runtime-known index on an
    // array to convert an array into a slice.
    var start: usize = 0;
    _ = &start;
    const all_together_slice = all_together[start..];
    // String concatenation example.
    const hello_world = try std.fmt.bufPrint(all_together_slice, "{s} {s}", .{ hello, world });

    print("hello_world:{s}", .{hello_world});
}
