; =========================================================
; Game Engine Function: sub_88A34
; Address            : 0x88A34 - 0x88B1E
; =========================================================

88A34:  VMOV.F32        S0, #1.0
88A38:  VLDR            S4, [R0,#4]
88A3C:  VLDR            S8, [R0,#0xC]
88A40:  VLDR            S2, [R0]
88A44:  VMOV.F32        S10, S4
88A48:  VLDR            S6, [R0,#8]
88A4C:  VMOV.F32        S12, S8
88A50:  VMOV.F32        S14, S2
88A54:  VMOV.F32        S1, S6
88A58:  VCMP.F32        S4, S0
88A5C:  VMRS            APSR_nzcv, FPSCR
88A60:  VCMP.F32        S8, S0
88A64:  IT GT
88A66:  VMOVGT.F32      S10, S0
88A6A:  VMRS            APSR_nzcv, FPSCR
88A6E:  VCMP.F32        S2, S0
88A72:  IT GT
88A74:  VMOVGT.F32      S12, S0
88A78:  VMRS            APSR_nzcv, FPSCR
88A7C:  VCMP.F32        S6, S0
88A80:  IT GT
88A82:  VMOVGT.F32      S14, S0
88A86:  VMRS            APSR_nzcv, FPSCR
88A8A:  VCMP.F32        S4, #0.0
88A8E:  IT GT
88A90:  VMOVGT.F32      S1, S0
88A94:  VMOV.F32        S4, #0.5
88A98:  VMRS            APSR_nzcv, FPSCR
88A9C:  VCMP.F32        S8, #0.0
88AA0:  VLDR            S0, =0.0
88AA4:  IT MI
88AA6:  VMOVMI.F32      S10, S0
88AAA:  VMRS            APSR_nzcv, FPSCR
88AAE:  VCMP.F32        S2, #0.0
88AB2:  IT MI
88AB4:  VMOVMI.F32      S12, S0
88AB8:  VMRS            APSR_nzcv, FPSCR
88ABC:  VCMP.F32        S6, #0.0
88AC0:  IT MI
88AC2:  VMOVMI.F32      S14, S0
88AC6:  VMRS            APSR_nzcv, FPSCR
88ACA:  IT MI
88ACC:  VMOVMI.F32      S1, S0
88AD0:  VLDR            S0, =255.0
88AD4:  VMOV.F32        S2, S4
88AD8:  VMOV.F32        S6, S4
88ADC:  VMOV.F32        S8, S4
88AE0:  VMLA.F32        S4, S1, S0
88AE4:  VMLA.F32        S2, S10, S0
88AE8:  VMLA.F32        S6, S12, S0
88AEC:  VMLA.F32        S8, S14, S0
88AF0:  VCVT.S32.F32    S4, S4
88AF4:  VCVT.S32.F32    S0, S2
88AF8:  VCVT.S32.F32    S2, S6
88AFC:  VCVT.S32.F32    S6, S8
88B00:  VMOV            R0, S0
88B04:  VMOV            R1, S6
88B08:  ORR.W           R0, R1, R0,LSL#8
88B0C:  VMOV            R1, S4
88B10:  ORR.W           R0, R0, R1,LSL#16
88B14:  VMOV            R1, S2
88B18:  ORR.W           R0, R0, R1,LSL#24
88B1C:  BX              LR
