; =========================================================
; Game Engine Function: sub_113358
; Address            : 0x113358 - 0x113368
; =========================================================

113358:  PUSH            {R7,LR}
11335A:  MOV             R7, SP
11335C:  BL              sub_113328
113360:  POP.W           {R7,LR}
113364:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
