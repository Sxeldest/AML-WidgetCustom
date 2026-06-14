; =========================================================
; Game Engine Function: sub_107F48
; Address            : 0x107F48 - 0x107F98
; =========================================================

107F48:  PUSH            {R4,R5,R7,LR}
107F4A:  ADD             R7, SP, #8
107F4C:  CBZ             R1, loc_107F80
107F4E:  MOV             R4, R0
107F50:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107F58)
107F52:  MOVS            R5, #0
107F54:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107F56:  LDR             R3, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
107F58:  LDR             R0, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x107F5E)
107F5A:  ADD             R0, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
107F5C:  LDR             R2, [R0]; lpdtype
107F5E:  MOV             R0, R1; lpsrc
107F60:  MOV             R1, R3; lpstype
107F62:  MOVS            R3, #0; s2d
107F64:  BLX             j___dynamic_cast
107F68:  CBZ             R0, loc_107F82
107F6A:  LDR             R2, [R4,#8]
107F6C:  LDR             R1, [R0,#8]
107F6E:  MVNS            R2, R2
107F70:  TST             R1, R2
107F72:  BNE             loc_107F80
107F74:  LDR             R1, [R0,#0xC]
107F76:  LDR             R2, [R4,#0xC]
107F78:  LDR             R1, [R1,#4]
107F7A:  LDR             R2, [R2,#4]
107F7C:  CMP             R2, R1
107F7E:  BEQ             loc_107F86
107F80:  MOVS            R5, #0
107F82:  MOV             R0, R5
107F84:  POP             {R4,R5,R7,PC}
107F86:  LDR             R0, [R0,#0x10]
107F88:  LDR             R1, [R4,#0x10]
107F8A:  LDR             R0, [R0,#4]
107F8C:  LDR             R1, [R1,#4]
107F8E:  SUBS            R0, R1, R0
107F90:  CLZ.W           R0, R0
107F94:  LSRS            R5, R0, #5
107F96:  B               loc_107F82
