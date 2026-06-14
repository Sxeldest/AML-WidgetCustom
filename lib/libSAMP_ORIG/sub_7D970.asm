; =========================================================
; Game Engine Function: sub_7D970
; Address            : 0x7D970 - 0x7D980
; =========================================================

7D970:  PUSH            {R7,LR}
7D972:  MOV             R7, SP
7D974:  BL              sub_7C3B4
7D978:  POP.W           {R7,LR}
7D97C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
