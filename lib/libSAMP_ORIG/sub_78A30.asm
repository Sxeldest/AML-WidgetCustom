; =========================================================
; Game Engine Function: sub_78A30
; Address            : 0x78A30 - 0x78A40
; =========================================================

78A30:  PUSH            {R7,LR}
78A32:  MOV             R7, SP
78A34:  BL              sub_7C3B4
78A38:  POP.W           {R7,LR}
78A3C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
