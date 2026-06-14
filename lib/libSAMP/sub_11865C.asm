; =========================================================
; Game Engine Function: sub_11865C
; Address            : 0x11865C - 0x11866C
; =========================================================

11865C:  PUSH            {R7,LR}
11865E:  MOV             R7, SP
118660:  BL              sub_1137C0
118664:  POP.W           {R7,LR}
118668:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
