; =========================================================
; Game Engine Function: sub_1361DC
; Address            : 0x1361DC - 0x1361EA
; =========================================================

1361DC:  LDRB            R1, [R0,#8]
1361DE:  LSLS            R1, R1, #0x1F; std::nothrow_t *
1361E0:  ITT NE
1361E2:  LDRNE           R0, [R0,#0x10]; void *
1361E4:  BNE.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1361E8:  BX              LR
