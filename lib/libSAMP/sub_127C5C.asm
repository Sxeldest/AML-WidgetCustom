; =========================================================
; Game Engine Function: sub_127C5C
; Address            : 0x127C5C - 0x127C6C
; =========================================================

127C5C:  PUSH            {R7,LR}
127C5E:  MOV             R7, SP
127C60:  BL              sub_12756C
127C64:  POP.W           {R7,LR}
127C68:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
