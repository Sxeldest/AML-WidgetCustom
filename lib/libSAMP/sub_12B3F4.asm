; =========================================================
; Game Engine Function: sub_12B3F4
; Address            : 0x12B3F4 - 0x12B404
; =========================================================

12B3F4:  PUSH            {R7,LR}
12B3F6:  MOV             R7, SP
12B3F8:  BL              sub_12B368
12B3FC:  POP.W           {R7,LR}
12B400:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
