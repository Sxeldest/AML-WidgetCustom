; =========================================================
; Game Engine Function: _ZN9CPopCycle30IsPedAppropriateForCurrentZoneEi
; Address            : 0x4CBE20 - 0x4CBF00
; =========================================================

4CBE20:  PUSH            {R4-R7,LR}
4CBE22:  ADD             R7, SP, #0xC
4CBE24:  PUSH.W          {R8-R11}
4CBE28:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CBE2E)
4CBE2A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CBE2C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CBE2E:  LDR.W           R1, [R1,R0,LSL#2]
4CBE32:  LDRB.W          R2, [R1,#0x52]
4CBE36:  CBZ             R2, loc_4CBE56
4CBE38:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CBE42)
4CBE3A:  SUBS            R2, #1
4CBE3C:  MOVS            R3, #1
4CBE3E:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CBE40:  LSL.W           R2, R3, R2
4CBE44:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CBE46:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo
4CBE48:  LDRH.W          R1, [R1,#0xF]
4CBE4C:  AND.W           R2, R2, R1,LSR#8
4CBE50:  LSLS            R2, R2, #0x1C
4CBE52:  BNE             loc_4CBE62
4CBE54:  B               loc_4CBEF0
4CBE56:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CBE5C)
4CBE58:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CBE5A:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CBE5C:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo
4CBE5E:  LDRH.W          R1, [R1,#0xF]
4CBE62:  LDR             R3, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBE72)
4CBE64:  AND.W           R11, R1, #0x1F
4CBE68:  LDR             R6, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBE76)
4CBE6A:  MOV.W           R5, #0x2D0
4CBE6E:  ADD             R3, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBE70:  LDR             R2, =(_ZN11CPopulation16CurrentWorldZoneE_ptr - 0x4CBE7C)
4CBE72:  ADD             R6, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBE74:  MOVS            R4, #0
4CBE76:  LDR             R3, [R3]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBE78:  ADD             R2, PC; _ZN11CPopulation16CurrentWorldZoneE_ptr
4CBE7A:  LDR             R6, [R6]; CPopCycle::m_nCurrentTimeIndex ...
4CBE7C:  MOV.W           R8, #0x2A ; '*'
4CBE80:  LDR             R2, [R2]; CPopulation::CurrentWorldZone ...
4CBE82:  LDR             R1, [R3]; CPopCycle::m_nCurrentTimeOfWeek
4CBE84:  LDR             R3, [R6]; CPopCycle::m_nCurrentTimeIndex
4CBE86:  LDR             R6, =(_ZN9CPopCycle16m_nPercTypeGroupE_ptr - 0x4CBE90)
4CBE88:  LDR.W           R12, [R2]; CPopulation::CurrentWorldZone
4CBE8C:  ADD             R6, PC; _ZN9CPopCycle16m_nPercTypeGroupE_ptr
4CBE8E:  LDR             R6, [R6]; CPopCycle::m_nPercTypeGroup ...
4CBE90:  MLA.W           R3, R3, R5, R6
4CBE94:  MOV.W           R6, #0x168
4CBE98:  LDR             R5, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CBEA4)
4CBE9A:  MLA.W           R3, R1, R6, R3
4CBE9E:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CBEA6)
4CBEA0:  ADD             R5, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CBEA2:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CBEA4:  LDR.W           R10, [R5]; CPopulation::m_nNumPedsInGroup ...
4CBEA8:  LDR.W           LR, [R1]; CPopulation::m_TranslationArray ...
4CBEAC:  LDR             R1, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CBEB2)
4CBEAE:  ADD             R1, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CBEB0:  LDR.W           R9, [R1]; CPopulation::m_PedGroups ...
4CBEB4:  ADD.W           R1, R11, R11,LSL#3
4CBEB8:  MOV             R6, R4
4CBEBA:  ADD.W           R1, R3, R1,LSL#1
4CBEBE:  LDRB            R1, [R1,R6]
4CBEC0:  CBZ             R1, loc_4CBEEA
4CBEC2:  ADD.W           R1, R6, R6,LSL#1
4CBEC6:  ADD.W           R1, LR, R1,LSL#2
4CBECA:  LDR.W           R1, [R1,R12,LSL#2]
4CBECE:  LDRSH.W         R4, [R10,R1,LSL#1]
4CBED2:  CMP             R4, #1
4CBED4:  BLT             loc_4CBEEA
4CBED6:  MLA.W           R5, R1, R8, R9
4CBEDA:  MOVS            R1, #0
4CBEDC:  LDRH.W          R2, [R5,R1,LSL#1]
4CBEE0:  CMP             R2, R0
4CBEE2:  BEQ             loc_4CBEF8
4CBEE4:  ADDS            R1, #1
4CBEE6:  CMP             R1, R4
4CBEE8:  BLT             loc_4CBEDC
4CBEEA:  ADDS            R4, R6, #1
4CBEEC:  CMP             R6, #0x11
4CBEEE:  BLT             loc_4CBEB4
4CBEF0:  MOVS            R0, #0
4CBEF2:  POP.W           {R8-R11}
4CBEF6:  POP             {R4-R7,PC}
4CBEF8:  MOVS            R0, #1
4CBEFA:  POP.W           {R8-R11}
4CBEFE:  POP             {R4-R7,PC}
