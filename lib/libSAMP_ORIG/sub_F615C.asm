; =========================================================
; Game Engine Function: sub_F615C
; Address            : 0xF615C - 0xF616C
; =========================================================

F615C:  PUSH            {R7,LR}
F615E:  MOV             R7, SP
F6160:  BL              sub_F6110
F6164:  POP.W           {R7,LR}
F6168:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
