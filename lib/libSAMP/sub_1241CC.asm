; =========================================================
; Game Engine Function: sub_1241CC
; Address            : 0x1241CC - 0x1241DC
; =========================================================

1241CC:  PUSH            {R7,LR}
1241CE:  MOV             R7, SP
1241D0:  BL              sub_123E80
1241D4:  POP.W           {R7,LR}
1241D8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
