; =========================================================
; Game Engine Function: sub_78A40
; Address            : 0x78A40 - 0x78A50
; =========================================================

78A40:  PUSH            {R7,LR}
78A42:  MOV             R7, SP
78A44:  BL              sub_7C3B4
78A48:  POP.W           {R7,LR}
78A4C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
