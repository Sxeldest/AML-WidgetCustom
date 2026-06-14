; =========================================================
; Game Engine Function: sub_F5EEA
; Address            : 0xF5EEA - 0xF5EFA
; =========================================================

F5EEA:  PUSH            {R7,LR}
F5EEC:  MOV             R7, SP
F5EEE:  BL              sub_F5ED4
F5EF2:  POP.W           {R7,LR}
F5EF6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
