; =========================================================
; Game Engine Function: sub_13B8AA
; Address            : 0x13B8AA - 0x13B8BA
; =========================================================

13B8AA:  PUSH            {R7,LR}
13B8AC:  MOV             R7, SP
13B8AE:  BL              sub_12BCE4
13B8B2:  POP.W           {R7,LR}
13B8B6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
