const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    // Operator table
    //
    // Addition               - a + b     a += b
    // Wrapping Addition       - a +% b    a +%= b
    // Saturating Addition     - a +| b    a +|= b
    // Subtraction             - a - b     a -= b
    // Wrapping Subtraction    - a -% b    a -%= b
    // Saturating Subtraction  - a -| b    a -|= b
    // Negation                - -a
    // Wrapping Negation       - -%a
    // Multiplication          - a * b     a *= b
    // Wrapping Multiplication - a *% b    a *%= b
    // Saturating Multiplication - a *| b  a *|= b
    // Division                - a / b     a /= b
    // Remainder Division      - a % b     a %= b
    // Bit Shift Left          - a << b    a <<= b
    // Saturating Bit Shift Left - a <<| b a <<|= b
    // Bit Shift Right         - a >> b    a >>= b
    // Bitwise And             - a & b     a &= b
    // Bitwise Or              - a | b     a |= b
    // Bitwise Xor             - a ^ b     a ^= b
    // Bitwise Not             - ~a
    // Defaulting Optional Unwrap - a orelse b
    // Optional Unwrap         - a.?               (equiv. to a orelse unreachable)
    // Defaulting Error Unwrap - a catch b   a catch |err| b
    // Logical And             - a and b
    // Logical Or              - a or b
    // Boolean Not             - !a
    // Equality                - a == b
    // Null Check              - a == null
    // Inequality              - a != b
    // Non-Null Check          - a != null
    // Greater Than            - a > b
    // Greater or Equal        - a >= b
    // Less Than               - a < b
    // Lesser or Equal         - a <= b
    // Array Concatenation     - a ++ b       (comptime-known lengths only)
    // Array Multiplication    - a ** b       (comptime-known length only)
    // Pointer Dereference     - a.*
    // Address Of              - &a
    // Error Set Merge         - a || b
    //
    // Precedence (highest to lowest):
    //   x() x[] x.y x.* x.?
    //   a!b
    //   x{}
    //   !x -x -%x ~x &x ?x
    //   * / % ** *% *| /|
    //   + - ++ +% -% +| -|
    //   << >> <<|
    //   & ^ | orelse catch
    //   == != < > <= >=
    //   and
    //   or
    //   = *= *%= *|= /= %= += +%= +|= -= -%= -|= <<= <<|= >>= &= ^= |=
}
