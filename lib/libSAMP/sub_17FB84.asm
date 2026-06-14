; =========================================================
; Game Engine Function: sub_17FB84
; Address            : 0x17FB84 - 0x17FB94
; =========================================================

17FB84:  PUSH            {R7,LR}
17FB86:  MOV             R7, SP
17FB88:  BL              sub_17FA34
17FB8C:  POP.W           {R7,LR}
17FB90:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
