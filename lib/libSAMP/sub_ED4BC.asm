; =========================================================
; Game Engine Function: sub_ED4BC
; Address            : 0xED4BC - 0xED4F6
; =========================================================

ED4BC:  PUSH            {R4,R5,R7,LR}
ED4BE:  ADD             R7, SP, #8
ED4C0:  MOV             R4, R1
ED4C2:  MOV             R5, R0
ED4C4:  LDRD.W          R1, R0, [R0]; src
ED4C8:  LDR             R3, [R4,#4]
ED4CA:  SUBS            R2, R0, R1; n
ED4CC:  SUBS            R0, R3, R2; dest
ED4CE:  CMP             R2, #1
ED4D0:  STR             R0, [R4,#4]
ED4D2:  BLT             loc_ED4DA
ED4D4:  BLX             j_memcpy
ED4D8:  LDR             R0, [R4,#4]
ED4DA:  LDR             R1, [R5]
ED4DC:  STR             R0, [R5]
ED4DE:  STR             R1, [R4,#4]
ED4E0:  LDR             R0, [R4,#8]
ED4E2:  LDR             R1, [R5,#4]
ED4E4:  STR             R0, [R5,#4]
ED4E6:  STR             R1, [R4,#8]
ED4E8:  LDR             R0, [R4,#0xC]
ED4EA:  LDR             R1, [R5,#8]
ED4EC:  STR             R0, [R5,#8]
ED4EE:  LDR             R0, [R4,#4]
ED4F0:  STR             R1, [R4,#0xC]
ED4F2:  STR             R0, [R4]
ED4F4:  POP             {R4,R5,R7,PC}
