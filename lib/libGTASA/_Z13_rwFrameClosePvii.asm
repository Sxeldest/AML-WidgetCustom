; =========================================================
; Game Engine Function: _Z13_rwFrameClosePvii
; Address            : 0x1D7EF8 - 0x1D7F34
; =========================================================

1D7EF8:  PUSH            {R4,R6,R7,LR}
1D7EFA:  ADD             R7, SP, #8
1D7EFC:  MOV             R4, R0
1D7EFE:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7F06)
1D7F00:  LDR             R1, =(dword_6BCEB4 - 0x1D7F08)
1D7F02:  ADD             R0, PC; RwEngineInstance_ptr
1D7F04:  ADD             R1, PC; dword_6BCEB4
1D7F06:  LDR             R0, [R0]; RwEngineInstance
1D7F08:  LDR             R1, [R1]
1D7F0A:  LDR             R0, [R0]
1D7F0C:  LDR             R0, [R0,R1]
1D7F0E:  CBZ             R0, loc_1D7F26
1D7F10:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1D7F14:  LDR             R0, =(RwEngineInstance_ptr - 0x1D7F1E)
1D7F16:  MOVS            R2, #0
1D7F18:  LDR             R1, =(dword_6BCEB4 - 0x1D7F20)
1D7F1A:  ADD             R0, PC; RwEngineInstance_ptr
1D7F1C:  ADD             R1, PC; dword_6BCEB4
1D7F1E:  LDR             R0, [R0]; RwEngineInstance
1D7F20:  LDR             R1, [R1]
1D7F22:  LDR             R0, [R0]
1D7F24:  STR             R2, [R0,R1]
1D7F26:  LDR             R0, =(dword_6BCEB8 - 0x1D7F2C)
1D7F28:  ADD             R0, PC; dword_6BCEB8
1D7F2A:  LDR             R1, [R0]
1D7F2C:  SUBS            R1, #1
1D7F2E:  STR             R1, [R0]
1D7F30:  MOV             R0, R4
1D7F32:  POP             {R4,R6,R7,PC}
