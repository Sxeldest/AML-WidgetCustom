; =========================================================
; Game Engine Function: sub_1EE994
; Address            : 0x1EE994 - 0x1EE9A4
; =========================================================

1EE994:  PUSH            {R7,LR}
1EE996:  MOV             R7, SP
1EE998:  BL              sub_1EE96C
1EE99C:  POP.W           {R7,LR}
1EE9A0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
