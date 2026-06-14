; =========================================================
; Game Engine Function: sub_20ECD0
; Address            : 0x20ECD0 - 0x20ED6E
; =========================================================

20ECD0:  PUSH            {R4-R7,LR}
20ECD2:  ADD             R7, SP, #0xC
20ECD4:  PUSH.W          {R5-R11}
20ECD8:  MOV             R4, R0
20ECDA:  LDR             R0, =(__stack_chk_guard_ptr - 0x20ECE4)
20ECDC:  MOV             R8, R2
20ECDE:  CMP             R4, R1
20ECE0:  ADD             R0, PC; __stack_chk_guard_ptr
20ECE2:  LDR             R0, [R0]; __stack_chk_guard
20ECE4:  LDR             R0, [R0]
20ECE6:  STR             R0, [SP,#0x28+var_20]
20ECE8:  BEQ             loc_20ED36
20ECEA:  LDRB.W          R10, [R4]
20ECEE:  MOV             R9, R3
20ECF0:  MOV             R5, R1
20ECF2:  CMP.W           R10, #0x2D ; '-'
20ECF6:  ITT EQ
20ECF8:  ADDEQ           R4, #1
20ECFA:  CMPEQ           R4, R5
20ECFC:  BEQ             loc_20ED36
20ECFE:  BLX             __errno
20ED02:  MOV             R6, R0
20ED04:  LDR.W           R11, [R0]
20ED08:  MOVS            R0, #0; this
20ED0A:  STR             R0, [R6]
20ED0C:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20ED10:  ADD             R1, SP, #0x28+var_24
20ED12:  MOV             R3, R0
20ED14:  MOV             R0, R4
20ED16:  MOV             R2, R9
20ED18:  BL              sub_220340
20ED1C:  LDR             R2, [R6]
20ED1E:  CBZ             R2, loc_20ED2C
20ED20:  LDR             R3, [SP,#0x28+var_24]
20ED22:  CMP             R3, R5
20ED24:  BNE             loc_20ED36
20ED26:  CMP             R2, #0x22 ; '"'
20ED28:  BNE             loc_20ED56
20ED2A:  B               loc_20ED58
20ED2C:  LDR             R2, [SP,#0x28+var_24]
20ED2E:  STR.W           R11, [R6]
20ED32:  CMP             R2, R5
20ED34:  BEQ             loc_20ED56
20ED36:  MOVS            R0, #4
20ED38:  STR.W           R0, [R8]
20ED3C:  MOVS            R0, #0
20ED3E:  LDR             R1, [SP,#0x28+var_20]
20ED40:  LDR             R2, =(__stack_chk_guard_ptr - 0x20ED46)
20ED42:  ADD             R2, PC; __stack_chk_guard_ptr
20ED44:  LDR             R2, [R2]; __stack_chk_guard
20ED46:  LDR             R2, [R2]
20ED48:  CMP             R2, R1
20ED4A:  ITT EQ
20ED4C:  POPEQ.W         {R1-R3,R8-R11}
20ED50:  POPEQ           {R4-R7,PC}
20ED52:  BLX             __stack_chk_fail
20ED56:  CBZ             R1, loc_20ED64
20ED58:  MOVS            R0, #4
20ED5A:  STR.W           R0, [R8]
20ED5E:  MOV.W           R0, #0xFFFFFFFF
20ED62:  B               loc_20ED3E
20ED64:  CMP.W           R10, #0x2D ; '-'
20ED68:  IT EQ
20ED6A:  NEGEQ           R0, R0
20ED6C:  B               loc_20ED3E
