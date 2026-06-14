; =========================================================
; Game Engine Function: sub_136028
; Address            : 0x136028 - 0x136036
; =========================================================

136028:  LDRB            R1, [R0,#8]
13602A:  LSLS            R1, R1, #0x1F; std::nothrow_t *
13602C:  ITT NE
13602E:  LDRNE           R0, [R0,#0x10]; void *
136030:  BNE.W           _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
136034:  BX              LR
