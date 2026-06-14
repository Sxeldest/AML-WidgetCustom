; =========================================================
; Game Engine Function: sub_140DF6
; Address            : 0x140DF6 - 0x140F4A
; =========================================================

140DF6:  VLDR            S2, [R1,#8]
140DFA:  VMOV.F32        S5, #1.0
140DFE:  VLDR            S10, [R1,#0x24]
140E02:  VLDR            S0, [R1,#4]
140E06:  VMUL.F32        S14, S10, S2
140E0A:  VLDR            S12, [R1,#0x28]
140E0E:  VLDR            S8, [R1,#0x18]
140E12:  VLDR            S6, [R1,#0x14]
140E16:  VLDR            S4, [R1,#0x10]
140E1A:  VMLS.F32        S14, S0, S12
140E1E:  VSTR            S14, [R0,#4]
140E22:  VLDR            S0, [R1,#4]
140E26:  VMUL.F32        S0, S0, S8
140E2A:  VMLS.F32        S0, S6, S2
140E2E:  VMUL.F32        S2, S6, S12
140E32:  VLDR            S6, [R1,#0x20]
140E36:  VMUL.F32        S1, S0, S6
140E3A:  VMLS.F32        S2, S10, S8
140E3E:  VMLA.F32        S1, S4, S14
140E42:  VSTR            S2, [R0]
140E46:  VLDR            S3, [R1]
140E4A:  VMLA.F32        S1, S2, S3
140E4E:  VCMP.F32        S1, #0.0
140E52:  VDIV.F32        S3, S5, S1
140E56:  VMRS            APSR_nzcv, FPSCR
140E5A:  IT NE
140E5C:  VMOVNE.F32      S5, S3
140E60:  VMUL.F32        S2, S2, S5
140E64:  VMUL.F32        S1, S8, S6
140E68:  VMUL.F32        S0, S0, S5
140E6C:  VSTR            S2, [R0]
140E70:  VMLS.F32        S1, S12, S4
140E74:  VLDR            S4, [R1]
140E78:  VSTR            S0, [R0,#8]
140E7C:  VMUL.F32        S12, S12, S4
140E80:  VLDR            S3, [R1,#8]
140E84:  VMUL.F32        S1, S1, S5
140E88:  VMLS.F32        S12, S3, S6
140E8C:  VSTR            S1, [R0,#0x10]
140E90:  VLDR            S7, [R1,#0x10]
140E94:  VMUL.F32        S12, S5, S12
140E98:  VMUL.F32        S9, S7, S10
140E9C:  VMUL.F32        S3, S3, S7
140EA0:  VSTR            S12, [R0,#0x14]
140EA4:  VLDR            S11, [R1,#0x14]
140EA8:  VMLS.F32        S3, S8, S4
140EAC:  VMLS.F32        S9, S6, S11
140EB0:  VMUL.F32        S6, S14, S5
140EB4:  VMUL.F32        S8, S5, S3
140EB8:  VMUL.F32        S11, S4, S11
140EBC:  VMUL.F32        S14, S5, S9
140EC0:  VSTR            S6, [R0,#4]
140EC4:  VLDR            S3, [R1,#4]
140EC8:  VSTR            S8, [R0,#0x18]
140ECC:  VSTR            S14, [R0,#0x20]
140ED0:  VMLS.F32        S11, S7, S3
140ED4:  VLDR            S9, [R1,#0x20]
140ED8:  VLDR            S7, [R1,#0x38]
140EDC:  VMUL.F32        S9, S9, S3
140EE0:  VLDR            S3, [R1,#0x30]
140EE4:  VMLS.F32        S9, S4, S10
140EE8:  VMUL.F32        S4, S5, S11
140EEC:  VMUL.F32        S10, S5, S9
140EF0:  VLDR            S5, [R1,#0x34]
140EF4:  VMUL.F32        S1, S1, S5
140EF8:  VMUL.F32        S12, S12, S5
140EFC:  VSTR            S4, [R0,#0x28]
140F00:  VSTR            S10, [R0,#0x24]
140F04:  VMLA.F32        S1, S3, S2
140F08:  VMLA.F32        S1, S7, S14
140F0C:  VNEG.F32        S2, S1
140F10:  VSTR            S2, [R0,#0x30]
140F14:  VLDR            S2, [R1,#0x30]
140F18:  VMLA.F32        S12, S2, S6
140F1C:  VMLA.F32        S12, S7, S10
140F20:  VNEG.F32        S6, S12
140F24:  VSTR            S6, [R0,#0x34]
140F28:  VLDR            S6, [R1,#0x34]
140F2C:  LDR             R1, [R0,#0xC]
140F2E:  VMUL.F32        S6, S8, S6
140F32:  BIC.W           R1, R1, #0x20000
140F36:  STR             R1, [R0,#0xC]
140F38:  VMLA.F32        S6, S2, S0
140F3C:  VMLA.F32        S6, S7, S4
140F40:  VNEG.F32        S0, S6
140F44:  VSTR            S0, [R0,#0x38]
140F48:  BX              LR
