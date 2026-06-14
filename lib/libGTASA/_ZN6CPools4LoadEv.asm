; =========================================================
; Game Engine Function: _ZN6CPools4LoadEv
; Address            : 0x48A054 - 0x48A140
; =========================================================

48A054:  PUSH            {R4-R7,LR}
48A056:  ADD             R7, SP, #0xC
48A058:  PUSH.W          {R11}
48A05C:  SUB             SP, SP, #8
48A05E:  BLX             j__ZN6CPools11LoadPedPoolEv; CPools::LoadPedPool(void)
48A062:  BLX             j__ZN6CPools15LoadVehiclePoolEv; CPools::LoadVehiclePool(void)
48A066:  LDR             R0, =(IsMissionSave_ptr - 0x48A06C)
48A068:  ADD             R0, PC; IsMissionSave_ptr
48A06A:  LDR             R0, [R0]; IsMissionSave
48A06C:  LDRB            R0, [R0]
48A06E:  CBZ             R0, loc_48A0CC
48A070:  LDR             R0, =(DoingCheckpointLoad_ptr - 0x48A078)
48A072:  MOVS            R1, #1
48A074:  ADD             R0, PC; DoingCheckpointLoad_ptr
48A076:  LDR             R0, [R0]; DoingCheckpointLoad ; this
48A078:  STRB            R1, [R0]
48A07A:  BLX             j__ZN6CPools12LoadPedTasksEv; CPools::LoadPedTasks(void)
48A07E:  BLX             j__ZN10CPedGroups4LoadEv; CPedGroups::Load(void)
48A082:  BLX             j__ZN19CDecisionMakerTypes4LoadEv; CDecisionMakerTypes::Load(void)
48A086:  LDR             R0, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x48A08E)
48A088:  MOVS            R1, #dword_40; void *
48A08A:  ADD             R0, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
48A08C:  LDR             R4, [R0]; CUserDisplay::OnscnTimer ...
48A08E:  MOV             R0, R4; this
48A090:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A094:  ADD.W           R0, R4, #0x40 ; '@'; this
48A098:  MOV.W           R1, #(elf_hash_bucket+0x14); void *
48A09C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A0A0:  BLX             j__ZN22CPedScriptedTaskRecord4LoadEv; CPedScriptedTaskRecord::Load(void)
48A0A4:  BLX             j__ZN12CAudioEngine4LoadEv; CAudioEngine::Load(void)
48A0A8:  LDR             R0, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x48A0B0)
48A0AA:  MOVS            R1, #byte_4; void *
48A0AC:  ADD             R0, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
48A0AE:  LDR             R0, [R0]; this
48A0B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A0B4:  LDR             R0, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x48A0BC)
48A0B6:  MOVS            R1, #(stderr+1); void *
48A0B8:  ADD             R0, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
48A0BA:  LDR             R0, [R0]; this
48A0BC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A0C0:  LDR             R0, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x48A0C8)
48A0C2:  MOVS            R1, #byte_4; void *
48A0C4:  ADD             R0, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
48A0C6:  LDR             R0, [R0]; this
48A0C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A0CC:  LDR             R0, =(IsMissionSave_ptr - 0x48A0D2)
48A0CE:  ADD             R0, PC; IsMissionSave_ptr ; this
48A0D0:  LDR             R5, [R0]; IsMissionSave
48A0D2:  BLX             j__ZN6CPools14LoadObjectPoolEv; CPools::LoadObjectPool(void)
48A0D6:  MOV             R4, R0
48A0D8:  LDRB            R0, [R5]
48A0DA:  CBZ             R0, loc_48A136
48A0DC:  LDR             R0, =(UseDataFence_ptr - 0x48A0E2)
48A0DE:  ADD             R0, PC; UseDataFence_ptr
48A0E0:  LDR             R0, [R0]; UseDataFence
48A0E2:  LDRB            R5, [R0]
48A0E4:  CBZ             R5, loc_48A0FA
48A0E6:  LDR             R0, =(UseDataFence_ptr - 0x48A0EE)
48A0E8:  MOVS            R1, #(stderr+2); void *
48A0EA:  ADD             R0, PC; UseDataFence_ptr
48A0EC:  LDR             R6, [R0]; UseDataFence
48A0EE:  MOVS            R0, #0
48A0F0:  STRB            R0, [R6]
48A0F2:  ADD             R0, SP, #0x18+var_14; this
48A0F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A0F8:  STRB            R5, [R6]
48A0FA:  LDR             R0, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x48A102)
48A0FC:  MOVS            R1, #(stderr+1); void *
48A0FE:  ADD             R0, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
48A100:  LDR             R0, [R0]; this
48A102:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A106:  LDR             R0, =(UseDataFence_ptr - 0x48A10C)
48A108:  ADD             R0, PC; UseDataFence_ptr
48A10A:  LDR             R0, [R0]; UseDataFence
48A10C:  LDRB            R5, [R0]
48A10E:  CBZ             R5, loc_48A126
48A110:  LDR             R0, =(UseDataFence_ptr - 0x48A118)
48A112:  MOVS            R1, #(stderr+2); void *
48A114:  ADD             R0, PC; UseDataFence_ptr
48A116:  LDR             R6, [R0]; UseDataFence
48A118:  MOVS            R0, #0
48A11A:  STRB            R0, [R6]
48A11C:  SUB.W           R0, R7, #-var_12; this
48A120:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A124:  STRB            R5, [R6]
48A126:  LDR             R0, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x48A12E)
48A128:  MOVS            R1, #(stderr+1); void *
48A12A:  ADD             R0, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
48A12C:  LDR             R0, [R0]; this
48A12E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A132:  BLX             j__ZN11CTheScripts9LoadAfterEv; CTheScripts::LoadAfter(void)
48A136:  MOV             R0, R4
48A138:  ADD             SP, SP, #8
48A13A:  POP.W           {R11}
48A13E:  POP             {R4-R7,PC}
