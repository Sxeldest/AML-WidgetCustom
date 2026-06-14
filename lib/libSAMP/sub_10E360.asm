; =========================================================
; Game Engine Function: sub_10E360
; Address            : 0x10E360 - 0x10E370
; =========================================================

10E360:  PUSH            {R7,LR}
10E362:  MOV             R7, SP
10E364:  BL              sub_10D840
10E368:  POP.W           {R7,LR}
10E36C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
