; =========================================================
; Game Engine Function: sub_13DB54
; Address            : 0x13DB54 - 0x13DB64
; =========================================================

13DB54:  PUSH            {R7,LR}
13DB56:  MOV             R7, SP
13DB58:  BL              sub_12BCE4
13DB5C:  POP.W           {R7,LR}
13DB60:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
