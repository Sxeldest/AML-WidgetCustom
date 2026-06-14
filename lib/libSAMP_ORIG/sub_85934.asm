; =========================================================
; Game Engine Function: sub_85934
; Address            : 0x85934 - 0x85944
; =========================================================

85934:  PUSH            {R7,LR}
85936:  MOV             R7, SP
85938:  BL              sub_7E094
8593C:  POP.W           {R7,LR}
85940:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
