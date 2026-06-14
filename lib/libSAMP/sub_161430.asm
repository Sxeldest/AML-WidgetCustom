; =========================================================
; Game Engine Function: sub_161430
; Address            : 0x161430 - 0x161440
; =========================================================

161430:  PUSH            {R7,LR}
161432:  MOV             R7, SP
161434:  BL              sub_161010
161438:  POP.W           {R7,LR}
16143C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
