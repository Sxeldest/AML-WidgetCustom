; =========================================================
; Game Engine Function: _Z13OS_ThreadWaitPv
; Address            : 0x26C1A6 - 0x26C1B4
; =========================================================

26C1A6:  CMP             R0, #0
26C1A8:  ITTT NE
26C1AA:  LDRNE           R0, [R0,#0x24]; th
26C1AC:  MOVNE           R1, #0; thread_return
26C1AE:  BNE.W           j_pthread_join
26C1B2:  BX              LR
