; =========================================================
; Game Engine Function: sub_F29F8
; Address            : 0xF29F8 - 0xF2A08
; =========================================================

F29F8:  PUSH            {R7,LR}
F29FA:  MOV             R7, SP
F29FC:  BL              sub_F2404
F2A00:  POP.W           {R7,LR}
F2A04:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
