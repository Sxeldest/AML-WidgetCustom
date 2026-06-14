; =========================================================
; Game Engine Function: sub_13DEC4
; Address            : 0x13DEC4 - 0x13DED4
; =========================================================

13DEC4:  PUSH            {R7,LR}
13DEC6:  MOV             R7, SP
13DEC8:  BL              sub_12BCE4
13DECC:  POP.W           {R7,LR}
13DED0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
