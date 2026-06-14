; =========================================================
; Game Engine Function: _ZN19CAESmoothFadeThread10CancelFadeEP9OALSource
; Address            : 0x3A74A4 - 0x3A74DA
; =========================================================

3A74A4:  PUSH            {R7,LR}
3A74A6:  MOV             R7, SP
3A74A8:  LDRB.W          R2, [R0,#0x810]
3A74AC:  CMP             R2, #0
3A74AE:  IT NE
3A74B0:  POPNE           {R7,PC}
3A74B2:  MOVS            R2, #0
3A74B4:  MOV.W           R12, #2
3A74B8:  ADD.W           LR, R0, R2
3A74BC:  LDR.W           R3, [LR,#0x1C]
3A74C0:  CMP             R3, #1
3A74C2:  BNE             loc_3A74D0
3A74C4:  LDR.W           R3, [LR,#4]
3A74C8:  CMP             R3, R1
3A74CA:  IT EQ
3A74CC:  STREQ.W         R12, [LR,#0x1C]
3A74D0:  ADDS            R2, #0x20 ; ' '
3A74D2:  CMP.W           R2, #0x800
3A74D6:  BNE             loc_3A74B8
3A74D8:  POP             {R7,PC}
