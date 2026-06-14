; =========================================================
; Game Engine Function: sub_F6E84
; Address            : 0xF6E84 - 0xF6F22
; =========================================================

F6E84:  PUSH            {R4-R7,LR}
F6E86:  ADD             R7, SP, #0xC
F6E88:  PUSH.W          {R5-R11}
F6E8C:  MOV             R4, R0
F6E8E:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6E98)
F6E90:  MOV             R8, R2
F6E92:  CMP             R4, R1
F6E94:  ADD             R0, PC; __stack_chk_guard_ptr
F6E96:  LDR             R0, [R0]; __stack_chk_guard
F6E98:  LDR             R0, [R0]
F6E9A:  STR             R0, [SP,#0x28+var_20]
F6E9C:  BEQ             loc_F6EEA
F6E9E:  LDRB.W          R10, [R4]
F6EA2:  MOV             R9, R3
F6EA4:  MOV             R5, R1
F6EA6:  CMP.W           R10, #0x2D ; '-'
F6EAA:  ITT EQ
F6EAC:  ADDEQ           R4, #1
F6EAE:  CMPEQ           R4, R5
F6EB0:  BEQ             loc_F6EEA
F6EB2:  BLX             __errno
F6EB6:  MOV             R6, R0
F6EB8:  LDR.W           R11, [R0]
F6EBC:  MOVS            R0, #0; this
F6EBE:  STR             R0, [R6]
F6EC0:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6EC4:  ADD             R1, SP, #0x28+var_24; char **
F6EC6:  MOV             R3, R0; locale_t
F6EC8:  MOV             R0, R4; char *
F6ECA:  MOV             R2, R9; int
F6ECC:  BLX             strtoull_l
F6ED0:  LDR             R2, [R6]
F6ED2:  CBZ             R2, loc_F6EE0
F6ED4:  LDR             R3, [SP,#0x28+var_24]
F6ED6:  CMP             R3, R5
F6ED8:  BNE             loc_F6EEA
F6EDA:  CMP             R2, #0x22 ; '"'
F6EDC:  BNE             loc_F6F0A
F6EDE:  B               loc_F6F0C
F6EE0:  LDR             R2, [SP,#0x28+var_24]
F6EE2:  STR.W           R11, [R6]
F6EE6:  CMP             R2, R5
F6EE8:  BEQ             loc_F6F0A
F6EEA:  MOVS            R0, #4
F6EEC:  STR.W           R0, [R8]
F6EF0:  MOVS            R0, #0
F6EF2:  LDR             R1, [SP,#0x28+var_20]
F6EF4:  LDR             R2, =(__stack_chk_guard_ptr - 0xF6EFA)
F6EF6:  ADD             R2, PC; __stack_chk_guard_ptr
F6EF8:  LDR             R2, [R2]; __stack_chk_guard
F6EFA:  LDR             R2, [R2]
F6EFC:  CMP             R2, R1
F6EFE:  ITT EQ
F6F00:  POPEQ.W         {R1-R3,R8-R11}
F6F04:  POPEQ           {R4-R7,PC}
F6F06:  BLX             __stack_chk_fail
F6F0A:  CBZ             R1, loc_F6F18
F6F0C:  MOVS            R0, #4
F6F0E:  STR.W           R0, [R8]
F6F12:  MOV.W           R0, #0xFFFFFFFF
F6F16:  B               loc_F6EF2
F6F18:  CMP.W           R10, #0x2D ; '-'
F6F1C:  IT EQ
F6F1E:  NEGEQ           R0, R0
F6F20:  B               loc_F6EF2
