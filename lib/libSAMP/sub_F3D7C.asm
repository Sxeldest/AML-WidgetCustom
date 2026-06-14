; =========================================================
; Game Engine Function: sub_F3D7C
; Address            : 0xF3D7C - 0xF3D8C
; =========================================================

F3D7C:  PUSH            {R7,LR}
F3D7E:  MOV             R7, SP
F3D80:  BL              sub_F3A84
F3D84:  POP.W           {R7,LR}
F3D88:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
