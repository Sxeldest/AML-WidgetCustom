; =========================================================
; Game Engine Function: sub_129994
; Address            : 0x129994 - 0x1299A4
; =========================================================

129994:  PUSH            {R7,LR}
129996:  MOV             R7, SP
129998:  BL              sub_129638
12999C:  POP.W           {R7,LR}
1299A0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
