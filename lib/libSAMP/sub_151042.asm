; =========================================================
; Game Engine Function: sub_151042
; Address            : 0x151042 - 0x151052
; =========================================================

151042:  PUSH            {R7,LR}
151044:  MOV             R7, SP
151046:  BL              sub_158C6C
15104A:  POP.W           {R7,LR}
15104E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
