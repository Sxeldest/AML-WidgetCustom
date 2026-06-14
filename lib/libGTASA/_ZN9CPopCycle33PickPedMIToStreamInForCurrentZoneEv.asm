; =========================================================
; Game Engine Function: _ZN9CPopCycle33PickPedMIToStreamInForCurrentZoneEv
; Address            : 0x4CBBBC - 0x4CBDE4
; =========================================================

4CBBBC:  PUSH            {R4-R7,LR}
4CBBBE:  ADD             R7, SP, #0xC
4CBBC0:  PUSH.W          {R8-R11}
4CBBC4:  SUB             SP, SP, #4
4CBBC6:  VPUSH           {D8-D9}
4CBBCA:  SUB             SP, SP, #0x50
4CBBCC:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CBBDC)
4CBBCE:  MOV.W           R8, #0
4CBBD2:  LDR             R1, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CBBE0)
4CBBD4:  MOV.W           R6, #0x2D0
4CBBD8:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CBBDA:  LDR             R2, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CBBE8)
4CBBDC:  ADD             R1, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CBBDE:  VLDR            S16, =0.000015259
4CBBE2:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CBBE4:  ADD             R2, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CBBE6:  STR             R0, [SP,#0x80+var_5C]
4CBBE8:  MOV.W           R4, #0x168
4CBBEC:  LDR             R0, =(_ZN9CPopCycle16m_nPercTypeGroupE_ptr - 0x4CBBF4)
4CBBEE:  LDR             R1, [R1]; CPopCycle::m_pCurrZoneInfo ...
4CBBF0:  ADD             R0, PC; _ZN9CPopCycle16m_nPercTypeGroupE_ptr
4CBBF2:  STR             R1, [SP,#0x80+var_60]
4CBBF4:  LDR             R1, [R2]; CPopCycle::m_nCurrentTimeOfWeek ...
4CBBF6:  LDR             R0, [R0]; CPopCycle::m_nPercTypeGroup ...
4CBBF8:  STR             R0, [SP,#0x80+var_68]
4CBBFA:  LDR             R0, =(_ZN11CPopulation16CurrentWorldZoneE_ptr - 0x4CBC02)
4CBBFC:  STR             R1, [SP,#0x80+var_64]
4CBBFE:  ADD             R0, PC; _ZN11CPopulation16CurrentWorldZoneE_ptr
4CBC00:  LDR             R1, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x4CBC0A)
4CBC02:  LDR             R2, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x4CBC0E)
4CBC04:  LDR             R0, [R0]; CPopulation::CurrentWorldZone ...
4CBC06:  ADD             R1, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
4CBC08:  STR             R0, [SP,#0x80+var_6C]
4CBC0A:  ADD             R2, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
4CBC0C:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x4CBC14)
4CBC0E:  LDR             R1, [R1]; CPopulation::m_TranslationArray ...
4CBC10:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
4CBC12:  STR             R1, [SP,#0x80+var_70]
4CBC14:  LDR             R1, [R2]; CPopulation::m_nNumPedsInGroup ...
4CBC16:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
4CBC18:  STR             R0, [SP,#0x80+var_78]
4CBC1A:  LDR             R0, =(_ZN10CStreaming25ms_NextPedToLoadFromGroupE_ptr - 0x4CBC24)
4CBC1C:  STR             R1, [SP,#0x80+var_74]
4CBC1E:  LDR             R1, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x4CBC2A)
4CBC20:  ADD             R0, PC; _ZN10CStreaming25ms_NextPedToLoadFromGroupE_ptr
4CBC22:  VLDR            S18, =100.0
4CBC26:  ADD             R1, PC; _ZN11CPopulation11m_PedGroupsE_ptr
4CBC28:  LDR             R0, [R0]; CStreaming::ms_NextPedToLoadFromGroup ...
4CBC2A:  STR             R0, [SP,#0x80+var_44]
4CBC2C:  LDR             R0, [R1]; CPopulation::m_PedGroups ...
4CBC2E:  STR             R0, [SP,#0x80+var_48]
4CBC30:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x4CBC36)
4CBC32:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
4CBC34:  LDR.W           R9, [R0]; CStreaming::ms_pedsLoaded ...
4CBC38:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CBC3E)
4CBC3A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CBC3C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CBC3E:  STR             R0, [SP,#0x80+var_4C]
4CBC40:  LDR             R0, =(_ZN9CPopCycle16m_nPercTypeGroupE_ptr - 0x4CBC46)
4CBC42:  ADD             R0, PC; _ZN9CPopCycle16m_nPercTypeGroupE_ptr
4CBC44:  LDR             R0, [R0]; CPopCycle::m_nPercTypeGroup ...
4CBC46:  STR             R0, [SP,#0x80+var_7C]
4CBC48:  BLX             rand
4CBC4C:  UXTH            R0, R0
4CBC4E:  VMOV            S0, R0
4CBC52:  VCVT.F32.S32    S0, S0
4CBC56:  LDR             R0, [SP,#0x80+var_5C]
4CBC58:  LDR             R2, [R0]
4CBC5A:  LDR             R0, [SP,#0x80+var_60]
4CBC5C:  VMUL.F32        S0, S0, S16
4CBC60:  LDR             R1, [R0]
4CBC62:  LDR             R0, [SP,#0x80+var_64]
4CBC64:  STR             R1, [SP,#0x80+var_54]
4CBC66:  LDRH.W          R1, [R1,#0xF]
4CBC6A:  LDR             R3, [R0]
4CBC6C:  LDR             R0, [SP,#0x80+var_68]
4CBC6E:  AND.W           R1, R1, #0x1F
4CBC72:  MLA.W           R0, R2, R6, R0
4CBC76:  VMUL.F32        S0, S0, S18
4CBC7A:  ADD.W           R5, R1, R1,LSL#3
4CBC7E:  MLA.W           R0, R3, R4, R0
4CBC82:  LDRB.W          R1, [R0,R5,LSL#1]
4CBC86:  VCVT.S32.F32    S0, S0
4CBC8A:  STR.W           R8, [SP,#0x80+var_58]
4CBC8E:  VMOV            R0, S0
4CBC92:  CMP             R0, R1
4CBC94:  BGE             loc_4CBC9C
4CBC96:  MOV.W           R11, #0
4CBC9A:  B               loc_4CBCC0
4CBC9C:  MULS            R3, R4
4CBC9E:  MOV.W           R11, #0
4CBCA2:  MLA.W           R2, R2, R6, R3
4CBCA6:  LDR             R3, [SP,#0x80+var_7C]
4CBCA8:  ADD.W           R2, R2, R5,LSL#1
4CBCAC:  ADD             R2, R3
4CBCAE:  ADDS            R2, #1
4CBCB0:  LDRB.W          R3, [R2,R11]
4CBCB4:  SUBS            R0, R0, R1
4CBCB6:  ADD.W           R11, R11, #1
4CBCBA:  CMP             R0, R3
4CBCBC:  MOV             R1, R3
4CBCBE:  BGE             loc_4CBCB0
4CBCC0:  LDR             R1, [SP,#0x80+var_6C]
4CBCC2:  ADD.W           R0, R11, R11,LSL#1
4CBCC6:  LDR             R2, [SP,#0x80+var_70]
4CBCC8:  LDR             R1, [R1]
4CBCCA:  ADD.W           R0, R2, R0,LSL#2
4CBCCE:  LDR.W           R1, [R0,R1,LSL#2]
4CBCD2:  LDR             R0, [SP,#0x80+var_74]
4CBCD4:  STR             R1, [SP,#0x80+var_34]
4CBCD6:  LDRSH.W         R3, [R0,R1,LSL#1]
4CBCDA:  CMP             R3, #1
4CBCDC:  BLT             loc_4CBDBE
4CBCDE:  LDR             R0, [SP,#0x80+var_78]
4CBCE0:  MOV.W           R10, #0
4CBCE4:  STR             R3, [SP,#0x80+var_50]
4CBCE6:  LDR             R1, [R0]
4CBCE8:  STR             R1, [SP,#0x80+var_38]
4CBCEA:  LDR             R1, [R0,#4]
4CBCEC:  LDR             R0, [R0,#8]
4CBCEE:  STR             R1, [SP,#0x80+var_3C]
4CBCF0:  STR             R0, [SP,#0x80+var_40]
4CBCF2:  LDR             R2, [SP,#0x80+var_34]
4CBCF4:  MOVS            R0, #0x2A ; '*'
4CBCF6:  LDR             R4, [SP,#0x80+var_44]
4CBCF8:  LDR             R1, [SP,#0x80+var_48]
4CBCFA:  MLA.W           R8, R2, R0, R1
4CBCFE:  MOV             R1, R3
4CBD00:  LDR.W           R0, [R4,R11,LSL#2]
4CBD04:  ADDS            R0, #1
4CBD06:  BLX             __aeabi_idivmod
4CBD0A:  LDRH.W          R0, [R8,R1,LSL#1]
4CBD0E:  ADD.W           R6, R9, #0xC
4CBD12:  STR.W           R1, [R4,R11,LSL#2]
4CBD16:  LDR             R1, [SP,#0x80+var_3C]
4CBD18:  CMP             R1, R0
4CBD1A:  MOV.W           R1, #0
4CBD1E:  IT NE
4CBD20:  MOVNE           R1, #1
4CBD22:  LDR             R2, [SP,#0x80+var_38]
4CBD24:  CMP             R2, R0
4CBD26:  MOV.W           R2, #0
4CBD2A:  IT NE
4CBD2C:  MOVNE           R2, #1
4CBD2E:  ANDS            R1, R2
4CBD30:  LDR             R2, [SP,#0x80+var_40]
4CBD32:  CMP             R2, R0
4CBD34:  MOV.W           R2, #0
4CBD38:  IT NE
4CBD3A:  MOVNE           R2, #1
4CBD3C:  ANDS            R1, R2
4CBD3E:  LDM             R6, {R2,R3,R6}
4CBD40:  CMP             R2, R0
4CBD42:  MOV.W           R2, #0
4CBD46:  LDRD.W          R5, R4, [R9,#(dword_792BC4 - 0x792BAC)]
4CBD4A:  IT NE
4CBD4C:  MOVNE           R2, #1
4CBD4E:  ANDS            R1, R2
4CBD50:  LDR             R2, [SP,#0x80+var_4C]
4CBD52:  CMP             R3, R0
4CBD54:  MOV.W           R3, #0
4CBD58:  LDR.W           R2, [R2,R0,LSL#2]
4CBD5C:  IT NE
4CBD5E:  MOVNE           R3, #1
4CBD60:  CMP             R6, R0
4CBD62:  MOV.W           R6, #0
4CBD66:  AND.W           R3, R3, R1
4CBD6A:  IT NE
4CBD6C:  MOVNE           R6, #1
4CBD6E:  LDRB.W          R1, [R2,#0x52]
4CBD72:  AND.W           R2, R3, R6
4CBD76:  CMP             R5, R0
4CBD78:  MOV.W           R3, #0
4CBD7C:  IT NE
4CBD7E:  MOVNE           R3, #1
4CBD80:  CMP             R4, R0
4CBD82:  AND.W           R2, R2, R3
4CBD86:  MOV.W           R3, #0
4CBD8A:  IT NE
4CBD8C:  MOVNE           R3, #1
4CBD8E:  CMP             R1, #0
4CBD90:  AND.W           R2, R2, R3
4CBD94:  BEQ             loc_4CBDB2
4CBD96:  LDR             R3, [SP,#0x80+var_54]
4CBD98:  SUBS            R1, #1
4CBD9A:  MOVS            R6, #1
4CBD9C:  LSL.W           R1, R6, R1
4CBDA0:  LDRB            R3, [R3,#0x10]
4CBDA2:  ANDS            R1, R3
4CBDA4:  ANDS.W          R1, R1, #0xF
4CBDA8:  IT NE
4CBDAA:  MOVNE           R1, #1
4CBDAC:  TST             R2, R1
4CBDAE:  BEQ             loc_4CBDB4
4CBDB0:  B               loc_4CBDD6
4CBDB2:  CBNZ            R2, loc_4CBDD6
4CBDB4:  LDR             R3, [SP,#0x80+var_50]
4CBDB6:  ADD.W           R10, R10, #1
4CBDBA:  CMP             R10, R3
4CBDBC:  BLT             loc_4CBCF2
4CBDBE:  LDR             R1, [SP,#0x80+var_58]
4CBDC0:  MOV.W           R6, #0x2D0
4CBDC4:  MOV.W           R4, #0x168
4CBDC8:  ADDS            R0, R1, #1
4CBDCA:  CMP             R1, #9
4CBDCC:  MOV             R8, R0
4CBDCE:  BLT.W           loc_4CBC48
4CBDD2:  MOV.W           R0, #0xFFFFFFFF
4CBDD6:  ADD             SP, SP, #0x50 ; 'P'
4CBDD8:  VPOP            {D8-D9}
4CBDDC:  ADD             SP, SP, #4
4CBDDE:  POP.W           {R8-R11}
4CBDE2:  POP             {R4-R7,PC}
