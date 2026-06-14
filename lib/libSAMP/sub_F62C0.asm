; =========================================================
; Game Engine Function: sub_F62C0
; Address            : 0xF62C0 - 0xF62E6
; =========================================================

F62C0:  PUSH            {R4,R5,R7,LR}
F62C2:  ADD             R7, SP, #8
F62C4:  MOV             R4, R0
F62C6:  LDR             R0, [R0,#8]; void *
F62C8:  CBZ             R0, loc_F62D6
F62CA:  LDR             R5, [R0]
F62CC:  BLX             j__ZdlPv; operator delete(void *)
F62D0:  CMP             R5, #0
F62D2:  MOV             R0, R5
F62D4:  BNE             loc_F62CA
F62D6:  LDR             R0, [R4]; void *
F62D8:  MOVS            R1, #0
F62DA:  STR             R1, [R4]
F62DC:  CBZ             R0, loc_F62E2
F62DE:  BLX             j__ZdlPv; operator delete(void *)
F62E2:  MOV             R0, R4
F62E4:  POP             {R4,R5,R7,PC}
