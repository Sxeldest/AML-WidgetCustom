; =========================================================
; Game Engine Function: sub_F6048
; Address            : 0xF6048 - 0xF6058
; =========================================================

F6048:  PUSH            {R7,LR}
F604A:  MOV             R7, SP
F604C:  BL              sub_F5FFC
F6050:  POP.W           {R7,LR}
F6054:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
