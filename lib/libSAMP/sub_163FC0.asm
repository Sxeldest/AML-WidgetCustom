; =========================================================
; Game Engine Function: sub_163FC0
; Address            : 0x163FC0 - 0x163FEE
; =========================================================

163FC0:  B.W             loc_163FC4
163FC4:  PUSH            {R7,LR}
163FC6:  MOV             R7, SP
163FC8:  LDR             R0, =(off_23494C - 0x163FCE)
163FCA:  ADD             R0, PC; off_23494C
163FCC:  LDR             R0, [R0]; dword_23DF24
163FCE:  LDR             R1, [R0]
163FD0:  MOVS            R0, #0
163FD2:  CBZ             R1, locret_163FE8
163FD4:  MOV             R2, #0x674ABC
163FDC:  ADDS            R1, R1, R2
163FDE:  IT EQ
163FE0:  POPEQ           {R7,PC}
163FE2:  LDR             R0, [R1]
163FE4:  CBZ             R0, loc_163FEA
163FE6:  BLX             R0
163FE8:  POP             {R7,PC}
163FEA:  MOVS            R0, #0
163FEC:  POP             {R7,PC}
