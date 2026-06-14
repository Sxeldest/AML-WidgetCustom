; =========================================================
; Game Engine Function: sub_116D4A
; Address            : 0x116D4A - 0x116D5A
; =========================================================

116D4A:  PUSH            {R7,LR}
116D4C:  MOV             R7, SP
116D4E:  BL              sub_116C18
116D52:  POP.W           {R7,LR}
116D56:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
