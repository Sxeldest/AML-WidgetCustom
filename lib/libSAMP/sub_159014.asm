; =========================================================
; Game Engine Function: sub_159014
; Address            : 0x159014 - 0x159024
; =========================================================

159014:  PUSH            {R7,LR}
159016:  MOV             R7, SP
159018:  BL              sub_158F60
15901C:  POP.W           {R7,LR}
159020:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
