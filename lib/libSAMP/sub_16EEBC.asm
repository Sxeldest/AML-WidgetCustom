; =========================================================
; Game Engine Function: sub_16EEBC
; Address            : 0x16EEBC - 0x16EF5E
; =========================================================

16EEBC:  LDRB.W          R2, [R1,#0x7D]
16EEC0:  CBZ             R2, loc_16EED2
16EEC2:  LDR.W           R2, [R1,#0x90]
16EEC6:  CMP             R2, #0
16EEC8:  BGT             loc_16EED2
16EECA:  LDR.W           R2, [R1,#0x94]
16EECE:  CMP             R2, #0
16EED0:  BLE             loc_16EF54
16EED2:  LDRB.W          R2, [R1,#0x81]
16EED6:  CBZ             R2, loc_16EEDE
16EED8:  LDR.W           R2, [R1,#0xA8]
16EEDC:  CBZ             R2, loc_16EF4C
16EEDE:  VLDR            S0, [R1,#0x34]
16EEE2:  VCMP.F32        S0, #0.0
16EEE6:  VMRS            APSR_nzcv, FPSCR
16EEEA:  BNE             loc_16EF00
16EEEC:  VLDR            S0, [R1,#0xC]
16EEF0:  VLDR            S4, [R1,#0xE0]
16EEF4:  VLDR            S2, [R1,#0x58]
16EEF8:  VSUB.F32        S0, S4, S0
16EEFC:  VADD.F32        S0, S0, S2
16EF00:  VCVT.S32.F32    S0, S0
16EF04:  VLDR            S2, [R1,#0x38]
16EF08:  VCMP.F32        S2, #0.0
16EF0C:  VMRS            APSR_nzcv, FPSCR
16EF10:  VCVT.F32.S32    S0, S0
16EF14:  BNE             loc_16EF2A
16EF16:  VLDR            S2, [R1,#0x10]
16EF1A:  VLDR            S6, [R1,#0xE4]
16EF1E:  VLDR            S4, [R1,#0x5C]
16EF22:  VSUB.F32        S2, S6, S2
16EF26:  VADD.F32        S2, S2, S4
16EF2A:  VCVT.S32.F32    S2, S2
16EF2E:  VLDR            S4, [R1,#0x3C]
16EF32:  VLDR            S6, [R1,#0x40]
16EF36:  VADD.F32        S0, S4, S0
16EF3A:  VCVT.F32.S32    S2, S2
16EF3E:  VSTR            S0, [R0]
16EF42:  VADD.F32        S2, S6, S2
16EF46:  VSTR            S2, [R0,#4]
16EF4A:  BX              LR
16EF4C:  LDR.W           R2, [R1,#0xA4]
16EF50:  CMP             R2, #1
16EF52:  BLT             loc_16EEDE
16EF54:  LDR             R2, [R1,#0x2C]
16EF56:  LDR             R1, [R1,#0x30]
16EF58:  STR             R2, [R0]
16EF5A:  STR             R1, [R0,#4]
16EF5C:  BX              LR
