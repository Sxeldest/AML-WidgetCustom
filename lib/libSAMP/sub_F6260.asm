; =========================================================
; Game Engine Function: sub_F6260
; Address            : 0xF6260 - 0xF627C
; =========================================================

F6260:  PUSH            {R4,R6,R7,LR}
F6262:  ADD             R7, SP, #8
F6264:  LDR             R1, [R0,#8]
F6266:  MOV             R4, R0
F6268:  BL              sub_F627C
F626C:  LDR             R0, [R4]; void *
F626E:  MOVS            R1, #0
F6270:  STR             R1, [R4]
F6272:  CBZ             R0, loc_F6278
F6274:  BLX             j__ZdlPv; operator delete(void *)
F6278:  MOV             R0, R4
F627A:  POP             {R4,R6,R7,PC}
