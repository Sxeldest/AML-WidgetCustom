; =========================================================
; Game Engine Function: _Z14OS_ThreadClosePv
; Address            : 0x26C1B4 - 0x26C1CC
; =========================================================

26C1B4:  PUSH            {R4,R6,R7,LR}
26C1B6:  ADD             R7, SP, #8
26C1B8:  MOV             R4, R0
26C1BA:  ADD.W           R0, R4, #0x28 ; '('; attr
26C1BE:  BLX             pthread_attr_destroy
26C1C2:  MOV             R0, R4; p
26C1C4:  POP.W           {R4,R6,R7,LR}
26C1C8:  B.W             j_free
