; =========================================================
; Game Engine Function: sub_11FDF8
; Address            : 0x11FDF8 - 0x11FE08
; =========================================================

11FDF8:  PUSH            {R7,LR}
11FDFA:  MOV             R7, SP
11FDFC:  BL              sub_11FAC8
11FE00:  POP.W           {R7,LR}
11FE04:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
