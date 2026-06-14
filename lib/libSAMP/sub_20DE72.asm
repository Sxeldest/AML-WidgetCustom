; =========================================================
; Game Engine Function: sub_20DE72
; Address            : 0x20DE72 - 0x20DE82
; =========================================================

20DE72:  PUSH            {R7,LR}
20DE74:  MOV             R7, SP
20DE76:  BL              sub_20DE5C
20DE7A:  POP.W           {R7,LR}
20DE7E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
