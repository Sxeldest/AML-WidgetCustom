; =========================================================
; Game Engine Function: sub_F2CD8
; Address            : 0xF2CD8 - 0xF2CE8
; =========================================================

F2CD8:  PUSH            {R7,LR}
F2CDA:  MOV             R7, SP
F2CDC:  BL              sub_F24DC
F2CE0:  POP.W           {R7,LR}
F2CE4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
