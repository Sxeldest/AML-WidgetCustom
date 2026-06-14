; =========================================================
; Game Engine Function: al_calloc
; Address            : 0x23CE2C - 0x23CE6C
; =========================================================

23CE2C:  PUSH            {R4-R7,LR}
23CE2E:  ADD             R7, SP, #0xC
23CE30:  PUSH.W          {R11}
23CE34:  MOV             R4, R1
23CE36:  MOV             R6, R0
23CE38:  ADDS            R0, R4, R6; byte_count
23CE3A:  BLX             malloc
23CE3E:  MOVS            R5, #0
23CE40:  CBZ             R0, loc_23CE64
23CE42:  STRB.W          R5, [R0],#1
23CE46:  SUBS            R1, R6, #1
23CE48:  TST             R1, R0
23CE4A:  BEQ             loc_23CE5A
23CE4C:  MOVS            R2, #0x55 ; 'U'
23CE4E:  MOV             R5, R0
23CE50:  STRB.W          R2, [R5],#1
23CE54:  TST             R1, R5
23CE56:  BNE             loc_23CE50
23CE58:  B               loc_23CE5C
23CE5A:  MOV             R5, R0
23CE5C:  MOV             R0, R5
23CE5E:  MOV             R1, R4
23CE60:  BLX             j___aeabi_memclr8_1
23CE64:  MOV             R0, R5
23CE66:  POP.W           {R11}
23CE6A:  POP             {R4-R7,PC}
