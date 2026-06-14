; =========================================================
; Game Engine Function: sub_F2A08
; Address            : 0xF2A08 - 0xF2A18
; =========================================================

F2A08:  PUSH            {R7,LR}
F2A0A:  MOV             R7, SP
F2A0C:  BL              sub_F241C
F2A10:  POP.W           {R7,LR}
F2A14:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
