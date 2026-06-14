; =========================================================
; Game Engine Function: sub_13C598
; Address            : 0x13C598 - 0x13C5A8
; =========================================================

13C598:  PUSH            {R7,LR}
13C59A:  MOV             R7, SP
13C59C:  BL              sub_12BCE4
13C5A0:  POP.W           {R7,LR}
13C5A4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
