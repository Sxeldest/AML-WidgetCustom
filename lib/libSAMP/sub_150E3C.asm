; =========================================================
; Game Engine Function: sub_150E3C
; Address            : 0x150E3C - 0x150E4C
; =========================================================

150E3C:  PUSH            {R7,LR}
150E3E:  MOV             R7, SP
150E40:  BL              sub_150E00
150E44:  POP.W           {R7,LR}
150E48:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
