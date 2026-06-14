; =========================================================
; Game Engine Function: sub_F6F2C
; Address            : 0xF6F2C - 0xF6FDA
; =========================================================

F6F2C:  PUSH            {R4-R7,LR}
F6F2E:  ADD             R7, SP, #0xC
F6F30:  PUSH.W          {R5-R11}
F6F34:  MOV             R4, R0
F6F36:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6F40)
F6F38:  MOV             R8, R2
F6F3A:  CMP             R4, R1
F6F3C:  ADD             R0, PC; __stack_chk_guard_ptr
F6F3E:  LDR             R0, [R0]; __stack_chk_guard
F6F40:  LDR             R0, [R0]
F6F42:  STR             R0, [SP,#0x28+var_20]
F6F44:  BEQ             loc_F6FA2
F6F46:  LDRB.W          R10, [R4]
F6F4A:  MOV             R9, R3
F6F4C:  MOV             R5, R1
F6F4E:  CMP.W           R10, #0x2D ; '-'
F6F52:  ITT EQ
F6F54:  ADDEQ           R4, #1
F6F56:  CMPEQ           R4, R5
F6F58:  BEQ             loc_F6FA2
F6F5A:  BLX             __errno
F6F5E:  MOV             R6, R0
F6F60:  LDR.W           R11, [R0]
F6F64:  MOVS            R0, #0; this
F6F66:  STR             R0, [R6]
F6F68:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6F6C:  ADD             R1, SP, #0x28+var_24; char **
F6F6E:  MOV             R3, R0; locale_t
F6F70:  MOV             R0, R4; char *
F6F72:  MOV             R2, R9; int
F6F74:  BLX             strtoull_l
F6F78:  MOV             R2, R0
F6F7A:  LDR             R0, [R6]
F6F7C:  CBZ             R0, loc_F6F98
F6F7E:  LDR             R3, [SP,#0x28+var_24]
F6F80:  CMP             R3, R5
F6F82:  BNE             loc_F6FA2
F6F84:  CMP             R0, #0x22 ; '"'
F6F86:  BNE             loc_F6FC8
F6F88:  MOVS            R0, #4
F6F8A:  MOV.W           R3, #0xFFFFFFFF
F6F8E:  STR.W           R0, [R8]
F6F92:  MOV.W           R0, #0xFFFFFFFF
F6F96:  B               loc_F6FAC
F6F98:  LDR             R0, [SP,#0x28+var_24]
F6F9A:  STR.W           R11, [R6]
F6F9E:  CMP             R0, R5
F6FA0:  BEQ             loc_F6FC8
F6FA2:  MOVS            R0, #4
F6FA4:  MOVS            R3, #0
F6FA6:  STR.W           R0, [R8]
F6FAA:  MOVS            R0, #0
F6FAC:  LDR             R1, [SP,#0x28+var_20]
F6FAE:  LDR             R2, =(__stack_chk_guard_ptr - 0xF6FB4)
F6FB0:  ADD             R2, PC; __stack_chk_guard_ptr
F6FB2:  LDR             R2, [R2]; __stack_chk_guard
F6FB4:  LDR             R2, [R2]
F6FB6:  CMP             R2, R1
F6FB8:  ITTTT EQ
F6FBA:  MOVEQ           R1, R3
F6FBC:  ADDEQ           SP, SP, #0xC
F6FBE:  POPEQ.W         {R8-R11}
F6FC2:  POPEQ           {R4-R7,PC}
F6FC4:  BLX             __stack_chk_fail
F6FC8:  MOVS            R3, #0
F6FCA:  NEGS            R0, R2
F6FCC:  SBCS            R3, R1
F6FCE:  CMP.W           R10, #0x2D ; '-'
F6FD2:  ITT NE
F6FD4:  MOVNE           R0, R2
F6FD6:  MOVNE           R3, R1
F6FD8:  B               loc_F6FAC
