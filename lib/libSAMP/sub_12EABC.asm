; =========================================================
; Game Engine Function: sub_12EABC
; Address            : 0x12EABC - 0x12EACC
; =========================================================

12EABC:  PUSH            {R7,LR}
12EABE:  MOV             R7, SP
12EAC0:  BL              sub_12EA84
12EAC4:  POP.W           {R7,LR}
12EAC8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
