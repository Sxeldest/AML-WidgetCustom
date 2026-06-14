; =========================================================
; Game Engine Function: sub_158CA4
; Address            : 0x158CA4 - 0x158CB4
; =========================================================

158CA4:  PUSH            {R7,LR}
158CA6:  MOV             R7, SP
158CA8:  BL              sub_158C6C
158CAC:  POP.W           {R7,LR}
158CB0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
