; =========================================================
; Game Engine Function: sub_F6DDC
; Address            : 0xF6DDC - 0xF6E7A
; =========================================================

F6DDC:  PUSH            {R4-R7,LR}
F6DDE:  ADD             R7, SP, #0xC
F6DE0:  PUSH.W          {R5-R11}
F6DE4:  MOV             R4, R0
F6DE6:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6DF0)
F6DE8:  MOV             R8, R2
F6DEA:  CMP             R4, R1
F6DEC:  ADD             R0, PC; __stack_chk_guard_ptr
F6DEE:  LDR             R0, [R0]; __stack_chk_guard
F6DF0:  LDR             R0, [R0]
F6DF2:  STR             R0, [SP,#0x28+var_20]
F6DF4:  BEQ             loc_F6E42
F6DF6:  LDRB.W          R10, [R4]
F6DFA:  MOV             R9, R3
F6DFC:  MOV             R5, R1
F6DFE:  CMP.W           R10, #0x2D ; '-'
F6E02:  ITT EQ
F6E04:  ADDEQ           R4, #1
F6E06:  CMPEQ           R4, R5
F6E08:  BEQ             loc_F6E42
F6E0A:  BLX             __errno
F6E0E:  MOV             R6, R0
F6E10:  LDR.W           R11, [R0]
F6E14:  MOVS            R0, #0; this
F6E16:  STR             R0, [R6]
F6E18:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6E1C:  ADD             R1, SP, #0x28+var_24; char **
F6E1E:  MOV             R3, R0; locale_t
F6E20:  MOV             R0, R4; char *
F6E22:  MOV             R2, R9; int
F6E24:  BLX             strtoull_l
F6E28:  LDR             R2, [R6]
F6E2A:  CBZ             R2, loc_F6E38
F6E2C:  LDR             R3, [SP,#0x28+var_24]
F6E2E:  CMP             R3, R5
F6E30:  BNE             loc_F6E42
F6E32:  CMP             R2, #0x22 ; '"'
F6E34:  BNE             loc_F6E62
F6E36:  B               loc_F6E64
F6E38:  LDR             R2, [SP,#0x28+var_24]
F6E3A:  STR.W           R11, [R6]
F6E3E:  CMP             R2, R5
F6E40:  BEQ             loc_F6E62
F6E42:  MOVS            R0, #4
F6E44:  STR.W           R0, [R8]
F6E48:  MOVS            R0, #0
F6E4A:  LDR             R1, [SP,#0x28+var_20]
F6E4C:  LDR             R2, =(__stack_chk_guard_ptr - 0xF6E52)
F6E4E:  ADD             R2, PC; __stack_chk_guard_ptr
F6E50:  LDR             R2, [R2]; __stack_chk_guard
F6E52:  LDR             R2, [R2]
F6E54:  CMP             R2, R1
F6E56:  ITT EQ
F6E58:  POPEQ.W         {R1-R3,R8-R11}
F6E5C:  POPEQ           {R4-R7,PC}
F6E5E:  BLX             __stack_chk_fail
F6E62:  CBZ             R1, loc_F6E70
F6E64:  MOVS            R0, #4
F6E66:  STR.W           R0, [R8]
F6E6A:  MOV.W           R0, #0xFFFFFFFF
F6E6E:  B               loc_F6E4A
F6E70:  CMP.W           R10, #0x2D ; '-'
F6E74:  IT EQ
F6E76:  NEGEQ           R0, R0
F6E78:  B               loc_F6E4A
