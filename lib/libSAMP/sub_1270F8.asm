; =========================================================
; Game Engine Function: sub_1270F8
; Address            : 0x1270F8 - 0x127108
; =========================================================

1270F8:  PUSH            {R7,LR}
1270FA:  MOV             R7, SP
1270FC:  BL              sub_126B70
127100:  POP.W           {R7,LR}
127104:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
