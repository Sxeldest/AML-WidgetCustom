; =========================================================
; Game Engine Function: sub_13329C
; Address            : 0x13329C - 0x1332AC
; =========================================================

13329C:  PUSH            {R7,LR}
13329E:  MOV             R7, SP
1332A0:  BL              sub_12BCE4
1332A4:  POP.W           {R7,LR}
1332A8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
