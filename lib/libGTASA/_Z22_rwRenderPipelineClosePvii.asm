; =========================================================
; Game Engine Function: _Z22_rwRenderPipelineClosePvii
; Address            : 0x1DD948 - 0x1DD956
; =========================================================

1DD948:  PUSH            {R4,R6,R7,LR}
1DD94A:  ADD             R7, SP, #8
1DD94C:  MOV             R4, R0
1DD94E:  BLX             j__Z16_rxPipelineClosev; _rxPipelineClose(void)
1DD952:  MOV             R0, R4
1DD954:  POP             {R4,R6,R7,PC}
