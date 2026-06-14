; =========================================================
; Game Engine Function: sub_162B14
; Address            : 0x162B14 - 0x162B24
; =========================================================

162B14:  PUSH            {R7,LR}
162B16:  MOV             R7, SP
162B18:  BL              sub_162940
162B1C:  POP.W           {R7,LR}
162B20:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
