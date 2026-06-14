; =========================================================
; Game Engine Function: sub_F6D2C
; Address            : 0xF6D2C - 0xF6DD4
; =========================================================

F6D2C:  PUSH            {R4-R7,LR}
F6D2E:  ADD             R7, SP, #0xC
F6D30:  PUSH.W          {R5-R11}
F6D34:  MOV             R4, R0
F6D36:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6D40)
F6D38:  MOV             R8, R2
F6D3A:  CMP             R4, R1
F6D3C:  ADD             R0, PC; __stack_chk_guard_ptr
F6D3E:  LDR             R0, [R0]; __stack_chk_guard
F6D40:  LDR             R0, [R0]
F6D42:  STR             R0, [SP,#0x28+var_20]
F6D44:  BEQ             loc_F6D92
F6D46:  LDRB.W          R10, [R4]
F6D4A:  MOV             R9, R3
F6D4C:  MOV             R5, R1
F6D4E:  CMP.W           R10, #0x2D ; '-'
F6D52:  ITT EQ
F6D54:  ADDEQ           R4, #1
F6D56:  CMPEQ           R4, R5
F6D58:  BEQ             loc_F6D92
F6D5A:  BLX             __errno
F6D5E:  MOV             R6, R0
F6D60:  LDR.W           R11, [R0]
F6D64:  MOVS            R0, #0; this
F6D66:  STR             R0, [R6]
F6D68:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6D6C:  ADD             R1, SP, #0x28+var_24; char **
F6D6E:  MOV             R3, R0; locale_t
F6D70:  MOV             R0, R4; char *
F6D72:  MOV             R2, R9; int
F6D74:  BLX             strtoull_l
F6D78:  LDR             R2, [R6]
F6D7A:  CBZ             R2, loc_F6D88
F6D7C:  LDR             R3, [SP,#0x28+var_24]
F6D7E:  CMP             R3, R5
F6D80:  BNE             loc_F6D92
F6D82:  CMP             R2, #0x22 ; '"'
F6D84:  BNE             loc_F6DB4
F6D86:  B               loc_F6DBE
F6D88:  LDR             R2, [SP,#0x28+var_24]
F6D8A:  STR.W           R11, [R6]
F6D8E:  CMP             R2, R5
F6D90:  BEQ             loc_F6DB4
F6D92:  MOVS            R0, #4
F6D94:  STR.W           R0, [R8]
F6D98:  MOVS            R0, #0
F6D9A:  LDR             R1, [SP,#0x28+var_20]
F6D9C:  LDR             R2, =(__stack_chk_guard_ptr - 0xF6DA2)
F6D9E:  ADD             R2, PC; __stack_chk_guard_ptr
F6DA0:  LDR             R2, [R2]; __stack_chk_guard
F6DA2:  LDR             R2, [R2]
F6DA4:  CMP             R2, R1
F6DA6:  ITTT EQ
F6DA8:  UXTHEQ          R0, R0
F6DAA:  POPEQ.W         {R1-R3,R8-R11}
F6DAE:  POPEQ           {R4-R7,PC}
F6DB0:  BLX             __stack_chk_fail
F6DB4:  SUBS.W          R2, R0, #0x10000
F6DB8:  SBCS.W          R1, R1, #0
F6DBC:  BCC             loc_F6DCA
F6DBE:  MOVS            R0, #4
F6DC0:  STR.W           R0, [R8]
F6DC4:  MOVW            R0, #0xFFFF
F6DC8:  B               loc_F6D9A
F6DCA:  CMP.W           R10, #0x2D ; '-'
F6DCE:  IT EQ
F6DD0:  NEGEQ           R0, R0
F6DD2:  B               loc_F6D9A
