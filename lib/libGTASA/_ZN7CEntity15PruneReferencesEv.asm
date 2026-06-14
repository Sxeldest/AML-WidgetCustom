; =========================================================
; Game Engine Function: _ZN7CEntity15PruneReferencesEv
; Address            : 0x40EA60 - 0x40EAA8
; =========================================================

40EA60:  PUSH            {R4,R6,R7,LR}
40EA62:  ADD             R7, SP, #8
40EA64:  MOV             R1, R0
40EA66:  LDR.W           R3, [R1,#0x28]!
40EA6A:  CMP             R3, #0
40EA6C:  BEQ             locret_40EAA6
40EA6E:  LDR             R2, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EA78)
40EA70:  MOV.W           R12, #0
40EA74:  ADD             R2, PC; _ZN11CReferences10pEmptyListE_ptr
40EA76:  LDR             R2, [R2]; CReferences::pEmptyList ...
40EA78:  B               loc_40EA96
40EA7A:  STR.W           R3, [LR]
40EA7E:  CMP             R3, #0
40EA80:  LDR             R4, [R2]; CReferences::pEmptyList
40EA82:  STR             R4, [R1]
40EA84:  STR             R1, [R2]; CReferences::pEmptyList
40EA86:  STR.W           R12, [R1,#4]
40EA8A:  MOV             R1, R3
40EA8C:  BNE             loc_40EA9A
40EA8E:  B               locret_40EAA6
40EA90:  CMP             R3, #0
40EA92:  IT EQ
40EA94:  POPEQ           {R4,R6,R7,PC}
40EA96:  MOV             LR, R1
40EA98:  MOV             R1, R3
40EA9A:  LDRD.W          R3, R4, [R1]
40EA9E:  LDR             R4, [R4]
40EAA0:  CMP             R4, R0
40EAA2:  BNE             loc_40EA7A
40EAA4:  B               loc_40EA90
40EAA6:  POP             {R4,R6,R7,PC}
