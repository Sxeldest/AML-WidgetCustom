; =========================================================
; Game Engine Function: sub_20DE3C
; Address            : 0x20DE3C - 0x20DE4C
; =========================================================

20DE3C:  PUSH            {R7,LR}
20DE3E:  MOV             R7, SP
20DE40:  BL              sub_20DE5C
20DE44:  POP.W           {R7,LR}
20DE48:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
