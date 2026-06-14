; =========================================================
; Game Engine Function: sub_85D9C
; Address            : 0x85D9C - 0x85DAC
; =========================================================

85D9C:  PUSH            {R7,LR}
85D9E:  MOV             R7, SP
85DA0:  BL              sub_7E094
85DA4:  POP.W           {R7,LR}
85DA8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
