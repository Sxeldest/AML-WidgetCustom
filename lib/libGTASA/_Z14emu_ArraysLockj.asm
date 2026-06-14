; =========================================================
; Game Engine Function: _Z14emu_ArraysLockj
; Address            : 0x1BCEE4 - 0x1BCEFC
; =========================================================

1BCEE4:  PUSH            {R4,R6,R7,LR}
1BCEE6:  ADD             R7, SP, #8
1BCEE8:  MOV             R1, R0; void *
1BCEEA:  LDR             R0, =(staticState_ptr - 0x1BCEF2)
1BCEEC:  MOVS            R2, #0xC0; size_t
1BCEEE:  ADD             R0, PC; staticState_ptr
1BCEF0:  LDR             R4, [R0]; staticState
1BCEF2:  MOV             R0, R4; void *
1BCEF4:  BLX             memcpy_1
1BCEF8:  LDR             R0, [R4,#(dword_6B40B4 - 0x6B40A4)]
1BCEFA:  POP             {R4,R6,R7,PC}
