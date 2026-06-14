; =========================================================
; Game Engine Function: sub_F2B70
; Address            : 0xF2B70 - 0xF2B80
; =========================================================

F2B70:  PUSH            {R7,LR}
F2B72:  MOV             R7, SP
F2B74:  BL              sub_F247C
F2B78:  POP.W           {R7,LR}
F2B7C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
