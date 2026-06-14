; =========================================================
; Game Engine Function: _Z23RxPipelineNodeFindInputP14RxPipelineNode
; Address            : 0x1DEE5A - 0x1DEE6A
; =========================================================

1DEE5A:  CMP             R0, #0
1DEE5C:  ITTT NE
1DEE5E:  LDRNE           R1, [R0]
1DEE60:  CMPNE           R1, #0
1DEE62:  BXNE            LR
1DEE64:  MOV.W           R0, #0
1DEE68:  BX              LR
