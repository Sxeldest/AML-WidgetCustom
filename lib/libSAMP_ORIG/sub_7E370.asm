; =========================================================
; Game Engine Function: sub_7E370
; Address            : 0x7E370 - 0x7E380
; =========================================================

7E370:  PUSH            {R7,LR}
7E372:  MOV             R7, SP
7E374:  BL              sub_7E094
7E378:  POP.W           {R7,LR}
7E37C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
