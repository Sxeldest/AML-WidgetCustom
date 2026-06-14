; =========================================================
; Game Engine Function: sub_EE63C
; Address            : 0xEE63C - 0xEE64C
; =========================================================

EE63C:  PUSH            {R7,LR}
EE63E:  MOV             R7, SP
EE640:  BL              sub_EE5E8
EE644:  POP.W           {R7,LR}
EE648:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
