; =========================================================
; Game Engine Function: sub_F6348
; Address            : 0xF6348 - 0xF635A
; =========================================================

F6348:  CMP             R0, R1
F634A:  ITT NE
F634C:  MOVNE           R0, R1; void *
F634E:  BNE.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F6352:  MOVS            R1, #0
F6354:  STRB.W          R1, [R0,#0x70]
F6358:  BX              LR
