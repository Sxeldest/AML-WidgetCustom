; =========================================================
; Game Engine Function: sub_1135B8
; Address            : 0x1135B8 - 0x113608
; =========================================================

1135B8:  PUSH            {R4,R6,R7,LR}
1135BA:  ADD             R7, SP, #8
1135BC:  LDRD.W          R12, R2, [R0]
1135C0:  LDR             R3, [R1,#4]
1135C2:  CMP             R2, R12
1135C4:  BEQ             loc_1135EC
1135C6:  MOV.W           LR, #0
1135CA:  LDR.W           R4, [R2,#-8]!
1135CE:  STR.W           R4, [R3,#-8]
1135D2:  CMP             R2, R12
1135D4:  LDR             R4, [R2,#4]
1135D6:  STR.W           R4, [R3,#-4]
1135DA:  STRD.W          LR, LR, [R2]
1135DE:  LDR             R3, [R1,#4]
1135E0:  SUB.W           R3, R3, #8
1135E4:  STR             R3, [R1,#4]
1135E6:  BNE             loc_1135CA
1135E8:  LDR.W           R12, [R0]
1135EC:  STR             R3, [R0]
1135EE:  STR.W           R12, [R1,#4]
1135F2:  LDR             R2, [R1,#8]
1135F4:  LDR             R3, [R0,#4]
1135F6:  STR             R2, [R0,#4]
1135F8:  STR             R3, [R1,#8]
1135FA:  LDR             R2, [R1,#0xC]
1135FC:  LDR             R3, [R0,#8]
1135FE:  STR             R2, [R0,#8]
113600:  LDR             R0, [R1,#4]
113602:  STR             R3, [R1,#0xC]
113604:  STR             R0, [R1]
113606:  POP             {R4,R6,R7,PC}
