; =========================================================
; Game Engine Function: sub_1340D0
; Address            : 0x1340D0 - 0x1340E0
; =========================================================

1340D0:  PUSH            {R7,LR}
1340D2:  MOV             R7, SP
1340D4:  BL              sub_12BCE4
1340D8:  POP.W           {R7,LR}
1340DC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
