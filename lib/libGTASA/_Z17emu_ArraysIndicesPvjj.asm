; =========================================================
; Game Engine Function: _Z17emu_ArraysIndicesPvjj
; Address            : 0x1BCDFC - 0x1BCE2E
; =========================================================

1BCDFC:  LDR             R3, =(staticState_ptr - 0x1BCE02)
1BCDFE:  ADD             R3, PC; staticState_ptr
1BCE00:  LDR             R3, [R3]; staticState
1BCE02:  STM             R3!, {R0-R2}
1BCE04:  MOVW            R0, #0x1401
1BCE08:  CMP             R1, R0
1BCE0A:  BEQ             loc_1BCE24
1BCE0C:  MOVW            R0, #0x1405
1BCE10:  CMP             R1, R0
1BCE12:  BEQ             loc_1BCE22
1BCE14:  MOVW            R0, #0x1403
1BCE18:  CMP             R1, R0
1BCE1A:  IT NE
1BCE1C:  BXNE            LR
1BCE1E:  LSLS            R2, R2, #1
1BCE20:  B               loc_1BCE24
1BCE22:  LSLS            R2, R2, #2
1BCE24:  LDR             R0, =(staticState_ptr - 0x1BCE2A)
1BCE26:  ADD             R0, PC; staticState_ptr
1BCE28:  LDR             R0, [R0]; staticState
1BCE2A:  STR             R2, [R0,#(dword_6B40B0 - 0x6B40A4)]
1BCE2C:  BX              LR
