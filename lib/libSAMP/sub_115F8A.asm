; =========================================================
; Game Engine Function: sub_115F8A
; Address            : 0x115F8A - 0x115F9A
; =========================================================

115F8A:  PUSH            {R7,LR}
115F8C:  MOV             R7, SP
115F8E:  BL              sub_115EE8
115F92:  POP.W           {R7,LR}
115F96:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
