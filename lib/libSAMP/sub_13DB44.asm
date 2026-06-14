; =========================================================
; Game Engine Function: sub_13DB44
; Address            : 0x13DB44 - 0x13DB54
; =========================================================

13DB44:  PUSH            {R7,LR}
13DB46:  MOV             R7, SP
13DB48:  BL              sub_12BCE4
13DB4C:  POP.W           {R7,LR}
13DB50:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
