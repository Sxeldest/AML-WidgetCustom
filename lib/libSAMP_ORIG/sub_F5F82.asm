; =========================================================
; Game Engine Function: sub_F5F82
; Address            : 0xF5F82 - 0xF5F92
; =========================================================

F5F82:  PUSH            {R7,LR}
F5F84:  MOV             R7, SP
F5F86:  BL              sub_F5F6C
F5F8A:  POP.W           {R7,LR}
F5F8E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
