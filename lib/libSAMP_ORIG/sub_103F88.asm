; =========================================================
; Game Engine Function: sub_103F88
; Address            : 0x103F88 - 0x103FE8
; =========================================================

103F88:  PUSH            {R0-R5,R7,LR}
103F8A:  ADD             R7, SP, #0x18
103F8C:  MOV             R5, R0
103F8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x103F94)
103F90:  ADD             R0, PC; __stack_chk_guard_ptr
103F92:  LDR             R0, [R0]; __stack_chk_guard
103F94:  LDR             R0, [R0]
103F96:  STR             R0, [SP,#0x18+var_C]
103F98:  MOV             R0, R5
103F9A:  BL              sub_104164
103F9E:  STR             R0, [SP,#0x18+var_10]
103FA0:  CBZ             R0, loc_103FCE
103FA2:  MOV             R4, R0
103FA4:  LDRD.W          R0, R1, [R5]
103FA8:  CMP             R1, R0
103FAA:  BEQ             loc_103FD0
103FAC:  LDRB            R0, [R0]
103FAE:  CMP             R0, #0x49 ; 'I'
103FB0:  BNE             loc_103FD0
103FB2:  MOV             R0, R5
103FB4:  MOVS            R1, #0
103FB6:  MOVS            R4, #0
103FB8:  BL              sub_FFCD8
103FBC:  STR             R0, [SP,#0x18+var_14]
103FBE:  CBZ             R0, loc_103FD0
103FC0:  ADD             R1, SP, #0x18+var_10
103FC2:  ADD             R2, SP, #0x18+var_14
103FC4:  MOV             R0, R5
103FC6:  BL              sub_FFF64
103FCA:  MOV             R4, R0
103FCC:  B               loc_103FD0
103FCE:  MOVS            R4, #0
103FD0:  LDR             R0, [SP,#0x18+var_C]
103FD2:  LDR             R1, =(__stack_chk_guard_ptr - 0x103FD8)
103FD4:  ADD             R1, PC; __stack_chk_guard_ptr
103FD6:  LDR             R1, [R1]; __stack_chk_guard
103FD8:  LDR             R1, [R1]
103FDA:  CMP             R1, R0
103FDC:  ITTT EQ
103FDE:  MOVEQ           R0, R4
103FE0:  ADDEQ           SP, SP, #0x10
103FE2:  POPEQ           {R4,R5,R7,PC}
103FE4:  BLX             __stack_chk_fail
