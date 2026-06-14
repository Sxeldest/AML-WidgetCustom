; =========================================================
; Game Engine Function: sub_20DF38
; Address            : 0x20DF38 - 0x20DF48
; =========================================================

20DF38:  PUSH            {R7,LR}
20DF3A:  MOV             R7, SP
20DF3C:  BL              sub_20DEEC
20DF40:  POP.W           {R7,LR}
20DF44:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
