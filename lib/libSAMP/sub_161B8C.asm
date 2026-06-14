; =========================================================
; Game Engine Function: sub_161B8C
; Address            : 0x161B8C - 0x161B9C
; =========================================================

161B8C:  PUSH            {R7,LR}
161B8E:  MOV             R7, SP
161B90:  BL              sub_16198C
161B94:  POP.W           {R7,LR}
161B98:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
