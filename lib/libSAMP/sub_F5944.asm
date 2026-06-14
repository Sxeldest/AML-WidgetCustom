; =========================================================
; Game Engine Function: sub_F5944
; Address            : 0xF5944 - 0xF5954
; =========================================================

F5944:  PUSH            {R7,LR}
F5946:  MOV             R7, SP
F5948:  BL              sub_F559C
F594C:  POP.W           {R7,LR}
F5950:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
