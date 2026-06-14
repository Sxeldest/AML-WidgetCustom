; =========================================================
; Game Engine Function: sub_1A6720
; Address            : 0x1A6720 - 0x1A6744
; =========================================================

1A6720:  PUSH            {R4,R6,R7,LR}
1A6722:  ADD             R7, SP, #8
1A6724:  LDR             R0, =(g_interiorMan_ptr - 0x1A672A)
1A6726:  ADD             R0, PC; g_interiorMan_ptr
1A6728:  LDR             R4, [R0]; g_interiorMan
1A672A:  MOV             R0, R4; this
1A672C:  BLX             j__ZN17InteriorManager_cC2Ev; InteriorManager_c::InteriorManager_c(void)
1A6730:  LDR             R0, =(_ZN17InteriorManager_cD2Ev_ptr - 0x1A673A)
1A6732:  MOV             R1, R4; obj
1A6734:  LDR             R2, =(unk_67A000 - 0x1A673C)
1A6736:  ADD             R0, PC; _ZN17InteriorManager_cD2Ev_ptr
1A6738:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A673A:  LDR             R0, [R0]; InteriorManager_c::~InteriorManager_c() ; lpfunc
1A673C:  POP.W           {R4,R6,R7,LR}
1A6740:  B.W             j___cxa_atexit
