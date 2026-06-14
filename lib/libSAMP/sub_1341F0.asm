; =========================================================
; Game Engine Function: sub_1341F0
; Address            : 0x1341F0 - 0x134200
; =========================================================

1341F0:  PUSH            {R7,LR}
1341F2:  MOV             R7, SP
1341F4:  BL              sub_1341B8
1341F8:  POP.W           {R7,LR}
1341FC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
