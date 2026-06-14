; =========================================================
; Game Engine Function: sub_1332DC
; Address            : 0x1332DC - 0x1332EC
; =========================================================

1332DC:  PUSH            {R7,LR}
1332DE:  MOV             R7, SP
1332E0:  BL              sub_12BCE4
1332E4:  POP.W           {R7,LR}
1332E8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
