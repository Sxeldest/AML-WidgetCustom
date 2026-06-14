; =========================================================
; Game Engine Function: sub_1188CC
; Address            : 0x1188CC - 0x1188EE
; =========================================================

1188CC:  PUSH            {R4,R6,R7,LR}
1188CE:  ADD             R7, SP, #8
1188D0:  MOV             R4, R0
1188D2:  LDR             R0, =(_ZTV21SpdWithTouchIndicatorI15CTransparentSpdE - 0x1188D8); `vtable for'SpdWithTouchIndicator<CTransparentSpd> ...
1188D4:  ADD             R0, PC; `vtable for'SpdWithTouchIndicator<CTransparentSpd>
1188D6:  ADD.W           R1, R0, #8
1188DA:  MOV             R0, R4
1188DC:  STR.W           R1, [R0],#8
1188E0:  BL              sub_1630A8
1188E4:  ADDS            R0, R4, #4
1188E6:  BL              sub_1630A8
1188EA:  MOV             R0, R4
1188EC:  POP             {R4,R6,R7,PC}
