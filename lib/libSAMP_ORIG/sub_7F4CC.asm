; =========================================================
; Game Engine Function: sub_7F4CC
; Address            : 0x7F4CC - 0x7F514
; =========================================================

7F4CC:  PUSH            {R4-R7,LR}
7F4CE:  ADD             R7, SP, #0xC
7F4D0:  PUSH.W          {R11}
7F4D4:  LDR             R5, [R0]
7F4D6:  MOV             R4, R0
7F4D8:  CBZ             R5, loc_7F50C
7F4DA:  LDR             R6, [R4,#4]
7F4DC:  MOV             R0, R5
7F4DE:  CMP             R6, R5
7F4E0:  BNE             loc_7F4F2
7F4E2:  B               loc_7F506
7F4E4:  MOVS            R1, #4
7F4E6:  LDR             R2, [R0]
7F4E8:  LDR.W           R1, [R2,R1,LSL#2]
7F4EC:  BLX             R1
7F4EE:  CMP             R6, R5
7F4F0:  BEQ             loc_7F504
7F4F2:  LDR.W           R0, [R6,#-8]
7F4F6:  SUBS            R6, #0x18
7F4F8:  CMP             R6, R0
7F4FA:  BEQ             loc_7F4E4
7F4FC:  CMP             R0, #0
7F4FE:  BEQ             loc_7F4EE
7F500:  MOVS            R1, #5
7F502:  B               loc_7F4E6
7F504:  LDR             R0, [R4]; void *
7F506:  STR             R5, [R4,#4]
7F508:  BLX             j__ZdlPv; operator delete(void *)
7F50C:  MOV             R0, R4
7F50E:  POP.W           {R11}
7F512:  POP             {R4-R7,PC}
