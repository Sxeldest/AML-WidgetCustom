; =========================================================
; Game Engine Function: sub_85C38
; Address            : 0x85C38 - 0x85C48
; =========================================================

85C38:  PUSH            {R7,LR}
85C3A:  MOV             R7, SP
85C3C:  BL              sub_7E094
85C40:  POP.W           {R7,LR}
85C44:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
