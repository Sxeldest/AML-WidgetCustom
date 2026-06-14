; =========================================================
; Game Engine Function: sub_20DD62
; Address            : 0x20DD62 - 0x20DD72
; =========================================================

20DD62:  PUSH            {R7,LR}
20DD64:  MOV             R7, SP
20DD66:  BL              sub_20DD4C
20DD6A:  POP.W           {R7,LR}
20DD6E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
