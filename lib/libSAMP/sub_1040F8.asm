; =========================================================
; Game Engine Function: sub_1040F8
; Address            : 0x1040F8 - 0x104108
; =========================================================

1040F8:  PUSH            {R7,LR}
1040FA:  MOV             R7, SP
1040FC:  BL              sub_103EF4
104100:  POP.W           {R7,LR}
104104:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
