; =========================================================
; Game Engine Function: _Z31RxPipelineNodeFindOutputByIndexP14RxPipelineNodej
; Address            : 0x1DEE40 - 0x1DEE5A
; =========================================================

1DEE40:  CBZ             R0, loc_1DEE4E
1DEE42:  LDR             R2, [R0]
1DEE44:  CMP             R2, #0
1DEE46:  ITT NE
1DEE48:  LDRNE           R2, [R0,#4]
1DEE4A:  CMPNE           R2, R1
1DEE4C:  BHI             loc_1DEE52
1DEE4E:  MOVS            R0, #0
1DEE50:  BX              LR
1DEE52:  LDR             R0, [R0,#8]
1DEE54:  ADD.W           R0, R0, R1,LSL#2
1DEE58:  BX              LR
