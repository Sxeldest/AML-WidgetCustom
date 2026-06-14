; =========================================================
; Game Engine Function: sub_1147D8
; Address            : 0x1147D8 - 0x114802
; =========================================================

1147D8:  LDR             R1, [R2]
1147DA:  CBZ             R1, loc_1147FA
1147DC:  LDR             R1, [R1]
1147DE:  CBZ             R1, loc_1147FA
1147E0:  VLDR            S0, [R1,#0xC]
1147E4:  VLDR            S2, [R1,#0x10]
1147E8:  VCVT.F32.S32    S0, S0
1147EC:  VCVT.F32.S32    S2, S2
1147F0:  VSTR            S0, [R0]
1147F4:  VSTR            S2, [R0,#4]
1147F8:  BX              LR
1147FA:  MOVS            R1, #0
1147FC:  STR             R1, [R0]
1147FE:  STR             R1, [R0,#4]
114800:  BX              LR
