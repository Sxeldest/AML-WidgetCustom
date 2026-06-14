; =========================================================
; Game Engine Function: sub_153BA4
; Address            : 0x153BA4 - 0x153BB4
; =========================================================

153BA4:  PUSH            {R7,LR}
153BA6:  MOV             R7, SP
153BA8:  BL              sub_150E00
153BAC:  POP.W           {R7,LR}
153BB0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
