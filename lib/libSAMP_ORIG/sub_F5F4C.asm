; =========================================================
; Game Engine Function: sub_F5F4C
; Address            : 0xF5F4C - 0xF5F5C
; =========================================================

F5F4C:  PUSH            {R7,LR}
F5F4E:  MOV             R7, SP
F5F50:  BL              sub_F5F6C
F5F54:  POP.W           {R7,LR}
F5F58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
