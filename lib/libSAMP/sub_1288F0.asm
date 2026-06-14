; =========================================================
; Game Engine Function: sub_1288F0
; Address            : 0x1288F0 - 0x128900
; =========================================================

1288F0:  PUSH            {R7,LR}
1288F2:  MOV             R7, SP
1288F4:  BL              sub_128460
1288F8:  POP.W           {R7,LR}
1288FC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
