; =========================================================
; Game Engine Function: sub_8B214
; Address            : 0x8B214 - 0x8B2B6
; =========================================================

8B214:  LDR             R2, =(dword_1ACF68 - 0x8B21C)
8B216:  MOVS            R3, #1
8B218:  ADD             R2, PC; dword_1ACF68
8B21A:  LDR.W           R12, [R2]
8B21E:  MOVW            R2, #0x19AC
8B222:  LDR.W           R2, [R12,R2]
8B226:  STRB.W          R3, [R2,#0x7C]
8B22A:  LDRB.W          R3, [R2,#0x7F]
8B22E:  CMP             R3, #0
8B230:  IT NE
8B232:  BXNE            LR
8B234:  VMOV            S2, R0
8B238:  VMOV            S0, R1
8B23C:  VCMP.F32        S2, #0.0
8B240:  VMRS            APSR_nzcv, FPSCR
8B244:  BEQ             loc_8B27E
8B246:  VLDR            S4, [R2,#0xC]
8B24A:  VCMP.F32        S0, #0.0
8B24E:  VLDR            S6, [R2,#0x50]
8B252:  VLDR            S8, [R2,#0x1B8]
8B256:  VSUB.F32        S4, S4, S6
8B25A:  VLDR            S10, [R2,#0x1BC]
8B25E:  VLDR            S6, =0.0
8B262:  VMRS            APSR_nzcv, FPSCR
8B266:  IT MI
8B268:  VMOVMI.F32      S0, S6
8B26C:  VADD.F32        S2, S4, S2
8B270:  VADD.F32        S0, S0, S2
8B274:  VADD.F32        S2, S8, S0
8B278:  VMOV.F32        S0, S10
8B27C:  B               loc_8B294
8B27E:  VCMP.F32        S0, #0.0
8B282:  VMRS            APSR_nzcv, FPSCR
8B286:  ITT MI
8B288:  ADDMI.W         R0, R12, #0x1560
8B28C:  VLDRMI          S0, [R0]
8B290:  VLDR            S2, [R2,#0xD0]
8B294:  VADD.F32        S0, S0, S2
8B298:  LDRD.W          R1, R3, [R2,#0xF0]
8B29C:  LDR.W           R12, [R2,#0xD4]
8B2A0:  LDR.W           R0, [R2,#0xFC]
8B2A4:  STRD.W          R1, R3, [R2,#0xE8]
8B2A8:  STR.W           R12, [R2,#0xCC]
8B2AC:  STR.W           R0, [R2,#0xF8]
8B2B0:  VSTR            S0, [R2,#0xC8]
8B2B4:  BX              LR
