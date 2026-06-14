; =========================================================
; Game Engine Function: sub_20DE98
; Address            : 0x20DE98 - 0x20DEA8
; =========================================================

20DE98:  PUSH            {R7,LR}
20DE9A:  MOV             R7, SP
20DE9C:  BL              sub_20DE82
20DEA0:  POP.W           {R7,LR}
20DEA4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
