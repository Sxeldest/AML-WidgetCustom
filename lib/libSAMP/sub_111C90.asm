; =========================================================
; Game Engine Function: sub_111C90
; Address            : 0x111C90 - 0x111CA0
; =========================================================

111C90:  PUSH            {R7,LR}
111C92:  MOV             R7, SP
111C94:  BL              sub_11154C
111C98:  POP.W           {R7,LR}
111C9C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
