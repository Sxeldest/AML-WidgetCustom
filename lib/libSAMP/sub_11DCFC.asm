; =========================================================
; Game Engine Function: sub_11DCFC
; Address            : 0x11DCFC - 0x11DD0C
; =========================================================

11DCFC:  PUSH            {R7,LR}
11DCFE:  MOV             R7, SP
11DD00:  BL              sub_11DAA0
11DD04:  POP.W           {R7,LR}
11DD08:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
