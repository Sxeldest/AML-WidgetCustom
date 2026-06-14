; =========================================================
; Game Engine Function: sub_15955C
; Address            : 0x15955C - 0x1595DC
; =========================================================

15955C:  PUSH            {R4,R6,R7,LR}
15955E:  ADD             R7, SP, #8
159560:  LDRD.W          R12, R2, [R0]
159564:  LDR             R3, [R1,#4]
159566:  CMP             R2, R12
159568:  BEQ             loc_1595C0
15956A:  MOV.W           LR, #0
15956E:  LDR.W           R4, [R2,#-0x28]!
159572:  STR.W           R4, [R3,#-0x28]
159576:  CMP             R2, R12
159578:  VLDR            D16, [R2,#4]
15957C:  LDR             R4, [R2,#0xC]
15957E:  STR.W           R4, [R3,#-0x1C]
159582:  VSTR            D16, [R3,#-0x24]
159586:  VLDR            D16, [R2,#0x10]
15958A:  LDR             R4, [R2,#0x18]
15958C:  STR.W           LR, [R2,#0xC]
159590:  STRD.W          LR, LR, [R2,#4]
159594:  STR.W           R4, [R3,#-0x10]
159598:  VSTR            D16, [R3,#-0x18]
15959C:  VLDR            D16, [R2,#0x1C]
1595A0:  LDR             R4, [R2,#0x24]
1595A2:  STR.W           LR, [R2,#0x18]
1595A6:  STRD.W          LR, LR, [R2,#0x10]
1595AA:  STR.W           R4, [R3,#-4]
1595AE:  VSTR            D16, [R3,#-0xC]
1595B2:  LDR             R3, [R1,#4]
1595B4:  SUB.W           R3, R3, #0x28 ; '('
1595B8:  STR             R3, [R1,#4]
1595BA:  BNE             loc_15956E
1595BC:  LDR.W           R12, [R0]
1595C0:  STR             R3, [R0]
1595C2:  STR.W           R12, [R1,#4]
1595C6:  LDR             R2, [R1,#8]
1595C8:  LDR             R3, [R0,#4]
1595CA:  STR             R2, [R0,#4]
1595CC:  STR             R3, [R1,#8]
1595CE:  LDR             R2, [R1,#0xC]
1595D0:  LDR             R3, [R0,#8]
1595D2:  STR             R2, [R0,#8]
1595D4:  LDR             R0, [R1,#4]
1595D6:  STR             R3, [R1,#0xC]
1595D8:  STR             R0, [R1]
1595DA:  POP             {R4,R6,R7,PC}
