; =========================================================
; Game Engine Function: sub_17F9BC
; Address            : 0x17F9BC - 0x17F9E8
; =========================================================

17F9BC:  PUSH            {R4,R5,R7,LR}
17F9BE:  ADD             R7, SP, #8
17F9C0:  LDR             R5, [R0,#4]
17F9C2:  MOV             R4, R0
17F9C4:  LDR             R0, [R5,#0x3C]; void *
17F9C6:  STR             R0, [R4,#8]
17F9C8:  CMP             R0, R5
17F9CA:  BEQ             loc_17F9DE
17F9CC:  LDR             R5, [R0,#0x3C]
17F9CE:  BLX             j__ZdlPv; operator delete(void *)
17F9D2:  LDR             R0, [R4,#4]
17F9D4:  STR             R5, [R4,#8]
17F9D6:  CMP             R5, R0
17F9D8:  MOV             R0, R5
17F9DA:  BNE             loc_17F9CC
17F9DC:  CBZ             R5, loc_17F9E4
17F9DE:  MOV             R0, R5; void *
17F9E0:  BLX             j__ZdlPv; operator delete(void *)
17F9E4:  MOV             R0, R4
17F9E6:  POP             {R4,R5,R7,PC}
