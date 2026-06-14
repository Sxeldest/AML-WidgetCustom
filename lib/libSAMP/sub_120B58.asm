; =========================================================
; Game Engine Function: sub_120B58
; Address            : 0x120B58 - 0x120B68
; =========================================================

120B58:  PUSH            {R7,LR}
120B5A:  MOV             R7, SP
120B5C:  BL              sub_120848
120B60:  POP.W           {R7,LR}
120B64:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
