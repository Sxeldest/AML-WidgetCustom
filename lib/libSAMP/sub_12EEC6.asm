; =========================================================
; Game Engine Function: sub_12EEC6
; Address            : 0x12EEC6 - 0x12EED6
; =========================================================

12EEC6:  PUSH            {R7,LR}
12EEC8:  MOV             R7, SP
12EECA:  BL              sub_12BCE4
12EECE:  POP.W           {R7,LR}
12EED2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
