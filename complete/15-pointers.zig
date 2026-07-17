const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    // Three types of pointers
    // *T - Points to a single value
    // [*]T - Points to an array with unknown size
    // *[N]T - Points to an array with known size
    //
    // Can be dereferenced with the `.*` operator

    var msg = [_]u8{ 'H', 'E', 'L', 'L', 'O', '?' };
    const m_ptr = &msg;
    m_ptr.*[5] = '!';

    print("m_ptr:{s}\n", .{m_ptr.*});

    var x: u8 = 10;

    mutate(&x);
    print("x:{d}\n", .{x});

    const arr_to_unknown_len: [*]u8 = m_ptr.ptr;
    print("@TypeOf arr_to_unknown_len:{any}\n", .{@TypeOf(arr_to_unknown_len)});

    // Pointers work at compile-time too
    // as long as the code does not depend on
    // an undefined memory layout
    comptime {
        var a: u8 = 67;
        const ptr = &a;
        ptr.* += 1;
        a += 1;

        @compileLog(a);
    }
}

fn mutate(x: *u8) void {
    x.* += 1;
}
