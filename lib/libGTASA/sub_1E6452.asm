; =========================================================
; Game Engine Function: sub_1E6452
; Address            : 0x1E6452 - 0x1E64CC
; =========================================================

1E6452:  VLDR            S0, [R2]
1E6456:  VLDR            S8, [R1]
1E645A:  VLDR            S6, [R2,#0x10]
1E645E:  VLDR            S10, [R1,#4]
1E6462:  VMUL.F32        S0, S8, S0
1E6466:  VLDR            S12, [R1,#8]
1E646A:  VMUL.F32        S6, S10, S6
1E646E:  VLDR            S14, [R2,#0x20]
1E6472:  VLDR            S2, [R2,#4]
1E6476:  VMUL.F32        S14, S12, S14
1E647A:  VLDR            S4, [R2,#8]
1E647E:  VMUL.F32        S2, S8, S2
1E6482:  VMUL.F32        S4, S8, S4
1E6486:  VADD.F32        S0, S0, S6
1E648A:  VLDR            S6, [R2,#0x14]
1E648E:  VMUL.F32        S6, S10, S6
1E6492:  VADD.F32        S0, S0, S14
1E6496:  VLDR            S14, [R2,#0x18]
1E649A:  VADD.F32        S2, S2, S6
1E649E:  VSTR            S0, [R0]
1E64A2:  VLDR            S0, [R2,#0x24]
1E64A6:  VMUL.F32        S0, S12, S0
1E64AA:  VADD.F32        S0, S2, S0
1E64AE:  VMUL.F32        S2, S10, S14
1E64B2:  VSTR            S0, [R0,#4]
1E64B6:  VLDR            S0, [R2,#0x28]
1E64BA:  VADD.F32        S2, S4, S2
1E64BE:  VMUL.F32        S0, S12, S0
1E64C2:  VADD.F32        S0, S2, S0
1E64C6:  VSTR            S0, [R0,#8]
1E64CA:  BX              LR
