; =========================================================
; Game Engine Function: sub_1332BC
; Address            : 0x1332BC - 0x1332CC
; =========================================================

1332BC:  PUSH            {R7,LR}
1332BE:  MOV             R7, SP
1332C0:  BL              sub_12BCE4
1332C4:  POP.W           {R7,LR}
1332C8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
