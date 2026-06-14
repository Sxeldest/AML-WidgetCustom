; =========================================================
; Game Engine Function: sub_1332AC
; Address            : 0x1332AC - 0x1332BC
; =========================================================

1332AC:  PUSH            {R7,LR}
1332AE:  MOV             R7, SP
1332B0:  BL              sub_12BCE4
1332B4:  POP.W           {R7,LR}
1332B8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
