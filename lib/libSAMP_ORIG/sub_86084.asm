; =========================================================
; Game Engine Function: sub_86084
; Address            : 0x86084 - 0x86094
; =========================================================

86084:  PUSH            {R7,LR}
86086:  MOV             R7, SP
86088:  BL              sub_7E094
8608C:  POP.W           {R7,LR}
86090:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
