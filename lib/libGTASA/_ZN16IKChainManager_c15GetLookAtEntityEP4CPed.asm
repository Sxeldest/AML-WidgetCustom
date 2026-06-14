; =========================================================
; Game Engine Function: _ZN16IKChainManager_c15GetLookAtEntityEP4CPed
; Address            : 0x4D37CE - 0x4D37F6
; =========================================================

4D37CE:  PUSH            {R7,LR}
4D37D0:  MOV             R7, SP
4D37D2:  LDR.W           R0, [R1,#0x440]
4D37D6:  MOVS            R1, #5; int
4D37D8:  ADDS            R0, #4; this
4D37DA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D37DE:  CBZ             R0, loc_4D37F2
4D37E0:  MOVS            R1, #0; int
4D37E2:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D37E6:  CMP             R0, #0
4D37E8:  ITT NE
4D37EA:  POPNE.W         {R7,LR}
4D37EE:  BNE.W           j_j__ZN19CTaskSimpleIKLookAt15GetLookAtEntityEv; j_CTaskSimpleIKLookAt::GetLookAtEntity(void)
4D37F2:  MOVS            R0, #0
4D37F4:  POP             {R7,PC}
