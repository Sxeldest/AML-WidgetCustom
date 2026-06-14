; =========================================================
; Game Engine Function: sub_12E018
; Address            : 0x12E018 - 0x12E028
; =========================================================

12E018:  PUSH            {R7,LR}
12E01A:  MOV             R7, SP
12E01C:  BL              sub_12DF78
12E020:  POP.W           {R7,LR}
12E024:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
