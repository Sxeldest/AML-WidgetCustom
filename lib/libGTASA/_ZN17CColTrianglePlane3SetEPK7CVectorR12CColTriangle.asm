; =========================================================
; Game Engine Function: _ZN17CColTrianglePlane3SetEPK7CVectorR12CColTriangle
; Address            : 0x2E3268 - 0x2E33AA
; =========================================================

2E3268:  PUSH            {R4,R6,R7,LR}
2E326A:  ADD             R7, SP, #8
2E326C:  VPUSH           {D8-D10}
2E3270:  SUB             SP, SP, #0x38
2E3272:  MOV             R4, R0
2E3274:  LDRD.W          R0, R3, [R2]
2E3278:  LDR             R2, [R2,#8]
2E327A:  ADD.W           R0, R0, R0,LSL#1
2E327E:  ADD.W           R2, R2, R2,LSL#1
2E3282:  ADD.W           R0, R1, R0,LSL#2
2E3286:  ADD.W           R2, R1, R2,LSL#2
2E328A:  VLDR            S16, [R0]
2E328E:  VLDR            S18, [R0,#4]
2E3292:  VLDR            S20, [R0,#8]
2E3296:  ADD.W           R0, R3, R3,LSL#1
2E329A:  VLDR            S0, [R2]
2E329E:  ADD.W           R0, R1, R0,LSL#2
2E32A2:  VLDR            S2, [R2,#4]
2E32A6:  VLDR            S4, [R2,#8]
2E32AA:  VSUB.F32        S0, S0, S16
2E32AE:  VLDR            S6, [R0]
2E32B2:  VSUB.F32        S2, S2, S18
2E32B6:  VLDR            S8, [R0,#4]
2E32BA:  VSUB.F32        S4, S4, S20
2E32BE:  VLDR            S10, [R0,#8]
2E32C2:  VSUB.F32        S6, S6, S16
2E32C6:  VSUB.F32        S8, S8, S18
2E32CA:  ADD             R0, SP, #0x58+var_40; CVector *
2E32CC:  VSUB.F32        S10, S10, S20
2E32D0:  ADD             R1, SP, #0x58+var_4C; CVector *
2E32D2:  MOV             R2, SP
2E32D4:  VSTR            S2, [SP,#0x58+var_48]
2E32D8:  VSTR            S0, [SP,#0x58+var_4C]
2E32DC:  VSTR            S4, [SP,#0x58+var_44]
2E32E0:  VSTR            S8, [SP,#0x58+var_54]
2E32E4:  VSTR            S6, [SP,#0x58+var_58]
2E32E8:  VSTR            S10, [SP,#0x58+var_50]
2E32EC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2E32F0:  LDR             R0, [SP,#0x58+var_38]
2E32F2:  STR             R0, [SP,#0x58+var_28]
2E32F4:  ADD             R0, SP, #0x58+var_30; this
2E32F6:  VLDR            D16, [SP,#0x58+var_40]
2E32FA:  VSTR            D16, [SP,#0x58+var_30]
2E32FE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2E3302:  VLDR            D16, [SP,#0x58+var_30]
2E3306:  LDR             R0, [SP,#0x58+var_28]
2E3308:  STR             R0, [R4,#8]
2E330A:  VSTR            D16, [R4]
2E330E:  VLDR            S6, [SP,#0x58+var_30]
2E3312:  VLDR            S0, [SP,#0x58+var_30+4]
2E3316:  VMUL.F32        S8, S16, S6
2E331A:  VLDR            S2, [SP,#0x58+var_28]
2E331E:  VMUL.F32        S4, S18, S0
2E3322:  VMUL.F32        S10, S20, S2
2E3326:  VADD.F32        S4, S8, S4
2E332A:  VABS.F32        S8, S6
2E332E:  VADD.F32        S10, S4, S10
2E3332:  VABS.F32        S4, S0
2E3336:  VSTR            S10, [R4,#0xC]
2E333A:  VCMPE.F32       S8, S4
2E333E:  VMRS            APSR_nzcv, FPSCR
2E3342:  BLE             loc_2E3362
2E3344:  VABS.F32        S10, S2
2E3348:  VCMPE.F32       S8, S10
2E334C:  VMRS            APSR_nzcv, FPSCR
2E3350:  BLE             loc_2E3362
2E3352:  VCMPE.F32       S6, #0.0
2E3356:  MOVS            R0, #0
2E3358:  VMRS            APSR_nzcv, FPSCR
2E335C:  IT LE
2E335E:  MOVLE           R0, #1
2E3360:  B               loc_2E33A0
2E3362:  VCMPE.F32       S2, #0.0
2E3366:  VMRS            APSR_nzcv, FPSCR
2E336A:  VNEG.F32        S6, S2
2E336E:  VMOV.F32        S8, S2
2E3372:  IT LT
2E3374:  VMOVLT.F32      S8, S6
2E3378:  VCMPE.F32       S4, S8
2E337C:  VMRS            APSR_nzcv, FPSCR
2E3380:  BLE             loc_2E3392
2E3382:  VCMPE.F32       S0, #0.0
2E3386:  MOVS            R0, #3
2E3388:  VMRS            APSR_nzcv, FPSCR
2E338C:  IT GT
2E338E:  MOVGT           R0, #2
2E3390:  B               loc_2E33A0
2E3392:  VCMPE.F32       S2, #0.0
2E3396:  MOVS            R0, #5
2E3398:  VMRS            APSR_nzcv, FPSCR
2E339C:  IT GT
2E339E:  MOVGT           R0, #4
2E33A0:  STRB            R0, [R4,#0x10]
2E33A2:  ADD             SP, SP, #0x38 ; '8'
2E33A4:  VPOP            {D8-D10}
2E33A8:  POP             {R4,R6,R7,PC}
