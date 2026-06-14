; =========================================================
; Game Engine Function: sub_11F020
; Address            : 0x11F020 - 0x11F030
; =========================================================

11F020:  PUSH            {R7,LR}
11F022:  MOV             R7, SP
11F024:  BL              sub_11E89C
11F028:  POP.W           {R7,LR}
11F02C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
