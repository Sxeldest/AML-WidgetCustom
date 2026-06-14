; =========================================================
; Game Engine Function: sub_99094
; Address            : 0x99094 - 0x9910A
; =========================================================

99094:  LDR             R1, =(dword_1ACF68 - 0x990A2)
99096:  MOVW            R2, #0x15B0
9909A:  VLDR            S8, =0.0
9909E:  ADD             R1, PC; dword_1ACF68
990A0:  LDR             R1, [R1]
990A2:  ADD             R2, R1
990A4:  VLDR            S12, [R1,#0x14]
990A8:  VLDR            S2, [R2,#4]
990AC:  VLDR            S0, [R2]
990B0:  VADD.F32        S4, S2, S2
990B4:  VLDR            S10, [R1,#0x10]
990B8:  VADD.F32        S6, S0, S0
990BC:  VNEG.F32        S2, S2
990C0:  VNEG.F32        S0, S0
990C4:  VCMP.F32        S12, S4
990C8:  VMOV.F32        S4, S8
990CC:  VMRS            APSR_nzcv, FPSCR
990D0:  IT GT
990D2:  VMOVGT.F32      S4, S2
990D6:  VCMP.F32        S10, S6
990DA:  VMOV.F32        S2, S8
990DE:  VMRS            APSR_nzcv, FPSCR
990E2:  IT GT
990E4:  VMOVGT.F32      S2, S0
990E8:  VADD.F32        S0, S12, S4
990EC:  VADD.F32        S6, S10, S2
990F0:  VSUB.F32        S4, S8, S4
990F4:  VSUB.F32        S2, S8, S2
990F8:  VSTR            S0, [R0,#0xC]
990FC:  VSTR            S6, [R0,#8]
99100:  VSTR            S4, [R0,#4]
99104:  VSTR            S2, [R0]
99108:  BX              LR
