; =========================================================
; Game Engine Function: sub_16F2FA
; Address            : 0x16F2FA - 0x16F368
; =========================================================

16F2FA:  LDR.W           R3, [R0,#0xB0]
16F2FE:  CBZ             R2, loc_16F306
16F300:  ANDS            R2, R3
16F302:  IT EQ
16F304:  BXEQ            LR
16F306:  VLDR            S0, [R1]
16F30A:  BIC.W           R2, R3, #0xE
16F30E:  STR.W           R2, [R0,#0xB0]
16F312:  VCMP.F32        S0, #0.0
16F316:  VMRS            APSR_nzcv, FPSCR
16F31A:  BLE             loc_16F32C
16F31C:  VCVT.S32.F32    S0, S0
16F320:  MOVS            R2, #0
16F322:  VCVT.F32.S32    S0, S0
16F326:  VSTR            S0, [R0,#0x1C]
16F32A:  B               loc_16F334
16F32C:  MOVS            R2, #0
16F32E:  STRB.W          R2, [R0,#0x98]
16F332:  MOVS            R2, #2
16F334:  STR.W           R2, [R0,#0x90]
16F338:  VLDR            S0, [R1,#4]
16F33C:  VCMP.F32        S0, #0.0
16F340:  VMRS            APSR_nzcv, FPSCR
16F344:  BLE             loc_16F35A
16F346:  VCVT.S32.F32    S0, S0
16F34A:  MOVS            R1, #0
16F34C:  STR.W           R1, [R0,#0x94]
16F350:  VCVT.F32.S32    S0, S0
16F354:  VSTR            S0, [R0,#0x20]
16F358:  BX              LR
16F35A:  MOVS            R1, #0
16F35C:  STRB.W          R1, [R0,#0x98]
16F360:  MOVS            R1, #2
16F362:  STR.W           R1, [R0,#0x94]
16F366:  BX              LR
