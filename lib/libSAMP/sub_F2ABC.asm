; =========================================================
; Game Engine Function: sub_F2ABC
; Address            : 0xF2ABC - 0xF2ACC
; =========================================================

F2ABC:  PUSH            {R7,LR}
F2ABE:  MOV             R7, SP
F2AC0:  BL              sub_F244C
F2AC4:  POP.W           {R7,LR}
F2AC8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
