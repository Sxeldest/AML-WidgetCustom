; =========================================================
; Game Engine Function: sub_13D8F4
; Address            : 0x13D8F4 - 0x13D904
; =========================================================

13D8F4:  PUSH            {R7,LR}
13D8F6:  MOV             R7, SP
13D8F8:  BL              sub_12BCE4
13D8FC:  POP.W           {R7,LR}
13D900:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
