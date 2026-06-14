; =========================================================
; Game Engine Function: _ZN16IKChainManager_c13IsArmPointingEiP4CPed
; Address            : 0x4D39D4 - 0x4D39FA
; =========================================================

4D39D4:  PUSH            {R4,R6,R7,LR}
4D39D6:  ADD             R7, SP, #8
4D39D8:  LDR.W           R0, [R2,#0x440]
4D39DC:  MOV             R4, R1
4D39DE:  MOVS            R1, #5; int
4D39E0:  ADDS            R0, #4; this
4D39E2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D39E6:  CBZ             R0, loc_4D39F6
4D39E8:  ADDS            R1, R4, #1; int
4D39EA:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D39EE:  CMP             R0, #0
4D39F0:  IT NE
4D39F2:  MOVNE           R0, #1
4D39F4:  POP             {R4,R6,R7,PC}
4D39F6:  MOVS            R0, #0
4D39F8:  POP             {R4,R6,R7,PC}
