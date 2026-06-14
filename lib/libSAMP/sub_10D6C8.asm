; =========================================================
; Game Engine Function: sub_10D6C8
; Address            : 0x10D6C8 - 0x10D6D8
; =========================================================

10D6C8:  PUSH            {R7,LR}
10D6CA:  MOV             R7, SP
10D6CC:  BL              sub_10D40C
10D6D0:  POP.W           {R7,LR}
10D6D4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
