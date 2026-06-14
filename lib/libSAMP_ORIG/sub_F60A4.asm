; =========================================================
; Game Engine Function: sub_F60A4
; Address            : 0xF60A4 - 0xF60B4
; =========================================================

F60A4:  PUSH            {R7,LR}
F60A6:  MOV             R7, SP
F60A8:  BL              sub_F6058
F60AC:  POP.W           {R7,LR}
F60B0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
