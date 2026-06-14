; =========================================================
; Game Engine Function: sub_1153E4
; Address            : 0x1153E4 - 0x1153F4
; =========================================================

1153E4:  PUSH            {R7,LR}
1153E6:  MOV             R7, SP
1153E8:  BL              sub_114FC4
1153EC:  POP.W           {R7,LR}
1153F0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
