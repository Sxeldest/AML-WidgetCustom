; =========================================================
; Game Engine Function: _ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag
; Address            : 0x36DA2E - 0x36DA46
; =========================================================

36DA2E:  PUSH            {R4,R6,R7,LR}
36DA30:  ADD             R7, SP, #8
36DA32:  MOV             R4, R0
36DA34:  MOV             R0, R1
36DA36:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36DA3A:  LDR.W           R0, [R4,#0x88]
36DA3E:  SUBS            R0, #1
36DA40:  STR.W           R0, [R4,#0x88]
36DA44:  POP             {R4,R6,R7,PC}
