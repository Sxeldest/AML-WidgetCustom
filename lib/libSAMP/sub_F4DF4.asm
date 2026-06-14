; =========================================================
; Game Engine Function: sub_F4DF4
; Address            : 0xF4DF4 - 0xF4E04
; =========================================================

F4DF4:  PUSH            {R7,LR}
F4DF6:  MOV             R7, SP
F4DF8:  BL              sub_F4380
F4DFC:  POP.W           {R7,LR}
F4E00:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
