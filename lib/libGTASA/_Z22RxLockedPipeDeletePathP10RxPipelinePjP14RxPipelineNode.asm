; =========================================================
; Game Engine Function: _Z22RxLockedPipeDeletePathP10RxPipelinePjP14RxPipelineNode
; Address            : 0x1DFF08 - 0x1DFF44
; =========================================================

1DFF08:  MOV             R12, R0
1DFF0A:  CMP.W           R12, #0
1DFF0E:  MOV.W           R0, #0
1DFF12:  IT NE
1DFF14:  CMPNE           R2, #0
1DFF16:  BEQ             locret_1DFF42
1DFF18:  CMP             R1, #0
1DFF1A:  ITT NE
1DFF1C:  LDRNE.W         R3, [R12]
1DFF20:  CMPNE           R3, #0
1DFF22:  BEQ             locret_1DFF42
1DFF24:  LDR             R0, [R1]
1DFF26:  LDR.W           R3, [R12,#8]
1DFF2A:  ADD.W           R0, R0, R0,LSL#2
1DFF2E:  ADD.W           R0, R3, R0,LSL#3
1DFF32:  CMP             R0, R2
1DFF34:  ITT NE
1DFF36:  MOVNE           R0, #0
1DFF38:  BXNE            LR
1DFF3A:  MOV.W           R0, #0xFFFFFFFF
1DFF3E:  STR             R0, [R1]
1DFF40:  MOV             R0, R12
1DFF42:  BX              LR
