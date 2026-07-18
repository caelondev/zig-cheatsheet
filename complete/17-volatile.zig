//! Volatile - Loads and stores are assumed
//! to not have side effects.
//! If a given load or store should
//! have side effects, such as
//! Memory Mapped Input/Output (MMIO), use volatile

const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    const mmio_ptr: *volatile u8 = @ptrFromInt(0x12345678);
    _ = mmio_ptr;
}
