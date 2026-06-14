; =========================================================
; Game Engine Function: sub_11126C
; Address            : 0x11126C - 0x11127C
; =========================================================

11126C:  PUSH            {R7,LR}
11126E:  MOV             R7, SP
111270:  BL              sub_110E10
111274:  POP.W           {R7,LR}
111278:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
