; =========================================================
; Game Engine Function: sub_13704A
; Address            : 0x13704A - 0x13705A
; =========================================================

13704A:  PUSH            {R7,LR}
13704C:  MOV             R7, SP
13704E:  BL              sub_12BCE4
137052:  POP.W           {R7,LR}
137056:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
