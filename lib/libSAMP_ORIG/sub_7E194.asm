; =========================================================
; Game Engine Function: sub_7E194
; Address            : 0x7E194 - 0x7E1A4
; =========================================================

7E194:  PUSH            {R7,LR}
7E196:  MOV             R7, SP
7E198:  BL              sub_7E094
7E19C:  POP.W           {R7,LR}
7E1A0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
