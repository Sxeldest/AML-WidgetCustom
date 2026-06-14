; =========================================================
; Game Engine Function: _ZN9CPopCycle12IsPedInGroupEii
; Address            : 0x4CBF28 - 0x4CBFDA
; =========================================================

4CBF28:  PUSH            {R4,R6,R7,LR}
4CBF2A:  ADD             R7, SP, #8
4CBF2C:  LDR             R2, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CBF38)
4CBF2E:  ADD.W           R12, R1, R1,LSL#1
4CBF32:  LDR             R3, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CBF3A)
4CBF34:  ADD             R2, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CBF36:  ADD             R3, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CBF38:  LDR             R2, [R2]; CPopulation::m_TranslationArray ...
4CBF3A:  LDR             R3, [R3]; CPopulation::m_nNumPedsInGroup ...
4CBF3C:  LDR.W           R1, [R2,R12,LSL#2]
4CBF40:  LDRSH.W         R4, [R3,R1,LSL#1]
4CBF44:  CMP             R4, #1
4CBF46:  BLT             loc_4CBF66
4CBF48:  LDR             R3, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CBF52)
4CBF4A:  MOV.W           LR, #0x2A ; '*'
4CBF4E:  ADD             R3, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CBF50:  LDR             R3, [R3]; CPopulation::m_PedGroups ...
4CBF52:  MLA.W           R3, R1, LR, R3
4CBF56:  MOVS            R1, #0
4CBF58:  LDRH.W          R2, [R3,R1,LSL#1]
4CBF5C:  CMP             R2, R0
4CBF5E:  BEQ             loc_4CBFD6
4CBF60:  ADDS            R1, #1
4CBF62:  CMP             R1, R4
4CBF64:  BLT             loc_4CBF58
4CBF66:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CBF6E)
4CBF68:  LDR             R2, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CBF70)
4CBF6A:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CBF6C:  ADD             R2, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CBF6E:  LDR             R1, [R1]; CPopulation::m_TranslationArray ...
4CBF70:  LDR             R2, [R2]; CPopulation::m_nNumPedsInGroup ...
4CBF72:  ADD.W           R1, R1, R12,LSL#2
4CBF76:  LDR             R1, [R1,#4]
4CBF78:  LDRSH.W         R2, [R2,R1,LSL#1]
4CBF7C:  CMP             R2, #1
4CBF7E:  BLT             loc_4CBF9C
4CBF80:  LDR             R3, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CBF88)
4CBF82:  MOVS            R4, #0x2A ; '*'
4CBF84:  ADD             R3, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CBF86:  LDR             R3, [R3]; CPopulation::m_PedGroups ...
4CBF88:  MLA.W           R3, R1, R4, R3
4CBF8C:  MOVS            R1, #0
4CBF8E:  LDRH.W          R4, [R3,R1,LSL#1]
4CBF92:  CMP             R4, R0
4CBF94:  BEQ             loc_4CBFD6
4CBF96:  ADDS            R1, #1
4CBF98:  CMP             R1, R2
4CBF9A:  BLT             loc_4CBF8E
4CBF9C:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CBFA4)
4CBF9E:  LDR             R2, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CBFA6)
4CBFA0:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CBFA2:  ADD             R2, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CBFA4:  LDR             R1, [R1]; CPopulation::m_TranslationArray ...
4CBFA6:  LDR             R3, [R2]; CPopulation::m_nNumPedsInGroup ...
4CBFA8:  ADD.W           R1, R1, R12,LSL#2
4CBFAC:  LDR             R2, [R1,#8]
4CBFAE:  LDRSH.W         R1, [R3,R2,LSL#1]
4CBFB2:  CMP             R1, #1
4CBFB4:  BLT             loc_4CBFD2
4CBFB6:  LDR             R3, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CBFBE)
4CBFB8:  MOVS            R4, #0x2A ; '*'
4CBFBA:  ADD             R3, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CBFBC:  LDR             R3, [R3]; CPopulation::m_PedGroups ...
4CBFBE:  MLA.W           R2, R2, R4, R3
4CBFC2:  MOVS            R3, #0
4CBFC4:  LDRH.W          R4, [R2,R3,LSL#1]
4CBFC8:  CMP             R4, R0
4CBFCA:  BEQ             loc_4CBFD6
4CBFCC:  ADDS            R3, #1
4CBFCE:  CMP             R3, R1
4CBFD0:  BLT             loc_4CBFC4
4CBFD2:  MOVS            R0, #0
4CBFD4:  POP             {R4,R6,R7,PC}
4CBFD6:  MOVS            R0, #1
4CBFD8:  POP             {R4,R6,R7,PC}
