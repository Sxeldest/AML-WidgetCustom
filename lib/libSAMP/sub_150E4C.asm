; =========================================================
; Game Engine Function: sub_150E4C
; Address            : 0x150E4C - 0x150E5C
; =========================================================

150E4C:  PUSH            {R7,LR}
150E4E:  MOV             R7, SP
150E50:  BL              sub_150E00
150E54:  POP.W           {R7,LR}
150E58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
