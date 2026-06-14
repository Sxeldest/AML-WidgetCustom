; =========================================================
; Game Engine Function: sub_20E238
; Address            : 0x20E238 - 0x20E24A
; =========================================================

20E238:  CMP             R0, R1
20E23A:  ITT NE
20E23C:  MOVNE           R0, R1; void *
20E23E:  BNE.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
20E242:  MOVS            R1, #0
20E244:  STRB.W          R1, [R0,#0x70]
20E248:  BX              LR
