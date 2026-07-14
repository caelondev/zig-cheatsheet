const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const decimal_int = 10;
    const hex_int = 0xff;
    const octal_int = 0o755;
    const binary_int = 0b10011001;

    _ = .{ decimal_int, hex_int, octal_int, binary_int };
}
