; =========================================================
; Game Engine Function: sub_13DB64
; Address            : 0x13DB64 - 0x13DB74
; =========================================================

13DB64:  PUSH            {R7,LR}
13DB66:  MOV             R7, SP
13DB68:  BL              sub_12BCE4
13DB6C:  POP.W           {R7,LR}
13DB70:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
