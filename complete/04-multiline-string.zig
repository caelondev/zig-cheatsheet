const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const multiline =
        \\A multiline
        \\string
        \\literal
    ;
    print("{s}\n", .{multiline});
}
