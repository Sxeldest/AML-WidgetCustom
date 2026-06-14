; =========================================================
; Game Engine Function: _Z17RwRasterClearRectP6RwRecti
; Address            : 0x1DA7E0 - 0x1DA7FA
; =========================================================

1DA7E0:  PUSH            {R7,LR}
1DA7E2:  MOV             R7, SP
1DA7E4:  MOV             R2, R1
1DA7E6:  MOV             R1, R0
1DA7E8:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA7EE)
1DA7EA:  ADD             R0, PC; RwEngineInstance_ptr
1DA7EC:  LDR             R0, [R0]; RwEngineInstance
1DA7EE:  LDR             R0, [R0]
1DA7F0:  LDR             R3, [R0,#0x7C]
1DA7F2:  MOVS            R0, #0
1DA7F4:  BLX             R3
1DA7F6:  MOVS            R0, #1
1DA7F8:  POP             {R7,PC}
