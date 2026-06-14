; =========================================================
; Game Engine Function: _ZN16IKChainManager_c14IsFacingTargetEP4CPedi
; Address            : 0x4D3A24 - 0x4D3A50
; =========================================================

4D3A24:  PUSH            {R4,R6,R7,LR}
4D3A26:  ADD             R7, SP, #8
4D3A28:  LDR.W           R0, [R1,#0x440]
4D3A2C:  MOVS            R1, #5; int
4D3A2E:  MOV             R4, R2
4D3A30:  ADDS            R0, #4; this
4D3A32:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D3A36:  CBZ             R0, loc_4D3A4C
4D3A38:  MOV             R1, R4; int
4D3A3A:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3A3E:  CBZ             R0, loc_4D3A4C
4D3A40:  BLX             j__ZN18CTaskSimpleIKChain10GetIKChainEv; CTaskSimpleIKChain::GetIKChain(void)
4D3A44:  POP.W           {R4,R6,R7,LR}
4D3A48:  B.W             _ZN9IKChain_c14IsFacingTargetEv; IKChain_c::IsFacingTarget(void)
4D3A4C:  MOVS            R0, #0
4D3A4E:  POP             {R4,R6,R7,PC}
