; =========================================================
; Game Engine Function: sub_1332CC
; Address            : 0x1332CC - 0x1332DC
; =========================================================

1332CC:  PUSH            {R7,LR}
1332CE:  MOV             R7, SP
1332D0:  BL              sub_12BCE4
1332D4:  POP.W           {R7,LR}
1332D8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
