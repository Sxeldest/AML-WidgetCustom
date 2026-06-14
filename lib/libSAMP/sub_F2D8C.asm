; =========================================================
; Game Engine Function: sub_F2D8C
; Address            : 0xF2D8C - 0xF2D9C
; =========================================================

F2D8C:  PUSH            {R7,LR}
F2D8E:  MOV             R7, SP
F2D90:  BL              sub_F250C
F2D94:  POP.W           {R7,LR}
F2D98:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
