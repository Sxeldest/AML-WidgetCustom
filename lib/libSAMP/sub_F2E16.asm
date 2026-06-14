; =========================================================
; Game Engine Function: sub_F2E16
; Address            : 0xF2E16 - 0xF2E40
; =========================================================

F2E16:  PUSH            {R4,R5,R7,LR}
F2E18:  ADD             R7, SP, #8
F2E1A:  LDR             R5, [R0]
F2E1C:  MOV             R4, R0
F2E1E:  CBZ             R5, loc_F2E3C
F2E20:  LDR             R0, [R4,#4]
F2E22:  CMP             R0, R5
F2E24:  BEQ             loc_F2E34
F2E26:  SUBS            R0, #8
F2E28:  BL              sub_F2DE0
F2E2C:  CMP             R0, R5
F2E2E:  BNE             loc_F2E26
F2E30:  LDR             R0, [R4]
F2E32:  B               loc_F2E36
F2E34:  MOV             R0, R5; void *
F2E36:  STR             R5, [R4,#4]
F2E38:  BLX             j__ZdlPv; operator delete(void *)
F2E3C:  MOV             R0, R4
F2E3E:  POP             {R4,R5,R7,PC}
