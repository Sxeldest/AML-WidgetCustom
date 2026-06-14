; =========================================================
; Game Engine Function: _Z19RwRasterPushContextP8RwRaster
; Address            : 0x1DA898 - 0x1DA8D8
; =========================================================

1DA898:  PUSH            {R4,R5,R7,LR}
1DA89A:  ADD             R7, SP, #8
1DA89C:  MOV             R4, R0
1DA89E:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA8A8)
1DA8A0:  MOV             R1, R4
1DA8A2:  MOVS            R2, #0
1DA8A4:  ADD             R0, PC; RwEngineInstance_ptr
1DA8A6:  MOVS            R5, #0
1DA8A8:  LDR             R0, [R0]; RwEngineInstance
1DA8AA:  LDR             R0, [R0]
1DA8AC:  LDR             R3, [R0,#0x74]
1DA8AE:  MOVS            R0, #0
1DA8B0:  BLX             R3
1DA8B2:  CBZ             R0, loc_1DA8D4
1DA8B4:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA8BE)
1DA8B6:  MOV             R5, R4
1DA8B8:  LDR             R1, =(dword_6BCF30 - 0x1DA8C0)
1DA8BA:  ADD             R0, PC; RwEngineInstance_ptr
1DA8BC:  ADD             R1, PC; dword_6BCF30
1DA8BE:  LDR             R0, [R0]; RwEngineInstance
1DA8C0:  LDR             R1, [R1]
1DA8C2:  LDR             R2, [R0]
1DA8C4:  ADD             R2, R1
1DA8C6:  LDR             R3, [R2,#0x28]
1DA8C8:  ADDS            R3, #1
1DA8CA:  STR             R3, [R2,#0x28]
1DA8CC:  LDR             R0, [R0]
1DA8CE:  ADD             R0, R1
1DA8D0:  STR.W           R4, [R0,R3,LSL#2]
1DA8D4:  MOV             R0, R5
1DA8D6:  POP             {R4,R5,R7,PC}
