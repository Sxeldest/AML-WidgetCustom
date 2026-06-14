; =========================================================
; Game Engine Function: sub_1136B8
; Address            : 0x1136B8 - 0x113708
; =========================================================

1136B8:  PUSH            {R4,R6,R7,LR}
1136BA:  ADD             R7, SP, #8
1136BC:  LDRD.W          R12, R2, [R0]
1136C0:  LDR             R3, [R1,#4]
1136C2:  CMP             R2, R12
1136C4:  BEQ             loc_1136EC
1136C6:  MOV.W           LR, #0
1136CA:  LDR.W           R4, [R2,#-8]!
1136CE:  STR.W           R4, [R3,#-8]
1136D2:  CMP             R2, R12
1136D4:  LDR             R4, [R2,#4]
1136D6:  STR.W           R4, [R3,#-4]
1136DA:  STRD.W          LR, LR, [R2]
1136DE:  LDR             R3, [R1,#4]
1136E0:  SUB.W           R3, R3, #8
1136E4:  STR             R3, [R1,#4]
1136E6:  BNE             loc_1136CA
1136E8:  LDR.W           R12, [R0]
1136EC:  STR             R3, [R0]
1136EE:  STR.W           R12, [R1,#4]
1136F2:  LDR             R2, [R1,#8]
1136F4:  LDR             R3, [R0,#4]
1136F6:  STR             R2, [R0,#4]
1136F8:  STR             R3, [R1,#8]
1136FA:  LDR             R2, [R1,#0xC]
1136FC:  LDR             R3, [R0,#8]
1136FE:  STR             R2, [R0,#8]
113700:  LDR             R0, [R1,#4]
113702:  STR             R3, [R1,#0xC]
113704:  STR             R0, [R1]
113706:  POP             {R4,R6,R7,PC}
