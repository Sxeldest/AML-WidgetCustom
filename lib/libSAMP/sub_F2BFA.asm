; =========================================================
; Game Engine Function: sub_F2BFA
; Address            : 0xF2BFA - 0xF2C24
; =========================================================

F2BFA:  PUSH            {R4,R5,R7,LR}
F2BFC:  ADD             R7, SP, #8
F2BFE:  LDR             R5, [R0]
F2C00:  MOV             R4, R0
F2C02:  CBZ             R5, loc_F2C20
F2C04:  LDR             R0, [R4,#4]
F2C06:  CMP             R0, R5
F2C08:  BEQ             loc_F2C18
F2C0A:  SUBS            R0, #8
F2C0C:  BL              sub_F2BC4
F2C10:  CMP             R0, R5
F2C12:  BNE             loc_F2C0A
F2C14:  LDR             R0, [R4]
F2C16:  B               loc_F2C1A
F2C18:  MOV             R0, R5; void *
F2C1A:  STR             R5, [R4,#4]
F2C1C:  BLX             j__ZdlPv; operator delete(void *)
F2C20:  MOV             R0, R4
F2C22:  POP             {R4,R5,R7,PC}
