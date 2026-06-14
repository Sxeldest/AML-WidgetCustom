; =========================================================
; Game Engine Function: _Z14_rwRasterClosePvii
; Address            : 0x1DAB24 - 0x1DAB64
; =========================================================

1DAB24:  PUSH            {R4,R6,R7,LR}
1DAB26:  ADD             R7, SP, #8
1DAB28:  MOV             R4, R0
1DAB2A:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAB32)
1DAB2C:  LDR             R1, =(dword_6BCF30 - 0x1DAB34)
1DAB2E:  ADD             R0, PC; RwEngineInstance_ptr
1DAB30:  ADD             R1, PC; dword_6BCF30
1DAB32:  LDR             R0, [R0]; RwEngineInstance
1DAB34:  LDR             R1, [R1]
1DAB36:  LDR             R0, [R0]
1DAB38:  ADD             R0, R1
1DAB3A:  LDR             R0, [R0,#0x60]
1DAB3C:  CBZ             R0, loc_1DAB56
1DAB3E:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DAB42:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAB4A)
1DAB44:  LDR             R1, =(dword_6BCF30 - 0x1DAB4C)
1DAB46:  ADD             R0, PC; RwEngineInstance_ptr
1DAB48:  ADD             R1, PC; dword_6BCF30
1DAB4A:  LDR             R0, [R0]; RwEngineInstance
1DAB4C:  LDR             R1, [R1]
1DAB4E:  LDR             R0, [R0]
1DAB50:  ADD             R0, R1
1DAB52:  MOVS            R1, #0
1DAB54:  STR             R1, [R0,#0x60]
1DAB56:  LDR             R0, =(dword_6BCF34 - 0x1DAB5C)
1DAB58:  ADD             R0, PC; dword_6BCF34
1DAB5A:  LDR             R1, [R0]
1DAB5C:  SUBS            R1, #1
1DAB5E:  STR             R1, [R0]
1DAB60:  MOV             R0, R4
1DAB62:  POP             {R4,R6,R7,PC}
