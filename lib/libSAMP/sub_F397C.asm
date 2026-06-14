; =========================================================
; Game Engine Function: sub_F397C
; Address            : 0xF397C - 0xF398C
; =========================================================

F397C:  PUSH            {R7,LR}
F397E:  MOV             R7, SP
F3980:  BL              sub_F32C8
F3984:  POP.W           {R7,LR}
F3988:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
