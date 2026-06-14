; =========================================================
; Game Engine Function: _ZNK13CEventSexyPed10AffectsPedEP4CPed
; Address            : 0x374888 - 0x374964
; =========================================================

374888:  PUSH            {R4-R7,LR}
37488A:  ADD             R7, SP, #0xC
37488C:  PUSH.W          {R11}
374890:  MOV             R5, R1
374892:  MOV             R4, R0
374894:  MOV             R0, R5; this
374896:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37489A:  CMP             R0, #1
37489C:  BNE             loc_374954
37489E:  LDR             R0, [R4,#0x10]; this
3748A0:  CMP             R0, #0
3748A2:  BEQ             loc_374954
3748A4:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
3748A8:  CMP             R0, #1
3748AA:  BNE             loc_374954
3748AC:  LDR             R0, =(g_ikChainMan_ptr - 0x3748B4)
3748AE:  MOV             R1, R5; CPed *
3748B0:  ADD             R0, PC; g_ikChainMan_ptr
3748B2:  LDR             R0, [R0]; g_ikChainMan ; this
3748B4:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
3748B8:  CBZ             R0, loc_3748CC
3748BA:  LDR             R0, =(g_ikChainMan_ptr - 0x3748C2)
3748BC:  MOV             R1, R5; CPed *
3748BE:  ADD             R0, PC; g_ikChainMan_ptr
3748C0:  LDR             R0, [R0]; g_ikChainMan ; this
3748C2:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
3748C6:  LDR             R1, [R4,#0x10]
3748C8:  CMP             R0, R1
3748CA:  BEQ             loc_374954
3748CC:  LDR.W           R0, [R5,#0x440]
3748D0:  MOVW            R1, #0x4B2; int
3748D4:  ADDS            R0, #4; this
3748D6:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3748DA:  MOV             R6, R0
3748DC:  CBNZ            R6, loc_374902
3748DE:  LDR.W           R0, [R5,#0x440]
3748E2:  MOVW            R1, #0x4BF; int
3748E6:  ADDS            R0, #4; this
3748E8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3748EC:  MOV             R6, R0
3748EE:  CBNZ            R6, loc_374902
3748F0:  LDR.W           R0, [R5,#0x440]
3748F4:  MOVW            R1, #0x4B3; int
3748F8:  ADDS            R0, #4; this
3748FA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3748FE:  MOV             R6, R0
374900:  CBZ             R6, loc_37495C
374902:  LDR             R0, [R4,#0x10]
374904:  MOVW            R1, #0x4B2; int
374908:  LDR.W           R0, [R0,#0x440]
37490C:  ADDS            R0, #4; this
37490E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
374912:  MOV             R5, R0
374914:  CBNZ            R5, loc_37493E
374916:  LDR             R0, [R4,#0x10]
374918:  MOVW            R1, #0x4BF; int
37491C:  LDR.W           R0, [R0,#0x440]
374920:  ADDS            R0, #4; this
374922:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
374926:  MOV             R5, R0
374928:  CBNZ            R5, loc_37493E
37492A:  LDR             R0, [R4,#0x10]
37492C:  MOVW            R1, #0x4B3; int
374930:  LDR.W           R0, [R0,#0x440]
374934:  ADDS            R0, #4; this
374936:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37493A:  MOV             R5, R0
37493C:  CBZ             R5, loc_37495C
37493E:  LDR             R0, [R6]
374940:  LDR             R1, [R0,#0x14]
374942:  MOV             R0, R6
374944:  BLX             R1
374946:  MOV             R4, R0
374948:  LDR             R0, [R5]
37494A:  LDR             R1, [R0,#0x14]
37494C:  MOV             R0, R5
37494E:  BLX             R1
374950:  CMP             R4, R0
374952:  BNE             loc_37495C
374954:  MOVS            R0, #0
374956:  POP.W           {R11}
37495A:  POP             {R4-R7,PC}
37495C:  MOVS            R0, #1
37495E:  POP.W           {R11}
374962:  POP             {R4-R7,PC}
