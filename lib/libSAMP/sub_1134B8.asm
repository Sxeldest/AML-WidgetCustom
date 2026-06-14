; =========================================================
; Game Engine Function: sub_1134B8
; Address            : 0x1134B8 - 0x113508
; =========================================================

1134B8:  PUSH            {R4,R6,R7,LR}
1134BA:  ADD             R7, SP, #8
1134BC:  LDRD.W          R12, R2, [R0]
1134C0:  LDR             R3, [R1,#4]
1134C2:  CMP             R2, R12
1134C4:  BEQ             loc_1134EC
1134C6:  MOV.W           LR, #0
1134CA:  LDR.W           R4, [R2,#-8]!
1134CE:  STR.W           R4, [R3,#-8]
1134D2:  CMP             R2, R12
1134D4:  LDR             R4, [R2,#4]
1134D6:  STR.W           R4, [R3,#-4]
1134DA:  STRD.W          LR, LR, [R2]
1134DE:  LDR             R3, [R1,#4]
1134E0:  SUB.W           R3, R3, #8
1134E4:  STR             R3, [R1,#4]
1134E6:  BNE             loc_1134CA
1134E8:  LDR.W           R12, [R0]
1134EC:  STR             R3, [R0]
1134EE:  STR.W           R12, [R1,#4]
1134F2:  LDR             R2, [R1,#8]
1134F4:  LDR             R3, [R0,#4]
1134F6:  STR             R2, [R0,#4]
1134F8:  STR             R3, [R1,#8]
1134FA:  LDR             R2, [R1,#0xC]
1134FC:  LDR             R3, [R0,#8]
1134FE:  STR             R2, [R0,#8]
113500:  LDR             R0, [R1,#4]
113502:  STR             R3, [R1,#0xC]
113504:  STR             R0, [R1]
113506:  POP             {R4,R6,R7,PC}
