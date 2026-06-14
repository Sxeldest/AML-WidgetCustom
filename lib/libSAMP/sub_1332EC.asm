; =========================================================
; Game Engine Function: sub_1332EC
; Address            : 0x1332EC - 0x1332FC
; =========================================================

1332EC:  PUSH            {R7,LR}
1332EE:  MOV             R7, SP
1332F0:  BL              sub_12BCE4
1332F4:  POP.W           {R7,LR}
1332F8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
