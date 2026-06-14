; =========================================================
; Game Engine Function: sub_1332FC
; Address            : 0x1332FC - 0x13330C
; =========================================================

1332FC:  PUSH            {R7,LR}
1332FE:  MOV             R7, SP
133300:  BL              sub_12BCE4
133304:  POP.W           {R7,LR}
133308:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
