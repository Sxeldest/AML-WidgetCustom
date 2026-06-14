; =========================================================
; Game Engine Function: _Z13RQ_CheckErrorPKcS0_i
; Address            : 0x1CC1FC - 0x1CC20E
; =========================================================

1CC1FC:  PUSH            {R7,LR}
1CC1FE:  MOV             R7, SP
1CC200:  BLX             glGetError
1CC204:  CMP             R0, #0
1CC206:  IT EQ
1CC208:  POPEQ           {R7,PC}
1CC20A:  BLX             j__Z13OS_DebugBreakv; OS_DebugBreak(void)
