; =========================================================
; Game Engine Function: _ZN16IKChainManager_c11AbortLookAtEP4CPedi
; Address            : 0x4D364A - 0x4D3672
; =========================================================

4D364A:  PUSH            {R4,R6,R7,LR}
4D364C:  ADD             R7, SP, #8
4D364E:  LDR.W           R0, [R1,#0x440]
4D3652:  MOVS            R1, #5; int
4D3654:  MOV             R4, R2
4D3656:  ADDS            R0, #4; this
4D3658:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D365C:  MOVS            R1, #0; int
4D365E:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3662:  CMP             R0, #0
4D3664:  IT EQ
4D3666:  POPEQ           {R4,R6,R7,PC}
4D3668:  MOV             R1, R4; int
4D366A:  POP.W           {R4,R6,R7,LR}
4D366E:  B.W             sub_18BD28
