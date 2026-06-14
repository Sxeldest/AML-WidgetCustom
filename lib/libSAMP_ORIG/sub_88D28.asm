; =========================================================
; Game Engine Function: sub_88D28
; Address            : 0x88D28 - 0x88E26
; =========================================================

88D28:  LDR             R1, =(dword_1ACF68 - 0x88D3A)
88D2A:  MOVW            R2, #0x1518
88D2E:  VLDR            S2, [R0]
88D32:  VMOV.F32        S0, #1.0
88D36:  ADD             R1, PC; dword_1ACF68
88D38:  VLDR            S4, [R0,#4]
88D3C:  VLDR            S6, [R0,#8]
88D40:  VMOV.F32        S12, S2
88D44:  LDR             R1, [R1]
88D46:  VLDR            S8, [R0,#0xC]
88D4A:  VMOV.F32        S14, S6
88D4E:  ADDS            R0, R1, R2
88D50:  VLDR            S10, [R0]
88D54:  VCMP.F32        S4, S0
88D58:  VMRS            APSR_nzcv, FPSCR
88D5C:  VCMP.F32        S2, S0
88D60:  VMUL.F32        S8, S8, S10
88D64:  VMOV.F32        S10, S4
88D68:  IT GT
88D6A:  VMOVGT.F32      S10, S0
88D6E:  VMRS            APSR_nzcv, FPSCR
88D72:  VCMP.F32        S6, S0
88D76:  IT GT
88D78:  VMOVGT.F32      S12, S0
88D7C:  VMRS            APSR_nzcv, FPSCR
88D80:  IT GT
88D82:  VMOVGT.F32      S14, S0
88D86:  VCMP.F32        S8, S0
88D8A:  VMRS            APSR_nzcv, FPSCR
88D8E:  VCMP.F32        S4, #0.0
88D92:  VMOV.F32        S4, #0.5
88D96:  VMOV.F32        S1, S8
88D9A:  IT GT
88D9C:  VMOVGT.F32      S1, S0
88DA0:  VMRS            APSR_nzcv, FPSCR
88DA4:  VCMP.F32        S2, #0.0
88DA8:  VLDR            S0, =0.0
88DAC:  IT MI
88DAE:  VMOVMI.F32      S10, S0
88DB2:  VMRS            APSR_nzcv, FPSCR
88DB6:  VCMP.F32        S6, #0.0
88DBA:  IT MI
88DBC:  VMOVMI.F32      S12, S0
88DC0:  VMRS            APSR_nzcv, FPSCR
88DC4:  VCMP.F32        S8, #0.0
88DC8:  VMOV.F32        S2, S4
88DCC:  IT MI
88DCE:  VMOVMI.F32      S14, S0
88DD2:  VMOV.F32        S6, S4
88DD6:  VMRS            APSR_nzcv, FPSCR
88DDA:  IT MI
88DDC:  VMOVMI.F32      S1, S0
88DE0:  VLDR            S0, =255.0
88DE4:  VMOV.F32        S8, S4
88DE8:  VMLA.F32        S4, S1, S0
88DEC:  VMLA.F32        S2, S10, S0
88DF0:  VMLA.F32        S6, S12, S0
88DF4:  VMLA.F32        S8, S14, S0
88DF8:  VCVT.S32.F32    S0, S2
88DFC:  VCVT.S32.F32    S2, S6
88E00:  VCVT.S32.F32    S6, S8
88E04:  VMOV            R0, S0
88E08:  VMOV            R1, S2
88E0C:  VCVT.S32.F32    S0, S4
88E10:  ORR.W           R0, R1, R0,LSL#8
88E14:  VMOV            R1, S6
88E18:  ORR.W           R0, R0, R1,LSL#16
88E1C:  VMOV            R1, S0
88E20:  ORR.W           R0, R0, R1,LSL#24
88E24:  BX              LR
