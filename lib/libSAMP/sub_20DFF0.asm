; =========================================================
; Game Engine Function: sub_20DFF0
; Address            : 0x20DFF0 - 0x20E000
; =========================================================

20DFF0:  PUSH            {R7,LR}
20DFF2:  MOV             R7, SP
20DFF4:  BL              sub_20DFA4
20DFF8:  POP.W           {R7,LR}
20DFFC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
