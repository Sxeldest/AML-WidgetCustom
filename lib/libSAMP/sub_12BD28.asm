; =========================================================
; Game Engine Function: sub_12BD28
; Address            : 0x12BD28 - 0x12BD38
; =========================================================

12BD28:  PUSH            {R7,LR}
12BD2A:  MOV             R7, SP
12BD2C:  BL              sub_12BCE4
12BD30:  POP.W           {R7,LR}
12BD34:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
