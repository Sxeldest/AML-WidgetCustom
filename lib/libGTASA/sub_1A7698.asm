; =========================================================
; Game Engine Function: sub_1A7698
; Address            : 0x1A7698 - 0x1A76BC
; =========================================================

1A7698:  PUSH            {R4,R6,R7,LR}
1A769A:  ADD             R7, SP, #8
1A769C:  LDR             R0, =(g_ikChainMan_ptr - 0x1A76A2)
1A769E:  ADD             R0, PC; g_ikChainMan_ptr
1A76A0:  LDR             R4, [R0]; g_ikChainMan
1A76A2:  MOV             R0, R4; this
1A76A4:  BLX             j__ZN16IKChainManager_cC2Ev; IKChainManager_c::IKChainManager_c(void)
1A76A8:  LDR             R0, =(_ZN16IKChainManager_cD2Ev_ptr - 0x1A76B2)
1A76AA:  MOV             R1, R4; obj
1A76AC:  LDR             R2, =(unk_67A000 - 0x1A76B4)
1A76AE:  ADD             R0, PC; _ZN16IKChainManager_cD2Ev_ptr
1A76B0:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A76B2:  LDR             R0, [R0]; IKChainManager_c::~IKChainManager_c() ; lpfunc
1A76B4:  POP.W           {R4,R6,R7,LR}
1A76B8:  B.W             j___cxa_atexit
