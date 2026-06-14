; =========================================================
; Game Engine Function: mpg123_tell_stream
; Address            : 0x2313FE - 0x231412
; =========================================================

2313FE:  CMP             R0, #0
231400:  ITT EQ
231402:  MOVEQ.W         R0, #0xFFFFFFFF
231406:  BXEQ            LR
231408:  MOVW            R1, #0xB2E0
23140C:  LDR             R1, [R0,R1]
23140E:  LDR             R1, [R1,#0x24]
231410:  BX              R1
