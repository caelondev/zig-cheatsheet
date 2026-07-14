const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const floating_point = 123.0E+77;
    const float = 100.0;
    const hex_floating_point = 0x103.70p-5;
    const another_hex_float = 0x103.70;
    const yet_another_hex_float = 0x103.70P-5;

    _ = .{ float, floating_point, another_hex_float, hex_floating_point, yet_another_hex_float };
}
