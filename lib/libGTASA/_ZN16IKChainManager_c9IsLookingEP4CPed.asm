; =========================================================
; Game Engine Function: _ZN16IKChainManager_c9IsLookingEP4CPed
; Address            : 0x4D3624 - 0x4D364A
; =========================================================

4D3624:  PUSH            {R7,LR}
4D3626:  MOV             R7, SP
4D3628:  LDR.W           R0, [R1,#0x440]
4D362C:  MOVS            R1, #5; int
4D362E:  ADDS            R0, #4; this
4D3630:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D3634:  CMP             R0, #0
4D3636:  ITT EQ
4D3638:  MOVEQ           R0, #0; this
4D363A:  POPEQ           {R7,PC}
4D363C:  MOVS            R1, #0; int
4D363E:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3642:  CMP             R0, #0
4D3644:  IT NE
4D3646:  MOVNE           R0, #1
4D3648:  POP             {R7,PC}
