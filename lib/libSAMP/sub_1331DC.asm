; =========================================================
; Game Engine Function: sub_1331DC
; Address            : 0x1331DC - 0x1331EC
; =========================================================

1331DC:  PUSH            {R7,LR}
1331DE:  MOV             R7, SP
1331E0:  BL              sub_12BCE4
1331E4:  POP.W           {R7,LR}
1331E8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
