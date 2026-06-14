; =========================================================
; Game Engine Function: sub_107C5C
; Address            : 0x107C5C - 0x107CA2
; =========================================================

107C5C:  PUSH            {R4,R5,R7,LR}
107C5E:  ADD             R7, SP, #8
107C60:  MOV             R5, R0
107C62:  LDRB            R0, [R0,#8]
107C64:  MOV             R4, R1
107C66:  TST.W           R0, #0x18
107C6A:  BEQ             loc_107C70
107C6C:  MOVS            R2, #1
107C6E:  B               loc_107C92
107C70:  CBZ             R4, loc_107C9E
107C72:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107C7A)
107C74:  MOVS            R3, #0; s2d
107C76:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107C78:  LDR             R1, [R0]; lpstype
107C7A:  LDR             R0, =(_ZTIN10__cxxabiv117__pbase_type_infoE_ptr - 0x107C80)
107C7C:  ADD             R0, PC; _ZTIN10__cxxabiv117__pbase_type_infoE_ptr
107C7E:  LDR             R2, [R0]; lpdtype
107C80:  MOV             R0, R4; lpsrc
107C82:  BLX             j___dynamic_cast
107C86:  CBZ             R0, loc_107C9E
107C88:  LDRB            R0, [R0,#8]
107C8A:  ANDS.W          R2, R0, #0x18
107C8E:  IT NE
107C90:  MOVNE           R2, #1
107C92:  MOV             R0, R5
107C94:  MOV             R1, R4
107C96:  POP.W           {R4,R5,R7,LR}
107C9A:  B.W             sub_107A64
107C9E:  MOVS            R0, #0
107CA0:  POP             {R4,R5,R7,PC}
