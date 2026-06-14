; =========================================================
; Game Engine Function: sub_21F3A0
; Address            : 0x21F3A0 - 0x21F3F0
; =========================================================

21F3A0:  PUSH            {R4,R5,R7,LR}
21F3A2:  ADD             R7, SP, #8
21F3A4:  CBZ             R1, loc_21F3D8
21F3A6:  MOV             R4, R0
21F3A8:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x21F3B0)
21F3AA:  MOVS            R5, #0
21F3AC:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
21F3AE:  LDR             R3, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
21F3B0:  LDR             R0, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x21F3B6)
21F3B2:  ADD             R0, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
21F3B4:  LDR             R2, [R0]; lpdtype
21F3B6:  MOV             R0, R1; lpsrc
21F3B8:  MOV             R1, R3; lpstype
21F3BA:  MOVS            R3, #0; s2d
21F3BC:  BLX             j___dynamic_cast
21F3C0:  CBZ             R0, loc_21F3DA
21F3C2:  LDR             R2, [R4,#8]
21F3C4:  LDR             R1, [R0,#8]
21F3C6:  MVNS            R2, R2
21F3C8:  TST             R1, R2
21F3CA:  BNE             loc_21F3D8
21F3CC:  LDR             R1, [R0,#0xC]
21F3CE:  LDR             R2, [R4,#0xC]
21F3D0:  LDR             R1, [R1,#4]
21F3D2:  LDR             R2, [R2,#4]
21F3D4:  CMP             R2, R1
21F3D6:  BEQ             loc_21F3DE
21F3D8:  MOVS            R5, #0
21F3DA:  MOV             R0, R5
21F3DC:  POP             {R4,R5,R7,PC}
21F3DE:  LDR             R0, [R0,#0x10]
21F3E0:  LDR             R1, [R4,#0x10]
21F3E2:  LDR             R0, [R0,#4]
21F3E4:  LDR             R1, [R1,#4]
21F3E6:  SUBS            R0, R1, R0
21F3E8:  CLZ.W           R0, R0
21F3EC:  LSRS            R5, R0, #5
21F3EE:  B               loc_21F3DA
