; =========================================================
; Game Engine Function: sub_123BA0
; Address            : 0x123BA0 - 0x123BB0
; =========================================================

123BA0:  PUSH            {R7,LR}
123BA2:  MOV             R7, SP
123BA4:  BL              sub_1238B8
123BA8:  POP.W           {R7,LR}
123BAC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
