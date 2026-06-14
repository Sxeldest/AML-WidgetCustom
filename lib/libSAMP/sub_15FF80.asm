; =========================================================
; Game Engine Function: sub_15FF80
; Address            : 0x15FF80 - 0x15FF90
; =========================================================

15FF80:  PUSH            {R7,LR}
15FF82:  MOV             R7, SP
15FF84:  BL              sub_15FF14
15FF88:  POP.W           {R7,LR}
15FF8C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
