//! Top-level doc
//! documents the entire module

const std = @import("std");

/// Doc comment
pub fn main() void {
    // Comment
    std.debug.print("Hello, {s}!\n", .{"World"});
}
