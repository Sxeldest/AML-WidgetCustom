; =========================================================
; Game Engine Function: sub_1375E0
; Address            : 0x1375E0 - 0x1375F0
; =========================================================

1375E0:  PUSH            {R7,LR}
1375E2:  MOV             R7, SP
1375E4:  BL              sub_12BCE4
1375E8:  POP.W           {R7,LR}
1375EC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
