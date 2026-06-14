; =========================================================
; Game Engine Function: sub_1087C8
; Address            : 0x1087C8 - 0x108806
; =========================================================

1087C8:  VLDR            S0, =-360.0
1087CC:  VMOV            S2, R0
1087D0:  VLDR            S4, =180.0
1087D4:  VADD.F32        S0, S2, S0
1087D8:  VCMP.F32        S2, S4
1087DC:  VLDR            S4, =-180.0
1087E0:  VMRS            APSR_nzcv, FPSCR
1087E4:  IT GT
1087E6:  VMOVGT.F32      S2, S0
1087EA:  VLDR            S0, =360.0
1087EE:  VCMP.F32        S2, S4
1087F2:  VMRS            APSR_nzcv, FPSCR
1087F6:  VADD.F32        S0, S2, S0
1087FA:  IT MI
1087FC:  VMOVMI.F32      S2, S0
108800:  VMOV            R0, S2
108804:  BX              LR
