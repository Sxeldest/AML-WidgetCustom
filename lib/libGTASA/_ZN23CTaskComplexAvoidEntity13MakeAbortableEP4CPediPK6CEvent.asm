; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x522CCC - 0x522CFA
; =========================================================

522CCC:  PUSH            {R4,R6,R7,LR}
522CCE:  ADD             R7, SP, #8
522CD0:  LDRB.W          R0, [R0,#0x50]
522CD4:  MOV             R4, R1
522CD6:  LSLS            R0, R0, #0x1F
522CD8:  BEQ             loc_522CF6
522CDA:  LDR             R0, =(g_ikChainMan_ptr - 0x522CE2)
522CDC:  MOV             R1, R4; CPed *
522CDE:  ADD             R0, PC; g_ikChainMan_ptr
522CE0:  LDR             R0, [R0]; g_ikChainMan ; this
522CE2:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
522CE6:  CBZ             R0, loc_522CF6
522CE8:  LDR             R0, =(g_ikChainMan_ptr - 0x522CF2)
522CEA:  MOV             R1, R4; CPed *
522CEC:  MOVS            R2, #0xFA; int
522CEE:  ADD             R0, PC; g_ikChainMan_ptr
522CF0:  LDR             R0, [R0]; g_ikChainMan ; this
522CF2:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
522CF6:  MOVS            R0, #1
522CF8:  POP             {R4,R6,R7,PC}
