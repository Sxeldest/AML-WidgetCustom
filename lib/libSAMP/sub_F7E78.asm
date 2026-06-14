; =========================================================
; Game Engine Function: sub_F7E78
; Address            : 0xF7E78 - 0xF7E88
; =========================================================

F7E78:  PUSH            {R7,LR}
F7E7A:  MOV             R7, SP
F7E7C:  BL              sub_F7E20
F7E80:  POP.W           {R7,LR}
F7E84:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
