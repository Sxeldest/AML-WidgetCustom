; =========================================================
; Game Engine Function: sub_20EAD8
; Address            : 0x20EAD8 - 0x20EB6E
; =========================================================

20EAD8:  PUSH            {R4-R7,LR}
20EADA:  ADD             R7, SP, #0xC
20EADC:  PUSH.W          {R6-R10}
20EAE0:  MOV             R4, R0
20EAE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EAEC)
20EAE4:  MOV             R8, R2
20EAE6:  CMP             R4, R1
20EAE8:  ADD             R0, PC; __stack_chk_guard_ptr
20EAEA:  LDR             R0, [R0]; __stack_chk_guard
20EAEC:  LDR             R0, [R0]
20EAEE:  STR             R0, [SP,#0x20+var_1C]
20EAF0:  BEQ             loc_20EB4C
20EAF2:  MOV             R9, R3
20EAF4:  MOV             R5, R1
20EAF6:  BLX             __errno
20EAFA:  MOV             R6, R0
20EAFC:  LDR.W           R10, [R0]
20EB00:  MOVS            R0, #0; this
20EB02:  STR             R0, [R6]
20EB04:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EB08:  MOV             R3, R0
20EB0A:  MOV             R1, SP
20EB0C:  MOV             R0, R4
20EB0E:  MOV             R2, R9
20EB10:  BL              sub_22033C
20EB14:  LDR             R2, [R6]
20EB16:  CBZ             R2, loc_20EB42
20EB18:  LDR             R3, [SP,#0x20+var_20]
20EB1A:  CMP             R3, R5
20EB1C:  BNE             loc_20EB4C
20EB1E:  CMP             R2, #0x22 ; '"'
20EB20:  BNE             loc_20EB56
20EB22:  MOVS            R2, #4
20EB24:  STR.W           R2, [R8]
20EB28:  MOVS            R2, #0
20EB2A:  NEGS            R0, R0
20EB2C:  SBCS.W          R0, R2, R1
20EB30:  ITTEE GE
20EB32:  MOVGE.W         R1, #0x80000000
20EB36:  MOVGE           R0, #0
20EB38:  MOVLT           R1, #0x7FFFFFFF
20EB3C:  MOVLT.W         R0, #0xFFFFFFFF
20EB40:  B               loc_20EB56
20EB42:  LDR             R2, [SP,#0x20+var_20]
20EB44:  STR.W           R10, [R6]
20EB48:  CMP             R2, R5
20EB4A:  BEQ             loc_20EB56
20EB4C:  MOVS            R0, #4
20EB4E:  MOVS            R1, #0
20EB50:  STR.W           R0, [R8]
20EB54:  MOVS            R0, #0
20EB56:  LDR             R2, [SP,#0x20+var_1C]
20EB58:  LDR             R3, =(__stack_chk_guard_ptr - 0x20EB5E)
20EB5A:  ADD             R3, PC; __stack_chk_guard_ptr
20EB5C:  LDR             R3, [R3]; __stack_chk_guard
20EB5E:  LDR             R3, [R3]
20EB60:  CMP             R3, R2
20EB62:  ITT EQ
20EB64:  POPEQ.W         {R2,R3,R8-R10}
20EB68:  POPEQ           {R4-R7,PC}
20EB6A:  BLX             __stack_chk_fail
