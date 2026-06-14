; =========================================================
; Game Engine Function: sub_737E4
; Address            : 0x737E4 - 0x737F4
; =========================================================

737E4:  PUSH            {R7,LR}
737E6:  MOV             R7, SP
737E8:  BL              sub_7C3B4
737EC:  POP.W           {R7,LR}
737F0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
