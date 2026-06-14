; =========================================================
; Game Engine Function: sub_F5F5C
; Address            : 0xF5F5C - 0xF5F6C
; =========================================================

F5F5C:  PUSH            {R7,LR}
F5F5E:  MOV             R7, SP
F5F60:  BL              sub_F5F92
F5F64:  POP.W           {R7,LR}
F5F68:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
