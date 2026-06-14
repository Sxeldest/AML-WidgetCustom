; =========================================================
; Game Engine Function: _Z13RwRGBAToPixelP6RwRGBAi
; Address            : 0x1DA098 - 0x1DA0B6
; =========================================================

1DA098:  PUSH            {R7,LR}
1DA09A:  MOV             R7, SP
1DA09C:  SUB             SP, SP, #8
1DA09E:  MOV             R2, R1
1DA0A0:  MOV             R1, R0
1DA0A2:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA0A8)
1DA0A4:  ADD             R0, PC; RwEngineInstance_ptr
1DA0A6:  LDR             R0, [R0]; RwEngineInstance
1DA0A8:  LDR             R0, [R0]
1DA0AA:  LDR             R3, [R0,#0x50]
1DA0AC:  ADD             R0, SP, #0x10+var_C
1DA0AE:  BLX             R3
1DA0B0:  LDR             R0, [SP,#0x10+var_C]
1DA0B2:  ADD             SP, SP, #8
1DA0B4:  POP             {R7,PC}
