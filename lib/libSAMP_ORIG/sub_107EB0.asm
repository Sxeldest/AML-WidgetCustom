; =========================================================
; Game Engine Function: sub_107EB0
; Address            : 0x107EB0 - 0x107F3C
; =========================================================

107EB0:  PUSH            {R4-R7,LR}
107EB2:  ADD             R7, SP, #0xC
107EB4:  PUSH.W          {R8,R9,R11}
107EB8:  MOV             R5, R0
107EBA:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107EC2)
107EBC:  MOVS            R6, #0
107EBE:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107EC0:  LDR.W           R8, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
107EC4:  LDR             R0, =(_ZTIN10__cxxabiv119__pointer_type_infoE_ptr - 0x107ECA)
107EC6:  ADD             R0, PC; _ZTIN10__cxxabiv119__pointer_type_infoE_ptr
107EC8:  LDR.W           R9, [R0]; `typeinfo for'__cxxabiv1::__pointer_type_info ...
107ECC:  CBZ             R1, loc_107F32
107ECE:  MOV             R0, R1; lpsrc
107ED0:  MOV             R1, R8; lpstype
107ED2:  MOV             R2, R9; lpdtype
107ED4:  MOVS            R3, #0; s2d
107ED6:  BLX             j___dynamic_cast
107EDA:  CBZ             R0, loc_107F34
107EDC:  LDR             R1, [R5,#8]
107EDE:  MOV             R4, R0
107EE0:  LDR             R0, [R0,#8]
107EE2:  MVNS            R2, R1
107EE4:  TST             R0, R2
107EE6:  BNE             loc_107F32
107EE8:  LDR             R0, [R4,#0xC]
107EEA:  LDR             R2, [R0,#4]
107EEC:  LDR             R0, [R5,#0xC]; lpsrc
107EEE:  LDR             R3, [R0,#4]
107EF0:  CMP             R3, R2
107EF2:  BEQ             loc_107F0A
107EF4:  LSLS            R1, R1, #0x1F
107EF6:  BEQ             loc_107F32
107EF8:  MOV             R1, R8; lpstype
107EFA:  MOV             R2, R9; lpdtype
107EFC:  MOVS            R3, #0; s2d
107EFE:  BLX             j___dynamic_cast
107F02:  CBZ             R0, loc_107F0E
107F04:  LDR             R1, [R4,#0xC]
107F06:  MOV             R5, R0
107F08:  B               loc_107ECC
107F0A:  MOVS            R6, #1
107F0C:  B               loc_107F34
107F0E:  LDR             R0, [R5,#0xC]; lpsrc
107F10:  CBZ             R0, loc_107F32
107F12:  LDR             R1, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x107F1C)
107F14:  MOVS            R3, #0; s2d
107F16:  MOVS            R6, #0
107F18:  ADD             R1, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
107F1A:  LDR             R2, [R1]; lpdtype
107F1C:  MOV             R1, R8; lpstype
107F1E:  BLX             j___dynamic_cast
107F22:  CBZ             R0, loc_107F34
107F24:  LDR             R1, [R4,#0xC]; lpsrc
107F26:  POP.W           {R8,R9,R11}
107F2A:  POP.W           {R4-R7,LR}
107F2E:  B.W             sub_107F48
107F32:  MOVS            R6, #0
107F34:  MOV             R0, R6
107F36:  POP.W           {R8,R9,R11}
107F3A:  POP             {R4-R7,PC}
