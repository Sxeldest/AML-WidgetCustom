; =========================================================
; Game Engine Function: sub_153D90
; Address            : 0x153D90 - 0x153DA0
; =========================================================

153D90:  PUSH            {R7,LR}
153D92:  MOV             R7, SP
153D94:  BL              sub_150E00
153D98:  POP.W           {R7,LR}
153D9C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
