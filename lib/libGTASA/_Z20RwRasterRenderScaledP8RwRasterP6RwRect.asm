; =========================================================
; Game Engine Function: _Z20RwRasterRenderScaledP8RwRasterP6RwRect
; Address            : 0x1DA70C - 0x1DA728
; =========================================================

1DA70C:  PUSH            {R4,R6,R7,LR}
1DA70E:  ADD             R7, SP, #8
1DA710:  MOV             R4, R0
1DA712:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA71A)
1DA714:  MOVS            R2, #0
1DA716:  ADD             R0, PC; RwEngineInstance_ptr
1DA718:  LDR             R0, [R0]; RwEngineInstance
1DA71A:  LDR             R0, [R0]
1DA71C:  LDR.W           R3, [R0,#0x90]
1DA720:  MOV             R0, R4
1DA722:  BLX             R3
1DA724:  MOV             R0, R4
1DA726:  POP             {R4,R6,R7,PC}
