; =========================================================
; Game Engine Function: _Z20RwRasterGetNumLevelsP8RwRaster
; Address            : 0x1DA980 - 0x1DA9B8
; =========================================================

1DA980:  MOV             R1, R0
1DA982:  LDRSB.W         R0, [R1,#0x22]
1DA986:  CMP.W           R0, #0xFFFFFFFF
1DA98A:  ITT GT
1DA98C:  MOVGT           R0, #1
1DA98E:  BXGT            LR
1DA990:  PUSH            {R7,LR}
1DA992:  MOV             R7, SP
1DA994:  SUB             SP, SP, #8
1DA996:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA99E)
1DA998:  MOVS            R2, #0
1DA99A:  ADD             R0, PC; RwEngineInstance_ptr
1DA99C:  LDR             R0, [R0]; RwEngineInstance
1DA99E:  LDR             R0, [R0]
1DA9A0:  LDR.W           R3, [R0,#0xB8]
1DA9A4:  ADD             R0, SP, #0x10+var_C
1DA9A6:  BLX             R3
1DA9A8:  MOV             R1, R0
1DA9AA:  LDR             R0, [SP,#0x10+var_C]
1DA9AC:  CMP             R1, #0
1DA9AE:  IT EQ
1DA9B0:  MOVEQ.W         R0, #0xFFFFFFFF
1DA9B4:  ADD             SP, SP, #8
1DA9B6:  POP             {R7,PC}
