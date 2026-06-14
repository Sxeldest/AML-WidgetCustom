; =========================================================
; Game Engine Function: sub_2064F4
; Address            : 0x2064F4 - 0x206504
; =========================================================

2064F4:  PUSH            {R7,LR}
2064F6:  MOV             R7, SP
2064F8:  BL              sub_2064A0
2064FC:  POP.W           {R7,LR}
206500:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
