; =========================================================
; Game Engine Function: sub_1235B2
; Address            : 0x1235B2 - 0x1235D6
; =========================================================

1235B2:  PUSH            {R4,R6,R7,LR}
1235B4:  ADD             R7, SP, #8
1235B6:  LDR             R4, [R0,#0xC]
1235B8:  LDRD.W          LR, R12, [R0,#4]
1235BC:  LDR             R3, [R3]
1235BE:  ADD.W           R0, LR, R4,ASR#1
1235C2:  LDR             R2, [R2]
1235C4:  LDR             R1, [R1]
1235C6:  LSLS            R4, R4, #0x1F
1235C8:  ITT NE
1235CA:  LDRNE           R4, [R0]
1235CC:  LDRNE.W         R12, [R4,R12]
1235D0:  POP.W           {R4,R6,R7,LR}
1235D4:  BX              R12
