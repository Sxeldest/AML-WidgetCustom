; =========================================================
; Game Engine Function: sub_101B18
; Address            : 0x101B18 - 0x101B28
; =========================================================

101B18:  PUSH            {R7,LR}
101B1A:  MOV             R7, SP
101B1C:  BL              sub_101A1C
101B20:  POP.W           {R7,LR}
101B24:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
