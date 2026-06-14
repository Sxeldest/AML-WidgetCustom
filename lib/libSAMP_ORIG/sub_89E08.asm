; =========================================================
; Game Engine Function: sub_89E08
; Address            : 0x89E08 - 0x8A0A6
; =========================================================

89E08:  PUSH            {R4-R7,LR}
89E0A:  ADD             R7, SP, #0xC
89E0C:  PUSH.W          {R8}
89E10:  VPUSH           {D8-D13}
89E14:  SUB             SP, SP, #0x30; float
89E16:  LDR             R5, =(dword_1ACF68 - 0x89E22)
89E18:  MOVW            R4, #0x155C
89E1C:  LDR             R6, =(__stack_chk_guard_ptr - 0x89E24)
89E1E:  ADD             R5, PC; dword_1ACF68
89E20:  ADD             R6, PC; __stack_chk_guard_ptr
89E22:  LDR             R6, [R6]; __stack_chk_guard
89E24:  LDR             R6, [R6]
89E26:  STR             R6, [SP,#0x70+var_44]
89E28:  LDR             R6, [R5]
89E2A:  STR             R1, [SP,#0x70+var_48]
89E2C:  ADD             R4, R6
89E2E:  STRD.W          R3, R0, [SP,#0x70+var_50]
89E32:  STR             R2, [SP,#0x70+var_54]
89E34:  VLDR            S16, [R4]
89E38:  VCMP.F32        S16, #0.0
89E3C:  VMRS            APSR_nzcv, FPSCR
89E40:  BLE.W           loc_8A088
89E44:  VMOV.F32        S20, #1.0
89E48:  MOVW            R8, #0x1518
89E4C:  VMOV            S0, R1
89E50:  ADD             R6, R8
89E52:  VMOV            S2, R0
89E56:  VLDR            S24, =0.0
89E5A:  VMOV            S4, R3
89E5E:  LDR.W           R4, [R6,#0x494]
89E62:  VMOV            S6, R2
89E66:  VLDR            S26, =255.0
89E6A:  VMOV.F32        S22, #0.5
89E6E:  VLDR            S18, [R7,#arg_0]
89E72:  LDR.W           R0, [R4,#0x27C]; int
89E76:  VADD.F32        S0, S0, S20
89E7A:  VADD.F32        S2, S2, S20
89E7E:  VADD.F32        S4, S4, S20
89E82:  VADD.F32        S6, S6, S20
89E86:  VSTR            S0, [SP,#0x70+var_58]
89E8A:  VSTR            S2, [SP,#0x70+var_5C]
89E8E:  VLDR            S0, [R6]
89E92:  VSTR            S4, [SP,#0x70+var_60]
89E96:  VSTR            S6, [SP,#0x70+var_64]
89E9A:  VLDR            S8, [R6,#0x118]
89E9E:  VLDR            S4, [R6,#0x110]
89EA2:  VMUL.F32        S0, S8, S0
89EA6:  VLDR            S2, [R6,#0x10C]
89EAA:  VLDR            S6, [R6,#0x114]
89EAE:  VCMP.F32        S4, S20
89EB2:  VMRS            APSR_nzcv, FPSCR
89EB6:  VMOV.F32        S8, S4
89EBA:  VCMP.F32        S2, S20
89EBE:  IT GT
89EC0:  VMOVGT.F32      S8, S20
89EC4:  VMRS            APSR_nzcv, FPSCR
89EC8:  VMOV.F32        S10, S2
89ECC:  VCMP.F32        S6, S20
89ED0:  IT GT
89ED2:  VMOVGT.F32      S10, S20
89ED6:  VMRS            APSR_nzcv, FPSCR
89EDA:  VMOV.F32        S12, S6
89EDE:  VCMP.F32        S0, S20
89EE2:  IT GT
89EE4:  VMOVGT.F32      S12, S20
89EE8:  VMRS            APSR_nzcv, FPSCR
89EEC:  VMOV.F32        S14, S0
89EF0:  VCMP.F32        S4, #0.0
89EF4:  IT GT
89EF6:  VMOVGT.F32      S14, S20
89EFA:  VMRS            APSR_nzcv, FPSCR
89EFE:  VCMP.F32        S2, #0.0
89F02:  IT MI
89F04:  VMOVMI.F32      S8, S24
89F08:  VMRS            APSR_nzcv, FPSCR
89F0C:  VCMP.F32        S6, #0.0
89F10:  IT MI
89F12:  VMOVMI.F32      S10, S24
89F16:  VMRS            APSR_nzcv, FPSCR
89F1A:  VCMP.F32        S0, #0.0
89F1E:  VMOV.F32        S0, S22
89F22:  IT MI
89F24:  VMOVMI.F32      S12, S24
89F28:  VMOV.F32        S2, S22
89F2C:  VMRS            APSR_nzcv, FPSCR
89F30:  VMOV.F32        S4, S22
89F34:  IT MI
89F36:  VMOVMI.F32      S14, S24
89F3A:  VMOV.F32        S6, S22
89F3E:  MOVS            R6, #0xF
89F40:  VSTR            S16, [SP,#0x70+var_68]
89F44:  STR             R6, [SP,#0x70+var_6C]; int
89F46:  VMLA.F32        S0, S8, S26
89F4A:  VSTR            S18, [SP,#0x70+var_70]
89F4E:  VMLA.F32        S2, S10, S26
89F52:  VMLA.F32        S4, S12, S26
89F56:  VMLA.F32        S6, S14, S26
89F5A:  VCVT.S32.F32    S0, S0
89F5E:  VCVT.S32.F32    S2, S2
89F62:  VCVT.S32.F32    S4, S4
89F66:  VMOV            R1, S0
89F6A:  VMOV            R2, S2
89F6E:  VCVT.S32.F32    S0, S6
89F72:  ORR.W           R1, R2, R1,LSL#8
89F76:  VMOV            R2, S4
89F7A:  ORR.W           R1, R1, R2,LSL#16
89F7E:  VMOV            R2, S0
89F82:  ORR.W           R3, R1, R2,LSL#24; int
89F86:  ADD             R1, SP, #0x70+var_5C; int
89F88:  ADD             R2, SP, #0x70+var_64; int
89F8A:  BL              sub_9D568
89F8E:  LDR             R0, [R5]
89F90:  ADD             R0, R8
89F92:  VLDR            S0, [R0]
89F96:  VLDR            S8, [R0,#0x108]
89F9A:  VLDR            S4, [R0,#0x100]
89F9E:  VMUL.F32        S0, S8, S0
89FA2:  VLDR            S2, [R0,#0xFC]
89FA6:  VLDR            S6, [R0,#0x104]
89FAA:  VCMP.F32        S4, S20
89FAE:  VMRS            APSR_nzcv, FPSCR
89FB2:  VMOV.F32        S8, S4
89FB6:  VCMP.F32        S2, S20
89FBA:  IT GT
89FBC:  VMOVGT.F32      S8, S20
89FC0:  VMRS            APSR_nzcv, FPSCR
89FC4:  VMOV.F32        S10, S2
89FC8:  VCMP.F32        S6, S20
89FCC:  IT GT
89FCE:  VMOVGT.F32      S10, S20
89FD2:  VMRS            APSR_nzcv, FPSCR
89FD6:  VMOV.F32        S12, S6
89FDA:  VCMP.F32        S0, S20
89FDE:  IT GT
89FE0:  VMOVGT.F32      S12, S20
89FE4:  VMRS            APSR_nzcv, FPSCR
89FE8:  VMOV.F32        S14, S0
89FEC:  VCMP.F32        S4, #0.0
89FF0:  IT GT
89FF2:  VMOVGT.F32      S14, S20
89FF6:  VMRS            APSR_nzcv, FPSCR
89FFA:  VCMP.F32        S2, #0.0
89FFE:  IT MI
8A000:  VMOVMI.F32      S8, S24
8A004:  VMRS            APSR_nzcv, FPSCR
8A008:  VCMP.F32        S6, #0.0
8A00C:  IT MI
8A00E:  VMOVMI.F32      S10, S24
8A012:  VMRS            APSR_nzcv, FPSCR
8A016:  VCMP.F32        S0, #0.0
8A01A:  VMOV.F32        S0, S22
8A01E:  IT MI
8A020:  VMOVMI.F32      S12, S24
8A024:  VMOV.F32        S2, S22
8A028:  VMRS            APSR_nzcv, FPSCR
8A02C:  VMOV.F32        S4, S22
8A030:  IT MI
8A032:  VMOVMI.F32      S14, S24
8A036:  VMLA.F32        S22, S14, S26
8A03A:  LDR.W           R0, [R4,#0x27C]; int
8A03E:  VSTR            S16, [SP,#0x70+var_68]
8A042:  STR             R6, [SP,#0x70+var_6C]; int
8A044:  VMLA.F32        S0, S8, S26
8A048:  VSTR            S18, [SP,#0x70+var_70]
8A04C:  VMLA.F32        S2, S10, S26
8A050:  VMLA.F32        S4, S12, S26
8A054:  VCVT.S32.F32    S0, S0
8A058:  VCVT.S32.F32    S2, S2
8A05C:  VCVT.S32.F32    S4, S4
8A060:  VMOV            R1, S0
8A064:  VMOV            R2, S2
8A068:  VCVT.S32.F32    S0, S22
8A06C:  ORR.W           R1, R2, R1,LSL#8
8A070:  VMOV            R2, S4
8A074:  ORR.W           R1, R1, R2,LSL#16
8A078:  VMOV            R2, S0
8A07C:  ORR.W           R3, R1, R2,LSL#24; int
8A080:  ADD             R1, SP, #0x70+var_4C; int
8A082:  ADD             R2, SP, #0x70+var_54; int
8A084:  BL              sub_9D568
8A088:  LDR             R0, [SP,#0x70+var_44]
8A08A:  LDR             R1, =(__stack_chk_guard_ptr - 0x8A090)
8A08C:  ADD             R1, PC; __stack_chk_guard_ptr
8A08E:  LDR             R1, [R1]; __stack_chk_guard
8A090:  LDR             R1, [R1]
8A092:  CMP             R1, R0
8A094:  ITTTT EQ
8A096:  ADDEQ           SP, SP, #0x30 ; '0'
8A098:  VPOPEQ          {D8-D13}
8A09C:  POPEQ.W         {R8}
8A0A0:  POPEQ           {R4-R7,PC}
8A0A2:  BLX             __stack_chk_fail
