; =========================================================
; Game Engine Function: sub_F62E6
; Address            : 0xF62E6 - 0xF630C
; =========================================================

F62E6:  PUSH            {R4,R5,R7,LR}
F62E8:  ADD             R7, SP, #8
F62EA:  MOV             R4, R0
F62EC:  LDR             R0, [R0,#8]; void *
F62EE:  CBZ             R0, loc_F62FC
F62F0:  LDR             R5, [R0]
F62F2:  BLX             j__ZdlPv; operator delete(void *)
F62F6:  CMP             R5, #0
F62F8:  MOV             R0, R5
F62FA:  BNE             loc_F62F0
F62FC:  LDR             R0, [R4]; void *
F62FE:  MOVS            R1, #0
F6300:  STR             R1, [R4]
F6302:  CBZ             R0, loc_F6308
F6304:  BLX             j__ZdlPv; operator delete(void *)
F6308:  MOV             R0, R4
F630A:  POP             {R4,R5,R7,PC}
