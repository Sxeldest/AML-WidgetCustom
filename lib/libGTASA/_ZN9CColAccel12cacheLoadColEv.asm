; =========================================================
; Game Engine Function: _ZN9CColAccel12cacheLoadColEv
; Address            : 0x466460 - 0x466524
; =========================================================

466460:  PUSH            {R4-R7,LR}
466462:  ADD             R7, SP, #0xC
466464:  PUSH.W          {R8-R11}
466468:  SUB             SP, SP, #4
46646A:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x466470)
46646C:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
46646E:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
466470:  LDR             R0, [R0]; CColAccel::m_iCacheState
466472:  CMP             R0, #2
466474:  BNE             loc_46651C
466476:  LDR             R0, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x46647C)
466478:  ADD             R0, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
46647A:  LDR             R0, [R0]; CColAccel::m_iNumColItems ...
46647C:  LDR             R0, [R0]; CColAccel::m_iNumColItems
46647E:  CMP             R0, #1
466480:  BLT             loc_46651C
466482:  LDR             R0, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x46648C)
466484:  MOVS            R6, #0
466486:  MOVS            R4, #0
466488:  ADD             R0, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
46648A:  LDR.W           R8, [R0]; CColAccel::mp_caccColItems ...
46648E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x466494)
466490:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
466492:  LDR.W           R9, [R0]; CModelInfo::ms_modelInfoPtrs ...
466496:  LDR             R0, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x46649C)
466498:  ADD             R0, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
46649A:  LDR.W           R10, [R0]; CColAccel::m_iNumColItems ...
46649E:  LDR.W           R0, [R8]; CColAccel::mp_caccColItems
4664A2:  ADD             R0, R6
4664A4:  LDR             R0, [R0,#0x28]
4664A6:  LDR.W           R11, [R9,R0,LSL#2]
4664AA:  MOVS            R0, #word_30; this
4664AC:  BLX             j__ZN9CColModelnwEj; CColModel::operator new(uint)
4664B0:  MOV             R5, R0
4664B2:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
4664B6:  LDR.W           R0, [R8]; CColAccel::mp_caccColItems
4664BA:  ADD             R0, R6
4664BC:  MOV             R1, R0
4664BE:  VLDR            D18, [R0,#0x20]
4664C2:  VLD1.32         {D16-D17}, [R1]!
4664C6:  VLD1.32         {D20-D21}, [R1]
4664CA:  MOV             R1, R5
4664CC:  VSTR            D18, [R5,#0x20]
4664D0:  VST1.32         {D16-D17}, [R1]!
4664D4:  VST1.32         {D20-D21}, [R1]
4664D8:  LDRB.W          R1, [R0,#0x2C]
4664DC:  LDRB.W          R2, [R5,#0x29]
4664E0:  STRB.W          R1, [R5,#0x28]
4664E4:  LDRB.W          R0, [R0,#0x2D]
4664E8:  AND.W           R1, R2, #0xFE
4664EC:  MOVS            R2, #1; bool
4664EE:  AND.W           R0, R0, #1
4664F2:  ORRS            R0, R1
4664F4:  STRB.W          R0, [R5,#0x29]
4664F8:  MOV             R0, R11; this
4664FA:  MOV             R1, R5; CColModel *
4664FC:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
466500:  LDR.W           R0, [R8]; CColAccel::mp_caccColItems
466504:  ADD             R0, R6
466506:  LDR             R1, [R0,#0x28]; int
466508:  LDRB.W          R0, [R0,#0x2C]; this
46650C:  BLX             j__ZN9CColStore17IncludeModelIndexEii; CColStore::IncludeModelIndex(int,int)
466510:  LDR.W           R0, [R10]; CColAccel::m_iNumColItems
466514:  ADDS            R4, #1
466516:  ADDS            R6, #0x30 ; '0'
466518:  CMP             R4, R0
46651A:  BLT             loc_46649E
46651C:  ADD             SP, SP, #4
46651E:  POP.W           {R8-R11}
466522:  POP             {R4-R7,PC}
