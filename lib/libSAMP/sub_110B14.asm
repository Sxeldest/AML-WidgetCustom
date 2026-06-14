; =========================================================
; Game Engine Function: sub_110B14
; Address            : 0x110B14 - 0x110B24
; =========================================================

110B14:  PUSH            {R7,LR}
110B16:  MOV             R7, SP
110B18:  BL              sub_1108D4
110B1C:  POP.W           {R7,LR}
110B20:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
