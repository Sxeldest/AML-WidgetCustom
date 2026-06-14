; =========================================================
; Game Engine Function: _ZN10CPlayerPed14AnnoyPlayerPedEb
; Address            : 0x4C99A4 - 0x4C99D6
; =========================================================

4C99A4:  LDR.W           R0, [R0,#0x5A0]
4C99A8:  LDRSB.W         R2, [R0,#0x25]
4C99AC:  CMP             R2, #0x33 ; '3'
4C99AE:  BGT             loc_4C99B8
4C99B0:  ADDS            R1, R2, #1
4C99B2:  STRB.W          R1, [R0,#0x25]
4C99B6:  BX              LR
4C99B8:  CMP             R2, #0x36 ; '6'
4C99BA:  BGT             loc_4C99C8
4C99BC:  CMP             R1, #1
4C99BE:  BNE             loc_4C99C8
4C99C0:  ADDS            R1, R2, #1
4C99C2:  STRB.W          R1, [R0,#0x25]
4C99C6:  BX              LR
4C99C8:  CMP             R1, #1
4C99CA:  IT NE
4C99CC:  BXNE            LR
4C99CE:  MOVS            R1, #0x2E ; '.'
4C99D0:  STRB.W          R1, [R0,#0x25]
4C99D4:  BX              LR
