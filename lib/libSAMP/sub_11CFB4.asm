; =========================================================
; Game Engine Function: sub_11CFB4
; Address            : 0x11CFB4 - 0x11CFC4
; =========================================================

11CFB4:  PUSH            {R7,LR}
11CFB6:  MOV             R7, SP
11CFB8:  BL              sub_11CD1C
11CFBC:  POP.W           {R7,LR}
11CFC0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
