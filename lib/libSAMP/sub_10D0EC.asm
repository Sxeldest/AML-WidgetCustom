; =========================================================
; Game Engine Function: sub_10D0EC
; Address            : 0x10D0EC - 0x10D0FC
; =========================================================

10D0EC:  PUSH            {R7,LR}
10D0EE:  MOV             R7, SP
10D0F0:  BL              sub_10CEA8
10D0F4:  POP.W           {R7,LR}
10D0F8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
