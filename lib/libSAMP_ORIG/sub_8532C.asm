; =========================================================
; Game Engine Function: sub_8532C
; Address            : 0x8532C - 0x8533C
; =========================================================

8532C:  PUSH            {R7,LR}
8532E:  MOV             R7, SP
85330:  BL              sub_7E094
85334:  POP.W           {R7,LR}
85338:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
