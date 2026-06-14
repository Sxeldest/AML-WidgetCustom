; =========================================================
; Game Engine Function: sub_1EE6D0
; Address            : 0x1EE6D0 - 0x1EE6E0
; =========================================================

1EE6D0:  PUSH            {R7,LR}
1EE6D2:  MOV             R7, SP
1EE6D4:  BL              sub_1EE6A8
1EE6D8:  POP.W           {R7,LR}
1EE6DC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
