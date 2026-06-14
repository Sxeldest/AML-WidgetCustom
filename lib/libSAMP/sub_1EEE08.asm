; =========================================================
; Game Engine Function: sub_1EEE08
; Address            : 0x1EEE08 - 0x1EEE18
; =========================================================

1EEE08:  PUSH            {R7,LR}
1EEE0A:  MOV             R7, SP
1EEE0C:  BL              sub_1EEDE0
1EEE10:  POP.W           {R7,LR}
1EEE14:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
