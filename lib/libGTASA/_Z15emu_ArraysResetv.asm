; =========================================================
; Game Engine Function: _Z15emu_ArraysResetv
; Address            : 0x1BCDE4 - 0x1BCDF6
; =========================================================

1BCDE4:  PUSH            {R7,LR}
1BCDE6:  MOV             R7, SP
1BCDE8:  LDR             R0, =(staticState_ptr - 0x1BCDF0)
1BCDEA:  MOVS            R1, #0xC0
1BCDEC:  ADD             R0, PC; staticState_ptr
1BCDEE:  LDR             R0, [R0]; staticState
1BCDF0:  BLX             j___aeabi_memclr8_0
1BCDF4:  POP             {R7,PC}
