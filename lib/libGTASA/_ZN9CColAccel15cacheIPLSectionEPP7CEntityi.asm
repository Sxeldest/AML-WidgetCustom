; =========================================================
; Game Engine Function: _ZN9CColAccel15cacheIPLSectionEPP7CEntityi
; Address            : 0x466698 - 0x4667E8
; =========================================================

466698:  PUSH            {R4-R7,LR}
46669A:  ADD             R7, SP, #0xC
46669C:  PUSH.W          {R8-R11}
4666A0:  SUB             SP, SP, #0x14
4666A2:  STR             R0, [SP,#0x30+var_20]
4666A4:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x4666AA)
4666A6:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
4666A8:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
4666AA:  LDR             R0, [R0]; CColAccel::m_iCacheState
4666AC:  CMP             R0, #1
4666AE:  BEQ.W           loc_4667B8
4666B2:  CMP             R0, #2
4666B4:  BNE.W           loc_4667E0
4666B8:  LDR             R0, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x4666C0)
4666BA:  LDR             R1, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x4666C4)
4666BC:  ADD             R0, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
4666BE:  LDR             R2, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4666C8)
4666C0:  ADD             R1, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
4666C2:  LDR             R0, [R0]; CColAccel::m_iNumSections ...
4666C4:  ADD             R2, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4666C6:  LDR             R1, [R1]; CColAccel::m_iSectionSize ...
4666C8:  LDR             R2, [R2]; CColAccel::m_iNumIPLItems ...
4666CA:  LDR             R0, [R0]; CColAccel::m_iNumSections
4666CC:  LDR             R1, [R1]; CColAccel::m_iSectionSize
4666CE:  LDR             R2, [R2]; CColAccel::m_iNumIPLItems
4666D0:  LDR.W           R3, [R1,R0,LSL#2]
4666D4:  CMP             R2, R3
4666D6:  BGE             loc_4667D6
4666D8:  LDR             R3, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x4666E0)
4666DA:  LDR             R5, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x4666E4)
4666DC:  ADD             R3, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
4666DE:  LDR             R4, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4666EA)
4666E0:  ADD             R5, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
4666E2:  LDR.W           R9, [R3]; CColAccel::mp_caccIPLItems ...
4666E6:  ADD             R4, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4666E8:  LDR             R3, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4666EE)
4666EA:  ADD             R3, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4666EC:  LDR.W           R8, [R3]; CColAccel::m_iNumIPLItems ...
4666F0:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4666F6)
4666F2:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4666F4:  LDR.W           R11, [R3]; CModelInfo::ms_modelInfoPtrs ...
4666F8:  LDR             R3, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x4666FE)
4666FA:  ADD             R3, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
4666FC:  LDR             R3, [R3]; CColAccel::m_iNumSections ...
4666FE:  STR             R3, [SP,#0x30+var_24]
466700:  LDR             R3, [R5]; CColAccel::m_iSectionSize ...
466702:  STR             R3, [SP,#0x30+var_28]
466704:  LDR             R3, [R4]; CColAccel::m_iNumIPLItems ...
466706:  STR             R3, [SP,#0x30+var_2C]
466708:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x46670E)
46670A:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
46670C:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
46670E:  STR             R3, [SP,#0x30+var_30]
466710:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x466716)
466712:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
466714:  LDR.W           R10, [R3]; CModelInfo::ms_modelInfoPtrs ...
466718:  B               loc_46675C
46671A:  LDR             R4, [R5,#4]
46671C:  LDR             R6, [SP,#0x30+var_20]
46671E:  LDR.W           R4, [R6,R4,LSL#2]
466722:  LDR             R6, [R4,#0x1C]
466724:  ORR.W           R6, R6, #0x100000
466728:  STR             R6, [R4,#0x1C]
46672A:  LDR             R4, [R3]
46672C:  LSLS            R6, R4, #0x1C
46672E:  BPL             loc_466778
466730:  LDR             R6, [R5,#8]
466732:  LDR.W           R6, [R10,R6,LSL#2]
466736:  LDRH            R4, [R6,#0x28]
466738:  ORR.W           R4, R4, #0x20 ; ' '
46673C:  STRH            R4, [R6,#0x28]
46673E:  LDR             R4, [R3]
466740:  LSLS            R6, R4, #0x1D
466742:  BPL             loc_46677C
466744:  LDR             R6, [R5,#8]
466746:  LDR             R4, [SP,#0x30+var_30]
466748:  LDR.W           R6, [R4,R6,LSL#2]
46674C:  MOVS            R4, #0x43C80000
466752:  STR             R4, [R6,#0x30]
466754:  LDR             R4, [R3]
466756:  LSLS            R3, R4, #0x1E
466758:  BMI             loc_466780
46675A:  B               loc_4667A8
46675C:  LDR.W           R3, [R9]; CColAccel::mp_caccIPLItems
466760:  ADD.W           R5, R2, R2,LSL#2
466764:  ADD.W           R5, R3, R5,LSL#2
466768:  MOV             R3, R5
46676A:  LDR.W           R4, [R3,#0x10]!
46676E:  TST.W           R4, #1
466772:  BNE             loc_46671A
466774:  LSLS            R6, R4, #0x1C
466776:  BMI             loc_466730
466778:  LSLS            R6, R4, #0x1D
46677A:  BMI             loc_466744
46677C:  LSLS            R3, R4, #0x1E
46677E:  BPL             loc_4667A8
466780:  LDRD.W          R0, R1, [R5,#8]
466784:  LDR.W           R5, [R11,R1,LSL#2]
466788:  LDR.W           R4, [R11,R0,LSL#2]
46678C:  MOV             R0, R5; this
46678E:  BLX             j__ZN14CBaseModelInfo20DeleteCollisionModelEv; CBaseModelInfo::DeleteCollisionModel(void)
466792:  LDR             R1, [R4,#0x2C]; CColModel *
466794:  MOV             R0, R5; this
466796:  MOVS            R2, #0; bool
466798:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
46679C:  LDR             R0, [SP,#0x30+var_24]
46679E:  LDR             R1, [SP,#0x30+var_28]
4667A0:  LDR             R2, [SP,#0x30+var_2C]
4667A2:  LDR             R0, [R0]
4667A4:  LDR             R1, [R1]
4667A6:  LDR             R2, [R2]
4667A8:  ADDS            R2, #1
4667AA:  STR.W           R2, [R8]; CColAccel::m_iNumIPLItems
4667AE:  LDR.W           R3, [R1,R0,LSL#2]
4667B2:  CMP             R2, R3
4667B4:  BLT             loc_46675C
4667B6:  B               loc_4667D6
4667B8:  LDR             R0, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x4667C0)
4667BA:  LDR             R1, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x4667C4)
4667BC:  ADD             R0, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
4667BE:  LDR             R2, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4667C6)
4667C0:  ADD             R1, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
4667C2:  ADD             R2, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4667C4:  LDR             R0, [R0]; CColAccel::m_iNumSections ...
4667C6:  LDR             R1, [R1]; CColAccel::m_iSectionSize ...
4667C8:  LDR             R2, [R2]; CColAccel::m_iNumIPLItems ...
4667CA:  LDR             R3, [R0]; CColAccel::m_iNumSections
4667CC:  LDR             R1, [R1]; CColAccel::m_iSectionSize
4667CE:  LDR             R2, [R2]; CColAccel::m_iNumIPLItems
4667D0:  STR.W           R2, [R1,R3,LSL#2]
4667D4:  LDR             R0, [R0]; CColAccel::m_iNumSections
4667D6:  LDR             R1, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x4667DE)
4667D8:  ADDS            R0, #1
4667DA:  ADD             R1, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
4667DC:  LDR             R1, [R1]; CColAccel::m_iNumSections ...
4667DE:  STR             R0, [R1]; CColAccel::m_iNumSections
4667E0:  ADD             SP, SP, #0x14
4667E2:  POP.W           {R8-R11}
4667E6:  POP             {R4-R7,PC}
