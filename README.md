# Potential Overflow in Assembly Addition

This repository demonstrates a potential overflow bug in a simple assembly addition operation. The bug arises when the sum of two registers exceeds the maximum capacity of the destination register, leading to unexpected behavior.

## Bug Description

The `add ax, cx` instruction adds the contents of register `cx` to register `ax`. If the sum exceeds the maximum value that `ax` can hold, an overflow occurs. The subsequent `mov dx, ax` instruction then copies the potentially incorrect, overflowed value into `dx`. This can lead to incorrect calculations and program crashes.

## Bug Solution

The solution involves using an appropriate instruction that handles overflow conditions to safely add the values. For example, a check can be included to determine whether an overflow is going to occur, or the use of larger registers can be employed.