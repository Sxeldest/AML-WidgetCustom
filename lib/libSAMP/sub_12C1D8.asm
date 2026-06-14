; =========================================================
; Game Engine Function: sub_12C1D8
; Address            : 0x12C1D8 - 0x12C212
; =========================================================

12C1D8:  PUSH            {R4,R5,R7,LR}
12C1DA:  ADD             R7, SP, #8
12C1DC:  MOV             R4, R1
12C1DE:  MOV             R5, R0
12C1E0:  LDRD.W          R1, R0, [R0]; src
12C1E4:  LDR             R3, [R4,#4]
12C1E6:  SUBS            R2, R0, R1; n
12C1E8:  SUBS            R0, R3, R2; dest
12C1EA:  CMP             R2, #1
12C1EC:  STR             R0, [R4,#4]
12C1EE:  BLT             loc_12C1F6
12C1F0:  BLX             j_memcpy
12C1F4:  LDR             R0, [R4,#4]
12C1F6:  LDR             R1, [R5]
12C1F8:  STR             R0, [R5]
12C1FA:  STR             R1, [R4,#4]
12C1FC:  LDR             R0, [R4,#8]
12C1FE:  LDR             R1, [R5,#4]
12C200:  STR             R0, [R5,#4]
12C202:  STR             R1, [R4,#8]
12C204:  LDR             R0, [R4,#0xC]
12C206:  LDR             R1, [R5,#8]
12C208:  STR             R0, [R5,#8]
12C20A:  LDR             R0, [R4,#4]
12C20C:  STR             R1, [R4,#0xC]
12C20E:  STR             R0, [R4]
12C210:  POP             {R4,R5,R7,PC}
