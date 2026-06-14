; =========================================================
; Game Engine Function: _ZN16IKChainManager_c15GetLookAtOffsetEP4CPedP7CVector
; Address            : 0x4D37F6 - 0x4D3844
; =========================================================

4D37F6:  PUSH            {R4,R5,R7,LR}
4D37F8:  ADD             R7, SP, #8
4D37FA:  SUB             SP, SP, #0x10
4D37FC:  LDR.W           R0, [R1,#0x440]
4D3800:  MOVS            R1, #5; int
4D3802:  MOV             R4, R2
4D3804:  ADDS            R0, #4; this
4D3806:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D380A:  CBZ             R0, loc_4D382E
4D380C:  MOVS            R1, #0; int
4D380E:  MOVS            R5, #0
4D3810:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3814:  MOV             R1, R0
4D3816:  CBZ             R1, loc_4D383A
4D3818:  MOV             R0, SP; this
4D381A:  BLX             j__ZN19CTaskSimpleIKLookAt15GetLookAtOffsetEv; CTaskSimpleIKLookAt::GetLookAtOffset(void)
4D381E:  VLDR            D16, [SP,#0x18+var_18]
4D3822:  LDR             R0, [SP,#0x18+var_10]
4D3824:  STR             R0, [R4,#8]
4D3826:  VSTR            D16, [R4]
4D382A:  ADD             SP, SP, #0x10
4D382C:  POP             {R4,R5,R7,PC}
4D382E:  MOVS            R0, #0
4D3830:  STRD.W          R0, R0, [R4]
4D3834:  STR             R0, [R4,#8]
4D3836:  ADD             SP, SP, #0x10
4D3838:  POP             {R4,R5,R7,PC}
4D383A:  STRD.W          R5, R5, [R4]
4D383E:  STR             R5, [R4,#8]
4D3840:  ADD             SP, SP, #0x10
4D3842:  POP             {R4,R5,R7,PC}
