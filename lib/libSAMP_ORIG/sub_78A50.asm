; =========================================================
; Game Engine Function: sub_78A50
; Address            : 0x78A50 - 0x78A60
; =========================================================

78A50:  PUSH            {R7,LR}
78A52:  MOV             R7, SP
78A54:  BL              sub_7C3B4
78A58:  POP.W           {R7,LR}
78A5C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
