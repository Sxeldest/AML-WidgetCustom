; =========================================================
; Game Engine Function: sub_139C12
; Address            : 0x139C12 - 0x139C38
; =========================================================

139C12:  PUSH            {R4,R5,R7,LR}
139C14:  ADD             R7, SP, #8
139C16:  MOV             R4, R0
139C18:  LDR             R0, [R0,#8]; void *
139C1A:  CBZ             R0, loc_139C28
139C1C:  LDR             R5, [R0]
139C1E:  BLX             j__ZdlPv; operator delete(void *)
139C22:  CMP             R5, #0
139C24:  MOV             R0, R5
139C26:  BNE             loc_139C1C
139C28:  LDR             R0, [R4]; void *
139C2A:  MOVS            R1, #0
139C2C:  STR             R1, [R4]
139C2E:  CBZ             R0, loc_139C34
139C30:  BLX             j__ZdlPv; operator delete(void *)
139C34:  MOV             R0, R4
139C36:  POP             {R4,R5,R7,PC}
