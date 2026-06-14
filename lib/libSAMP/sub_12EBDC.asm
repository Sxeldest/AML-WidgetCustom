; =========================================================
; Game Engine Function: sub_12EBDC
; Address            : 0x12EBDC - 0x12EBEC
; =========================================================

12EBDC:  PUSH            {R7,LR}
12EBDE:  MOV             R7, SP
12EBE0:  BL              sub_12EBA4
12EBE4:  POP.W           {R7,LR}
12EBE8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
