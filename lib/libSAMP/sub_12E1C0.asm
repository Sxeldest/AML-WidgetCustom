; =========================================================
; Game Engine Function: sub_12E1C0
; Address            : 0x12E1C0 - 0x12E1EA
; =========================================================

12E1C0:  PUSH            {R4,R5,R7,LR}
12E1C2:  ADD             R7, SP, #8
12E1C4:  LDR             R5, [R0]
12E1C6:  MOV             R4, R0
12E1C8:  CBZ             R5, loc_12E1E6
12E1CA:  LDR             R0, [R4,#4]
12E1CC:  CMP             R0, R5
12E1CE:  BEQ             loc_12E1DE
12E1D0:  SUBS            R0, #8
12E1D2:  BL              sub_12E1EA
12E1D6:  CMP             R0, R5
12E1D8:  BNE             loc_12E1D0
12E1DA:  LDR             R0, [R4]
12E1DC:  B               loc_12E1E0
12E1DE:  MOV             R0, R5; void *
12E1E0:  STR             R5, [R4,#4]
12E1E2:  BLX             j__ZdlPv; operator delete(void *)
12E1E6:  MOV             R0, R4
12E1E8:  POP             {R4,R5,R7,PC}
