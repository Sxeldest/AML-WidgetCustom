; =========================================================
; Game Engine Function: sub_F5FA8
; Address            : 0xF5FA8 - 0xF5FB8
; =========================================================

F5FA8:  PUSH            {R7,LR}
F5FAA:  MOV             R7, SP
F5FAC:  BL              sub_F5F92
F5FB0:  POP.W           {R7,LR}
F5FB4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
