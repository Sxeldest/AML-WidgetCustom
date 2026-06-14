; =========================================================
; Game Engine Function: sub_7B514
; Address            : 0x7B514 - 0x7B524
; =========================================================

7B514:  PUSH            {R7,LR}
7B516:  MOV             R7, SP
7B518:  BL              sub_7C3B4
7B51C:  POP.W           {R7,LR}
7B520:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
