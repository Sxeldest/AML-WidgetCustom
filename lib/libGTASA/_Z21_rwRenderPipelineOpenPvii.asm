; =========================================================
; Game Engine Function: _Z21_rwRenderPipelineOpenPvii
; Address            : 0x1DD928 - 0x1DD944
; =========================================================

1DD928:  PUSH            {R4,R6,R7,LR}
1DD92A:  ADD             R7, SP, #8
1DD92C:  MOV             R4, R0
1DD92E:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DD934)
1DD930:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DD932:  LDR             R0, [R0]; _rxPipelineGlobalsOffset
1DD934:  STR             R1, [R0]
1DD936:  BLX             j__Z15_rxPipelineOpenv; _rxPipelineOpen(void)
1DD93A:  CMP             R0, #0
1DD93C:  IT EQ
1DD93E:  MOVEQ           R4, R0
1DD940:  MOV             R0, R4
1DD942:  POP             {R4,R6,R7,PC}
