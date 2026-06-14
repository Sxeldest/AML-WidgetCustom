; =========================================================
; Game Engine Function: sub_100B1A
; Address            : 0x100B1A - 0x100B2A
; =========================================================

100B1A:  PUSH            {R7,LR}
100B1C:  MOV             R7, SP
100B1E:  BL              sub_FB4DC
100B22:  POP.W           {R7,LR}
100B26:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
