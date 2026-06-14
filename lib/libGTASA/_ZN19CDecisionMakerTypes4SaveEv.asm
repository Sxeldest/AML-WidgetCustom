; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes4SaveEv
; Address            : 0x48962C - 0x4896B6
; =========================================================

48962C:  PUSH            {R4,R5,R7,LR}
48962E:  ADD             R7, SP, #8
489630:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x489638)
489632:  MOVS            R1, #dword_14; void *
489634:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
489636:  LDR             R0, [R0]; this
489638:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48963C:  MOVS            R0, #0x28 ; '('; byte_count
48963E:  BLX             malloc
489642:  MOV             R4, R0
489644:  LDR             R0, =(_ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr - 0x48964A)
489646:  ADD             R0, PC; _ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr
489648:  LDR             R0, [R0]; CDecisionMakerTypes::ScriptReferenceIndex ...
48964A:  ADD.W           R1, R0, #0x20 ; ' '
48964E:  VLD1.16         {D16-D17}, [R0]!
489652:  VLD1.16         {D18}, [R1]
489656:  MOVS            R1, #word_28; void *
489658:  VLD1.16         {D20-D21}, [R0]
48965C:  ADD.W           R0, R4, #0x20 ; ' '
489660:  VST1.8          {D18}, [R0]
489664:  MOV             R0, R4
489666:  VST1.8          {D16-D17}, [R0]!
48966A:  VST1.8          {D20-D21}, [R0]
48966E:  MOV             R0, R4; this
489670:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489674:  MOV             R0, R4; p
489676:  BLX             free
48967A:  LDR             R0, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x489682)
48967C:  MOVS            R1, #dword_14; void *
48967E:  ADD             R0, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
489680:  LDR             R0, [R0]; this
489682:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489686:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x48968C)
489688:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
48968A:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
48968C:  LDR             R4, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
48968E:  MOVW            R0, #0xF1C0; byte_count
489692:  BLX             malloc
489696:  MOV             R1, R4; void *
489698:  MOVW            R2, #0xF1C0; size_t
48969C:  MOV             R5, R0
48969E:  BLX             memcpy_1
4896A2:  MOV             R0, R5; this
4896A4:  MOVW            R1, #(elf_hash_bucket+0xF0C4); void *
4896A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4896AC:  MOV             R0, R5; p
4896AE:  POP.W           {R4,R5,R7,LR}
4896B2:  B.W             j_free
