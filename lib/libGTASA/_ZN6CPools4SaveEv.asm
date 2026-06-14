; =========================================================
; Game Engine Function: _ZN6CPools4SaveEv
; Address            : 0x488C9C - 0x488ED4
; =========================================================

488C9C:  PUSH            {R4-R7,LR}
488C9E:  ADD             R7, SP, #0xC
488CA0:  PUSH.W          {R8,R9,R11}
488CA4:  BLX             j__ZN6CPools11SavePedPoolEv; CPools::SavePedPool(void)
488CA8:  BLX             j__ZN6CPools15SaveVehiclePoolEv; CPools::SaveVehiclePool(void)
488CAC:  LDR             R0, =(IsMissionSave_ptr - 0x488CB2)
488CAE:  ADD             R0, PC; IsMissionSave_ptr
488CB0:  LDR             R0, [R0]; IsMissionSave
488CB2:  LDRB            R0, [R0]; this
488CB4:  CMP             R0, #0
488CB6:  BEQ.W           loc_488E0E
488CBA:  BLX             j__ZN6CPools12SavePedTasksEv; CPools::SavePedTasks(void)
488CBE:  BLX             j__ZN10CPedGroups4SaveEv; CPedGroups::Save(void)
488CC2:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x488CCA)
488CC4:  MOVS            R1, #dword_14; void *
488CC6:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
488CC8:  LDR             R0, [R0]; this
488CCA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488CCE:  MOVS            R0, #0x28 ; '('; byte_count
488CD0:  BLX             malloc
488CD4:  MOV             R4, R0
488CD6:  LDR             R0, =(_ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr - 0x488CDC)
488CD8:  ADD             R0, PC; _ZN19CDecisionMakerTypes20ScriptReferenceIndexE_ptr
488CDA:  LDR             R0, [R0]; CDecisionMakerTypes::ScriptReferenceIndex ...
488CDC:  ADD.W           R1, R0, #0x20 ; ' '
488CE0:  VLD1.16         {D16-D17}, [R0]!
488CE4:  VLD1.16         {D18}, [R1]
488CE8:  MOVS            R1, #word_28; void *
488CEA:  VLD1.16         {D20-D21}, [R0]
488CEE:  ADD.W           R0, R4, #0x20 ; ' '
488CF2:  VST1.8          {D18}, [R0]
488CF6:  MOV             R0, R4
488CF8:  VST1.8          {D16-D17}, [R0]!
488CFC:  VST1.8          {D20-D21}, [R0]
488D00:  MOV             R0, R4; this
488D02:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488D06:  MOV             R0, R4; p
488D08:  BLX             free
488D0C:  LDR             R0, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x488D14)
488D0E:  MOVS            R1, #dword_14; void *
488D10:  ADD             R0, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
488D12:  LDR             R0, [R0]; this
488D14:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488D18:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x488D1E)
488D1A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
488D1C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
488D1E:  LDR             R4, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
488D20:  MOVW            R0, #0xF1C0; byte_count
488D24:  BLX             malloc
488D28:  MOV             R1, R4; void *
488D2A:  MOVW            R2, #0xF1C0; size_t
488D2E:  MOV             R5, R0
488D30:  BLX             memcpy_1
488D34:  MOV             R0, R5; this
488D36:  MOVW            R1, #(elf_hash_bucket+0xF0C4); void *
488D3A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488D3E:  MOV             R0, R5; p
488D40:  BLX             free
488D44:  MOVS            R0, #0x40 ; '@'; byte_count
488D46:  BLX             malloc
488D4A:  MOV             R4, R0
488D4C:  LDR             R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x488D52)
488D4E:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
488D50:  LDR             R5, [R0]; CUserDisplay::OnscnTimer ...
488D52:  ADD.W           R1, R5, #0x30 ; '0'
488D56:  MOV             R0, R5
488D58:  VLD1.32         {D18-D19}, [R1]
488D5C:  ADD.W           R1, R5, #0x20 ; ' '
488D60:  VLD1.32         {D16-D17}, [R0]!
488D64:  VLD1.32         {D22-D23}, [R0]
488D68:  ADD.W           R0, R4, #0x30 ; '0'
488D6C:  VLD1.32         {D20-D21}, [R1]
488D70:  MOVS            R1, #dword_40; void *
488D72:  VST1.8          {D18-D19}, [R0]
488D76:  ADD.W           R0, R4, #0x20 ; ' '
488D7A:  VST1.8          {D20-D21}, [R0]
488D7E:  MOV             R0, R4
488D80:  VST1.8          {D16-D17}, [R0]!
488D84:  VST1.8          {D22-D23}, [R0]
488D88:  MOV             R0, R4; this
488D8A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488D8E:  MOV             R0, R4; p
488D90:  BLX             free
488D94:  MOV.W           R0, #0x110; byte_count
488D98:  BLX             malloc
488D9C:  ADD.W           R1, R5, #0x40 ; '@'; void *
488DA0:  MOV.W           R2, #0x110; size_t
488DA4:  MOV             R4, R0
488DA6:  BLX             memcpy_1
488DAA:  MOV             R0, R4; this
488DAC:  MOV.W           R1, #(elf_hash_bucket+0x14); void *
488DB0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488DB4:  MOV             R0, R4; p
488DB6:  BLX             free
488DBA:  BLX             j__ZN22CPedScriptedTaskRecord4SaveEv; CPedScriptedTaskRecord::Save(void)
488DBE:  BLX             j__ZN12CAudioEngine4SaveEv; CAudioEngine::Save(void)
488DC2:  MOVS            R0, #4; byte_count
488DC4:  BLX             malloc
488DC8:  MOV             R4, R0
488DCA:  LDR             R0, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x488DD2)
488DCC:  MOVS            R1, #byte_4; void *
488DCE:  ADD             R0, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
488DD0:  LDR             R0, [R0]; CCarCtrl::CarDensityMultiplier ...
488DD2:  LDR             R0, [R0]; CCarCtrl::CarDensityMultiplier
488DD4:  STR             R0, [R4]
488DD6:  MOV             R0, R4; this
488DD8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488DDC:  MOV             R0, R4; p
488DDE:  BLX             free
488DE2:  LDR             R0, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x488DEA)
488DE4:  MOVS            R1, #(stderr+1); void *
488DE6:  ADD             R0, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
488DE8:  LDR             R0, [R0]; this
488DEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488DEE:  MOVS            R0, #4; byte_count
488DF0:  BLX             malloc
488DF4:  MOV             R4, R0
488DF6:  LDR             R0, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x488DFE)
488DF8:  MOVS            R1, #byte_4; void *
488DFA:  ADD             R0, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
488DFC:  LDR             R0, [R0]; CPopulation::PedDensityMultiplier ...
488DFE:  LDR             R0, [R0]; CPopulation::PedDensityMultiplier
488E00:  STR             R0, [R4]
488E02:  MOV             R0, R4; this
488E04:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488E08:  MOV             R0, R4; p
488E0A:  BLX             free
488E0E:  LDR             R0, =(IsMissionSave_ptr - 0x488E14)
488E10:  ADD             R0, PC; IsMissionSave_ptr ; this
488E12:  LDR             R5, [R0]; IsMissionSave
488E14:  BLX             j__ZN6CPools14SaveObjectPoolEv; CPools::SaveObjectPool(void)
488E18:  MOV             R8, R0
488E1A:  LDRB            R0, [R5]
488E1C:  CMP             R0, #0
488E1E:  BEQ             loc_488ECC
488E20:  LDR             R0, =(UseDataFence_ptr - 0x488E26)
488E22:  ADD             R0, PC; UseDataFence_ptr
488E24:  LDR             R0, [R0]; UseDataFence
488E26:  LDRB            R6, [R0]
488E28:  CBZ             R6, loc_488E68
488E2A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x488E36)
488E2C:  MOVS            R3, #0
488E2E:  LDR             R1, =(UseDataFence_ptr - 0x488E38)
488E30:  LDR             R2, =(DataFence_ptr - 0x488E3A)
488E32:  ADD             R0, PC; currentSaveFenceCount_ptr
488E34:  ADD             R1, PC; UseDataFence_ptr
488E36:  ADD             R2, PC; DataFence_ptr
488E38:  LDR             R0, [R0]; currentSaveFenceCount
488E3A:  LDR.W           R9, [R1]; UseDataFence
488E3E:  LDR             R1, [R2]; DataFence
488E40:  LDR             R2, [R0]
488E42:  STRB.W          R3, [R9]
488E46:  LDRH            R1, [R1]
488E48:  ADDS            R3, R2, #1
488E4A:  STR             R3, [R0]
488E4C:  MOVS            R0, #2; byte_count
488E4E:  ADDS            R4, R2, R1
488E50:  BLX             malloc
488E54:  MOV             R5, R0
488E56:  MOVS            R1, #(stderr+2); void *
488E58:  STRH            R4, [R5]
488E5A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488E5E:  MOV             R0, R5; p
488E60:  BLX             free
488E64:  STRB.W          R6, [R9]
488E68:  LDR             R0, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x488E70)
488E6A:  MOVS            R1, #(stderr+1); void *
488E6C:  ADD             R0, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
488E6E:  LDR             R0, [R0]; this
488E70:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488E74:  LDR             R0, =(UseDataFence_ptr - 0x488E7A)
488E76:  ADD             R0, PC; UseDataFence_ptr
488E78:  LDR             R0, [R0]; UseDataFence
488E7A:  LDRB            R6, [R0]
488E7C:  CBZ             R6, loc_488EBC
488E7E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x488E8A)
488E80:  MOVS            R3, #0
488E82:  LDR             R1, =(UseDataFence_ptr - 0x488E8C)
488E84:  LDR             R2, =(DataFence_ptr - 0x488E8E)
488E86:  ADD             R0, PC; currentSaveFenceCount_ptr
488E88:  ADD             R1, PC; UseDataFence_ptr
488E8A:  ADD             R2, PC; DataFence_ptr
488E8C:  LDR             R0, [R0]; currentSaveFenceCount
488E8E:  LDR.W           R9, [R1]; UseDataFence
488E92:  LDR             R1, [R2]; DataFence
488E94:  LDR             R2, [R0]
488E96:  STRB.W          R3, [R9]
488E9A:  LDRH            R1, [R1]
488E9C:  ADDS            R3, R2, #1
488E9E:  STR             R3, [R0]
488EA0:  MOVS            R0, #2; byte_count
488EA2:  ADDS            R4, R2, R1
488EA4:  BLX             malloc
488EA8:  MOV             R5, R0
488EAA:  MOVS            R1, #(stderr+2); void *
488EAC:  STRH            R4, [R5]
488EAE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488EB2:  MOV             R0, R5; p
488EB4:  BLX             free
488EB8:  STRB.W          R6, [R9]
488EBC:  LDR             R0, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x488EC4)
488EBE:  MOVS            R1, #(stderr+1); void *
488EC0:  ADD             R0, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
488EC2:  LDR             R0, [R0]; this
488EC4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488EC8:  BLX             j__ZN11CTheScripts9SaveAfterEv; CTheScripts::SaveAfter(void)
488ECC:  MOV             R0, R8
488ECE:  POP.W           {R8,R9,R11}
488ED2:  POP             {R4-R7,PC}
