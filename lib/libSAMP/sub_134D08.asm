; =========================================================
; Game Engine Function: sub_134D08
; Address            : 0x134D08 - 0x134D18
; =========================================================

134D08:  PUSH            {R7,LR}
134D0A:  MOV             R7, SP
134D0C:  BL              sub_12BCE4
134D10:  POP.W           {R7,LR}
134D14:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
