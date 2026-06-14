; =========================================================
; Game Engine Function: sub_1099FC
; Address            : 0x1099FC - 0x109A0C
; =========================================================

1099FC:  PUSH            {R7,LR}
1099FE:  MOV             R7, SP
109A00:  BL              sub_109870
109A04:  POP.W           {R7,LR}
109A08:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
