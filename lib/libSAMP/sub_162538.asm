; =========================================================
; Game Engine Function: sub_162538
; Address            : 0x162538 - 0x162548
; =========================================================

162538:  PUSH            {R7,LR}
16253A:  MOV             R7, SP
16253C:  BL              sub_162338
162540:  POP.W           {R7,LR}
162544:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
