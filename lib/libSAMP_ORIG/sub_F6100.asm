; =========================================================
; Game Engine Function: sub_F6100
; Address            : 0xF6100 - 0xF6110
; =========================================================

F6100:  PUSH            {R7,LR}
F6102:  MOV             R7, SP
F6104:  BL              sub_F60B4
F6108:  POP.W           {R7,LR}
F610C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
