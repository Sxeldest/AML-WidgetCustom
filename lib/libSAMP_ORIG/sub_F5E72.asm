; =========================================================
; Game Engine Function: sub_F5E72
; Address            : 0xF5E72 - 0xF5E82
; =========================================================

F5E72:  PUSH            {R7,LR}
F5E74:  MOV             R7, SP
F5E76:  BL              sub_F5E5C
F5E7A:  POP.W           {R7,LR}
F5E7E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
