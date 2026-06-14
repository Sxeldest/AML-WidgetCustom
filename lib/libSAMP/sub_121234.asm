; =========================================================
; Game Engine Function: sub_121234
; Address            : 0x121234 - 0x121244
; =========================================================

121234:  PUSH            {R7,LR}
121236:  MOV             R7, SP
121238:  BL              sub_120F10
12123C:  POP.W           {R7,LR}
121240:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
