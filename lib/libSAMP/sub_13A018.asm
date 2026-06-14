; =========================================================
; Game Engine Function: sub_13A018
; Address            : 0x13A018 - 0x13A028
; =========================================================

13A018:  PUSH            {R7,LR}
13A01A:  MOV             R7, SP
13A01C:  BL              sub_12BCE4
13A020:  POP.W           {R7,LR}
13A024:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
