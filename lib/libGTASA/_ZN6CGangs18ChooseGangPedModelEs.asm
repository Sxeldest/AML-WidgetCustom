; =========================================================
; Game Engine Function: _ZN6CGangs18ChooseGangPedModelEs
; Address            : 0x49EF34 - 0x49F00E
; =========================================================

49EF34:  LDR             R1, =(_ZN6CGangs4GangE_ptr - 0x49EF3E)
49EF36:  LSLS            R2, R0, #4
49EF38:  ADDS            R0, #0x12
49EF3A:  ADD             R1, PC; _ZN6CGangs4GangE_ptr
49EF3C:  LDR             R1, [R1]; CGangs::Gang ...
49EF3E:  LDRB            R1, [R1,R2]
49EF40:  CMP             R1, #0xFF
49EF42:  BEQ             loc_49EF6C
49EF44:  LDR             R1, =(_ZN11CPopulation16CurrentWorldZoneE_ptr - 0x49EF50)
49EF46:  ADD.W           R0, R0, R0,LSL#1
49EF4A:  LDR             R2, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x49EF52)
49EF4C:  ADD             R1, PC; _ZN11CPopulation16CurrentWorldZoneE_ptr
49EF4E:  ADD             R2, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
49EF50:  LDR             R1, [R1]; CPopulation::CurrentWorldZone ...
49EF52:  LDR             R2, [R2]; CPopulation::m_TranslationArray ...
49EF54:  LDR             R1, [R1]; CPopulation::CurrentWorldZone
49EF56:  ADD.W           R0, R2, R0,LSL#2
49EF5A:  MOVS            R2, #0x2A ; '*'
49EF5C:  LDR.W           R0, [R0,R1,LSL#2]
49EF60:  LDR             R1, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x49EF68)
49EF62:  MULS            R0, R2
49EF64:  ADD             R1, PC; _ZN11CPopulation11m_PedGroupsE_ptr
49EF66:  LDR             R1, [R1]; CPopulation::m_PedGroups ...
49EF68:  LDRH            R0, [R1,R0]
49EF6A:  BX              LR
49EF6C:  PUSH            {R4-R7,LR}
49EF6E:  ADD             R7, SP, #0x14+var_8
49EF70:  PUSH.W          {R8-R11}
49EF74:  SUB             SP, SP, #4
49EF76:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x49EF82)
49EF78:  ADD.W           R9, R0, R0,LSL#1
49EF7C:  LDR             R2, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x49EF84)
49EF7E:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr ; int
49EF80:  ADD             R2, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
49EF82:  LDR             R4, [R1]; CPopulation::m_TranslationArray ...
49EF84:  LDR             R5, [R2]; CPopulation::m_nNumPedsInGroup ...
49EF86:  LDR.W           R0, [R4,R9,LSL#2]
49EF8A:  LDRSH.W         R0, [R5,R0,LSL#1]; this
49EF8E:  BLX             j__ZN8CCarCtrl12InitSequenceEi; CCarCtrl::InitSequence(int)
49EF92:  LDR.W           R0, [R4,R9,LSL#2]
49EF96:  LDRSH.W         R0, [R5,R0,LSL#1]
49EF9A:  CMP             R0, #1
49EF9C:  BLT             loc_49F002
49EF9E:  ADD.W           R0, R4, R9,LSL#2
49EFA2:  STR             R0, [SP,#0x28+var_28]
49EFA4:  LDR             R0, =(_ZN11CPopulation16CurrentWorldZoneE_ptr - 0x49EFAE)
49EFA6:  MOVS            R4, #0
49EFA8:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x49EFB0)
49EFAA:  ADD             R0, PC; _ZN11CPopulation16CurrentWorldZoneE_ptr
49EFAC:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr ; int
49EFAE:  LDR.W           R11, [R0]; CPopulation::CurrentWorldZone ...
49EFB2:  LDR             R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x49EFBA)
49EFB4:  LDR             R5, [R1]; CPopulation::m_TranslationArray ...
49EFB6:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
49EFB8:  LDR             R6, [R0]; CPopulation::m_PedGroups ...
49EFBA:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x49EFC0)
49EFBC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
49EFBE:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
49EFC2:  LDR             R0, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x49EFC8)
49EFC4:  ADD             R0, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
49EFC6:  LDR.W           R8, [R0]; CPopulation::m_nNumPedsInGroup ...
49EFCA:  MOV             R0, R4; this
49EFCC:  BLX             j__ZN8CCarCtrl19FindSequenceElementEi; CCarCtrl::FindSequenceElement(int)
49EFD0:  LDR.W           R1, [R11]; CPopulation::CurrentWorldZone
49EFD4:  ADD.W           R2, R5, R9,LSL#2
49EFD8:  LDR.W           R1, [R2,R1,LSL#2]
49EFDC:  MOVS            R2, #0x2A ; '*'
49EFDE:  MLA.W           R1, R1, R2, R6
49EFE2:  LDRH.W          R0, [R1,R0,LSL#1]
49EFE6:  ADD.W           R1, R0, R0,LSL#2
49EFEA:  ADD.W           R1, R10, R1,LSL#2
49EFEE:  LDRB            R1, [R1,#0x10]
49EFF0:  CMP             R1, #1
49EFF2:  BEQ             loc_49F006
49EFF4:  LDR             R0, [SP,#0x28+var_28]
49EFF6:  ADDS            R4, #1
49EFF8:  LDR             R0, [R0]
49EFFA:  LDRSH.W         R0, [R8,R0,LSL#1]
49EFFE:  CMP             R4, R0
49F000:  BLT             loc_49EFCA
49F002:  MOV.W           R0, #0xFFFFFFFF
49F006:  ADD             SP, SP, #4
49F008:  POP.W           {R8-R11}
49F00C:  POP             {R4-R7,PC}
