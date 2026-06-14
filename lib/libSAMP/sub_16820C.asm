; =========================================================
; Game Engine Function: sub_16820C
; Address            : 0x16820C - 0x16828E
; =========================================================

16820C:  LDR.W           R3, [R0,#0xAC]
168210:  CBZ             R2, loc_168218
168212:  ANDS            R2, R3
168214:  IT EQ
168216:  BXEQ            LR
168218:  MOVW            R2, #0xFFFF
16821C:  VLDR            S4, [R0,#0xC]
168220:  MOVT            R2, #0x7F7F
168224:  VLDR            S6, [R0,#0x10]
168228:  STRD.W          R2, R2, [R0,#0xB8]
16822C:  VLDR            S0, [R1]
168230:  VLDR            S2, [R1,#4]
168234:  BIC.W           R1, R3, #0xE
168238:  VCVT.S32.F32    S0, S0
16823C:  VLDR            S8, [R0,#0xC8]
168240:  VCVT.S32.F32    S2, S2
168244:  VLDR            S10, [R0,#0xCC]
168248:  VLDR            S12, [R0,#0xE0]
16824C:  VLDR            S14, [R0,#0xE4]
168250:  STR.W           R1, [R0,#0xAC]
168254:  VCVT.F32.S32    S0, S0
168258:  VCVT.F32.S32    S2, S2
16825C:  VSUB.F32        S4, S0, S4
168260:  VSTR            S0, [R0,#0xC]
168264:  VSUB.F32        S6, S2, S6
168268:  VSTR            S2, [R0,#0x10]
16826C:  VADD.F32        S12, S4, S12
168270:  VADD.F32        S4, S4, S8
168274:  VADD.F32        S8, S6, S14
168278:  VADD.F32        S6, S6, S10
16827C:  VSTR            S12, [R0,#0xE0]
168280:  VSTR            S4, [R0,#0xC8]
168284:  VSTR            S8, [R0,#0xE4]
168288:  VSTR            S6, [R0,#0xCC]
16828C:  BX              LR
