; =========================================================
; Game Engine Function: sub_FAE98
; Address            : 0xFAE98 - 0xFAEA8
; =========================================================

FAE98:  PUSH            {R7,LR}
FAE9A:  MOV             R7, SP
FAE9C:  BL              sub_FA50C
FAEA0:  POP.W           {R7,LR}
FAEA4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
