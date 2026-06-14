; =========================================================
; Game Engine Function: sub_1A3BD0
; Address            : 0x1A3BD0 - 0x1A3BF6
; =========================================================

1A3BD0:  PUSH            {R4,R6,R7,LR}
1A3BD2:  ADD             R7, SP, #8
1A3BD4:  LDR             R0, =(g_fx_ptr - 0x1A3BDA)
1A3BD6:  ADD             R0, PC; g_fx_ptr
1A3BD8:  LDR             R4, [R0]; g_fx
1A3BDA:  ADD.W           R0, R4, #0x44 ; 'D'; this
1A3BDE:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
1A3BE2:  LDR             R0, =(_ZN4Fx_cD2Ev_ptr - 0x1A3BEC)
1A3BE4:  MOV             R1, R4; obj
1A3BE6:  LDR             R2, =(unk_67A000 - 0x1A3BEE)
1A3BE8:  ADD             R0, PC; _ZN4Fx_cD2Ev_ptr
1A3BEA:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A3BEC:  LDR             R0, [R0]; Fx_c::~Fx_c() ; lpfunc
1A3BEE:  POP.W           {R4,R6,R7,LR}
1A3BF2:  B.W             j___cxa_atexit
