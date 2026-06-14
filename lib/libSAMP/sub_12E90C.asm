; =========================================================
; Game Engine Function: sub_12E90C
; Address            : 0x12E90C - 0x12E91C
; =========================================================

12E90C:  PUSH            {R7,LR}
12E90E:  MOV             R7, SP
12E910:  BL              sub_12E8CC
12E914:  POP.W           {R7,LR}
12E918:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
