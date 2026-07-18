const std = @import("std");
const print = std.debug.print;

// [*:x]T type is similar to [*]T type
// but suffixed with sentinel x. which in
// this case is the null terminator
pub extern "c" fn printf(format: [*:0]const u8, ...) c_int;

pub fn main() anyerror!void {
    _ = printf("Hello, world!\n"); // OK

    // ERROR ---
    // const msg = "Hello, world!\n";
    // const non_null_terminated_msg: [msg.len]u8 = msg.*;
    // _ = printf(&non_null_terminated_msg);
}
