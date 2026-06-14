; =========================================================
; Game Engine Function: sub_20DF94
; Address            : 0x20DF94 - 0x20DFA4
; =========================================================

20DF94:  PUSH            {R7,LR}
20DF96:  MOV             R7, SP
20DF98:  BL              sub_20DF48
20DF9C:  POP.W           {R7,LR}
20DFA0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
