; =========================================================
; Game Engine Function: sub_13CC88
; Address            : 0x13CC88 - 0x13CC98
; =========================================================

13CC88:  PUSH            {R7,LR}
13CC8A:  MOV             R7, SP
13CC8C:  BL              sub_12BCE4
13CC90:  POP.W           {R7,LR}
13CC94:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
