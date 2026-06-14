; =========================================================
; Game Engine Function: sub_100CA4
; Address            : 0x100CA4 - 0x100CDE
; =========================================================

100CA4:  PUSH            {R4,R5,R7,LR}
100CA6:  ADD             R7, SP, #8
100CA8:  MOV             R4, R1
100CAA:  MOV             R5, R0
100CAC:  LDRD.W          R1, R0, [R0]; src
100CB0:  LDR             R3, [R4,#4]
100CB2:  SUBS            R2, R0, R1; n
100CB4:  SUBS            R0, R3, R2; dest
100CB6:  CMP             R2, #1
100CB8:  STR             R0, [R4,#4]
100CBA:  BLT             loc_100CC2
100CBC:  BLX             j_memcpy
100CC0:  LDR             R0, [R4,#4]
100CC2:  LDR             R1, [R5]
100CC4:  STR             R0, [R5]
100CC6:  STR             R1, [R4,#4]
100CC8:  LDR             R0, [R4,#8]
100CCA:  LDR             R1, [R5,#4]
100CCC:  STR             R0, [R5,#4]
100CCE:  STR             R1, [R4,#8]
100CD0:  LDR             R0, [R4,#0xC]
100CD2:  LDR             R1, [R5,#8]
100CD4:  STR             R0, [R5,#8]
100CD6:  LDR             R0, [R4,#4]
100CD8:  STR             R1, [R4,#0xC]
100CDA:  STR             R0, [R4]
100CDC:  POP             {R4,R5,R7,PC}
