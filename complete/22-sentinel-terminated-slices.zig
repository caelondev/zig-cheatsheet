//! Sentinel-Terminated Slices - The syntax [:x]T is a
//! slice which has a runtime-known length
//! and also guarantees a sentinel value at
//! the element indexed by the length.

const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    var str: [:0]const u8 = "hello";
    print("str_len:{d}\n", .{str.len});
    print("str_len terminator:\\{d}\n", .{str[str.len]});

    var runtime_len: usize = 5;
    _ = &runtime_len;
    const slice = str[0..runtime_len :0];
    print("slice:{s}\n", .{slice});
    print("slice len:{d}\n", .{slice.len});
}
