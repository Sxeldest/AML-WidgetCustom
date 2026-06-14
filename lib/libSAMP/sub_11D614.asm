; =========================================================
; Game Engine Function: sub_11D614
; Address            : 0x11D614 - 0x11D624
; =========================================================

11D614:  PUSH            {R7,LR}
11D616:  MOV             R7, SP
11D618:  BL              sub_11D3A0
11D61C:  POP.W           {R7,LR}
11D620:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
