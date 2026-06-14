; =========================================================
; Game Engine Function: sub_100A66
; Address            : 0x100A66 - 0x100A76
; =========================================================

100A66:  PUSH            {R7,LR}
100A68:  MOV             R7, SP
100A6A:  BL              sub_FB4AC
100A6E:  POP.W           {R7,LR}
100A72:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
