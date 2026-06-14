; =========================================================
; Game Engine Function: _Z18RwRGBASetFromPixelP6RwRGBAji
; Address            : 0x1DA0BC - 0x1DA0DC
; =========================================================

1DA0BC:  PUSH            {R4,R6,R7,LR}
1DA0BE:  ADD             R7, SP, #8
1DA0C0:  SUB             SP, SP, #8
1DA0C2:  MOV             R4, R0
1DA0C4:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA0CE)
1DA0C6:  STR             R1, [SP,#0x10+var_C]
1DA0C8:  ADD             R1, SP, #0x10+var_C
1DA0CA:  ADD             R0, PC; RwEngineInstance_ptr
1DA0CC:  LDR             R0, [R0]; RwEngineInstance
1DA0CE:  LDR             R0, [R0]
1DA0D0:  LDR             R3, [R0,#0x54]
1DA0D2:  MOV             R0, R4
1DA0D4:  BLX             R3
1DA0D6:  MOV             R0, R4
1DA0D8:  ADD             SP, SP, #8
1DA0DA:  POP             {R4,R6,R7,PC}
