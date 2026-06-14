; =========================================================
; Game Engine Function: sub_1064BC
; Address            : 0x1064BC - 0x106508
; =========================================================

1064BC:  PUSH            {R4,R6,R7,LR}
1064BE:  ADD             R7, SP, #8
1064C0:  MOV             R4, R0
1064C2:  LDR             R0, [R0,#0x5C]
1064C4:  CBZ             R0, loc_106504
1064C6:  LDRB.W          R0, [R0,#0x485]
1064CA:  LSLS            R0, R0, #0x1B
1064CC:  BMI             loc_106504
1064CE:  MOV             R0, R4
1064D0:  BL              sub_F8C70
1064D4:  CBZ             R0, loc_106504
1064D6:  LDR             R0, [R4,#8]
1064D8:  BL              sub_1082F4
1064DC:  CBZ             R0, loc_106504
1064DE:  LDR             R0, [R4,#0x5C]
1064E0:  LDR.W           R0, [R0,#0x440]
1064E4:  LDR             R0, [R0,#0x10]
1064E6:  CBZ             R0, loc_106504
1064E8:  LDR             R1, =(off_23494C - 0x1064F0)
1064EA:  LDR             R0, [R0]
1064EC:  ADD             R1, PC; off_23494C
1064EE:  LDR             R1, [R1]; dword_23DF24
1064F0:  LDR             R1, [R1]
1064F2:  SUBS            R0, R0, R1
1064F4:  SUB.W           R0, R0, #0x600000
1064F8:  SUB.W           R0, R0, #0x65800
1064FC:  CLZ.W           R0, R0
106500:  LSRS            R0, R0, #5
106502:  POP             {R4,R6,R7,PC}
106504:  MOVS            R0, #0
106506:  POP             {R4,R6,R7,PC}
