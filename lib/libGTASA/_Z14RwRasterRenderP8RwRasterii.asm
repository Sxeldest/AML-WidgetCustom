; =========================================================
; Game Engine Function: _Z14RwRasterRenderP8RwRasterii
; Address            : 0x1DA800 - 0x1DA826
; =========================================================

1DA800:  PUSH            {R4,R6,R7,LR}
1DA802:  ADD             R7, SP, #8
1DA804:  SUB             SP, SP, #0x10
1DA806:  MOV             R4, R0
1DA808:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA80E)
1DA80A:  ADD             R0, PC; RwEngineInstance_ptr
1DA80C:  LDR             R0, [R0]; RwEngineInstance
1DA80E:  LDR             R0, [R0]
1DA810:  STRD.W          R1, R2, [SP,#0x18+var_18]
1DA814:  MOV             R1, SP
1DA816:  MOVS            R2, #0
1DA818:  LDR.W           R3, [R0,#0x8C]
1DA81C:  MOV             R0, R4
1DA81E:  BLX             R3
1DA820:  MOV             R0, R4
1DA822:  ADD             SP, SP, #0x10
1DA824:  POP             {R4,R6,R7,PC}
