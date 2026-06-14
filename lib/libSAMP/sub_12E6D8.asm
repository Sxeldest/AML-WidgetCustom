; =========================================================
; Game Engine Function: sub_12E6D8
; Address            : 0x12E6D8 - 0x12E6FE
; =========================================================

12E6D8:  PUSH            {R4,R5,R7,LR}
12E6DA:  ADD             R7, SP, #8
12E6DC:  MOV             R4, R0
12E6DE:  LDRD.W          R5, R0, [R0,#4]
12E6E2:  CMP             R0, R5
12E6E4:  BEQ             loc_12E6F2
12E6E6:  SUBS            R0, #8
12E6E8:  STR             R0, [R4,#8]
12E6EA:  BL              sub_12E1EA
12E6EE:  LDR             R0, [R4,#8]
12E6F0:  B               loc_12E6E2
12E6F2:  LDR             R0, [R4]; void *
12E6F4:  CBZ             R0, loc_12E6FA
12E6F6:  BLX             j__ZdlPv; operator delete(void *)
12E6FA:  MOV             R0, R4
12E6FC:  POP             {R4,R5,R7,PC}
