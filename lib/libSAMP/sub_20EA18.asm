; =========================================================
; Game Engine Function: sub_20EA18
; Address            : 0x20EA18 - 0x20EACE
; =========================================================

20EA18:  PUSH            {R4-R7,LR}
20EA1A:  ADD             R7, SP, #0xC
20EA1C:  PUSH.W          {R6-R10}
20EA20:  MOV             R6, R0
20EA22:  LDR             R0, =(__stack_chk_guard_ptr - 0x20EA2C)
20EA24:  MOV             R8, R2
20EA26:  CMP             R6, R1
20EA28:  ADD             R0, PC; __stack_chk_guard_ptr
20EA2A:  LDR             R0, [R0]; __stack_chk_guard
20EA2C:  LDR             R0, [R0]
20EA2E:  STR             R0, [SP,#0x20+var_1C]
20EA30:  BEQ             loc_20EA7E
20EA32:  MOV             R9, R3
20EA34:  MOV             R5, R1
20EA36:  BLX             __errno
20EA3A:  MOV             R4, R0
20EA3C:  LDR.W           R10, [R0]
20EA40:  MOVS            R0, #0; this
20EA42:  STR             R0, [R4]
20EA44:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EA48:  MOV             R3, R0
20EA4A:  MOV             R1, SP
20EA4C:  MOV             R0, R6
20EA4E:  MOV             R2, R9
20EA50:  BL              sub_22033C
20EA54:  LDR             R2, [R4]
20EA56:  CBZ             R2, loc_20EA74
20EA58:  LDR             R3, [SP,#0x20+var_20]
20EA5A:  CMP             R3, R5
20EA5C:  BNE             loc_20EA7E
20EA5E:  CMP             R2, #0x22 ; '"'
20EA60:  BNE             loc_20EA9E
20EA62:  MOVS            R2, #4
20EA64:  STR.W           R2, [R8]
20EA68:  MOVS            R2, #0
20EA6A:  NEGS            R0, R0
20EA6C:  SBCS.W          R0, R2, R1
20EA70:  BLT             loc_20EAC8
20EA72:  B               loc_20EAB2
20EA74:  LDR             R2, [SP,#0x20+var_20]
20EA76:  STR.W           R10, [R4]
20EA7A:  CMP             R2, R5
20EA7C:  BEQ             loc_20EA9E
20EA7E:  MOVS            R0, #4
20EA80:  STR.W           R0, [R8]
20EA84:  MOVS            R0, #0
20EA86:  LDR             R1, [SP,#0x20+var_1C]
20EA88:  LDR             R2, =(__stack_chk_guard_ptr - 0x20EA8E)
20EA8A:  ADD             R2, PC; __stack_chk_guard_ptr
20EA8C:  LDR             R2, [R2]; __stack_chk_guard
20EA8E:  LDR             R2, [R2]
20EA90:  CMP             R2, R1
20EA92:  ITT EQ
20EA94:  POPEQ.W         {R2,R3,R8-R10}
20EA98:  POPEQ           {R4-R7,PC}
20EA9A:  BLX             __stack_chk_fail
20EA9E:  MOV             R3, #0x7FFFFFFF
20EAA2:  MOV.W           R2, #0xFFFFFFFF
20EAA6:  SUBS            R3, R3, R0
20EAA8:  SBCS            R2, R1
20EAAA:  BLT             loc_20EAB8
20EAAC:  MOVS            R0, #4
20EAAE:  STR.W           R0, [R8]
20EAB2:  MOV.W           R0, #0x80000000
20EAB6:  B               loc_20EA86
20EAB8:  SUBS.W          R2, R0, #0x80000000
20EABC:  SBCS.W          R1, R1, #0
20EAC0:  BLT             loc_20EA86
20EAC2:  MOVS            R0, #4
20EAC4:  STR.W           R0, [R8]
20EAC8:  MOV             R0, #0x7FFFFFFF
20EACC:  B               loc_20EA86
