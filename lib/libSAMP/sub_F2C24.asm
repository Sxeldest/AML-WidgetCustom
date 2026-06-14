; =========================================================
; Game Engine Function: sub_F2C24
; Address            : 0xF2C24 - 0xF2C34
; =========================================================

F2C24:  PUSH            {R7,LR}
F2C26:  MOV             R7, SP
F2C28:  BL              sub_F24AC
F2C2C:  POP.W           {R7,LR}
F2C30:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
