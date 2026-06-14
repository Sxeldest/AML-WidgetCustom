; =========================================================
; Game Engine Function: sub_162298
; Address            : 0x162298 - 0x1622A8
; =========================================================

162298:  PUSH            {R7,LR}
16229A:  MOV             R7, SP
16229C:  BL              sub_162004
1622A0:  POP.W           {R7,LR}
1622A4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
