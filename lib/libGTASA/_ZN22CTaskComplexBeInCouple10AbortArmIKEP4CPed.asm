; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCouple10AbortArmIKEP4CPed
; Address            : 0x5366D0 - 0x53671E
; =========================================================

5366D0:  PUSH            {R4,R6,R7,LR}
5366D2:  ADD             R7, SP, #8
5366D4:  LDR             R0, =(g_ikChainMan_ptr - 0x5366E0)
5366D6:  MOV             R4, R1
5366D8:  MOVS            R1, #0; int
5366DA:  MOV             R2, R4; CPed *
5366DC:  ADD             R0, PC; g_ikChainMan_ptr
5366DE:  LDR             R0, [R0]; g_ikChainMan ; this
5366E0:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
5366E4:  CBZ             R0, loc_5366F6
5366E6:  LDR             R0, =(g_ikChainMan_ptr - 0x5366F2)
5366E8:  MOVS            R1, #0; int
5366EA:  MOV             R2, R4; CPed *
5366EC:  MOVS            R3, #0xFA; int
5366EE:  ADD             R0, PC; g_ikChainMan_ptr
5366F0:  LDR             R0, [R0]; g_ikChainMan ; this
5366F2:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
5366F6:  LDR             R0, =(g_ikChainMan_ptr - 0x536700)
5366F8:  MOVS            R1, #1; int
5366FA:  MOV             R2, R4; CPed *
5366FC:  ADD             R0, PC; g_ikChainMan_ptr
5366FE:  LDR             R0, [R0]; g_ikChainMan ; this
536700:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536704:  CMP             R0, #0
536706:  IT EQ
536708:  POPEQ           {R4,R6,R7,PC}
53670A:  LDR             R0, =(g_ikChainMan_ptr - 0x536716)
53670C:  MOVS            R1, #1; int
53670E:  MOV             R2, R4; CPed *
536710:  MOVS            R3, #0xFA; int
536712:  ADD             R0, PC; g_ikChainMan_ptr
536714:  LDR             R0, [R0]; g_ikChainMan ; this
536716:  POP.W           {R4,R6,R7,LR}
53671A:  B.W             sub_19A210
