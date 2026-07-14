const std = @import("std");

pub fn main() void {
    // @"" lets you name any identifiers you want,
    // even reserved ones
    const @"const" = "Reserved keyword as an identifier";
    const @"a long name" = "Hello, World!";

    const name = "bob";

    std.debug.print("{s}", .{name});

    std.debug.print("{s} {s}\n", .{ @"const", @"a long name" });
}
