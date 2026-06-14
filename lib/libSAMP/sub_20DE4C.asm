; =========================================================
; Game Engine Function: sub_20DE4C
; Address            : 0x20DE4C - 0x20DE5C
; =========================================================

20DE4C:  PUSH            {R7,LR}
20DE4E:  MOV             R7, SP
20DE50:  BL              sub_20DE82
20DE54:  POP.W           {R7,LR}
20DE58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
