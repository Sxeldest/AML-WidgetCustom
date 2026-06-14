; =========================================================
; Game Engine Function: sub_E29FC
; Address            : 0xE29FC - 0xE2A7A
; =========================================================

E29FC:  PUSH            {R4-R7,LR}
E29FE:  ADD             R7, SP, #0xC
E2A00:  PUSH.W          {R8,R9,R11}
E2A04:  SUB             SP, SP, #0x10
E2A06:  MOV             R8, R1
E2A08:  MOV             R9, R0
E2A0A:  CMP             R1, #4
E2A0C:  MOV             R4, R0
E2A0E:  STR             R2, [SP,#0x28+var_1C]
E2A10:  BCC             loc_E2A32
E2A12:  ADD.W           R0, R9, R8
E2A16:  ADD             R5, SP, #0x28+var_1C
E2A18:  SUBS            R6, R0, #3
E2A1A:  MOV             R4, R9
E2A1C:  CMP             R4, R6
E2A1E:  BCS             loc_E2A32
E2A20:  MOV             R0, R5
E2A22:  MOV             R1, R4
E2A24:  MOV             R2, R4
E2A26:  BL              sub_E2A7C
E2A2A:  MOV             R4, R0
E2A2C:  CMP             R0, #0
E2A2E:  BNE             loc_E2A1C
E2A30:  B               loc_E2A72
E2A32:  ADD.W           R0, R9, R8
E2A36:  SUBS            R5, R0, R4
E2A38:  BEQ             loc_E2A72
E2A3A:  ADD.W           R8, SP, #0x28+var_24
E2A3E:  MOVS            R0, #0
E2A40:  STR.W           R0, [SP,#0x28+var_24+3]
E2A44:  MOV             R1, R4
E2A46:  STR             R0, [SP,#0x28+var_24]
E2A48:  MOV             R0, R8
E2A4A:  MOV             R2, R5
E2A4C:  MOVS            R3, #7
E2A4E:  BLX             __memcpy_chk
E2A52:  ADD.W           R9, SP, #0x28+var_1C
E2A56:  MOV             R6, R8
E2A58:  MOV             R0, R9
E2A5A:  MOV             R1, R6
E2A5C:  MOV             R2, R4
E2A5E:  BL              sub_E2A7C
E2A62:  CBZ             R0, loc_E2A72
E2A64:  SUBS            R1, R0, R6
E2A66:  MOV             R6, R0
E2A68:  ADD             R4, R1
E2A6A:  SUB.W           R1, R0, R8
E2A6E:  CMP             R1, R5
E2A70:  BLT             loc_E2A58
E2A72:  ADD             SP, SP, #0x10
E2A74:  POP.W           {R8,R9,R11}
E2A78:  POP             {R4-R7,PC}
