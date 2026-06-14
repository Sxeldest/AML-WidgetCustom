; =========================================================
; Game Engine Function: _ZN8CCoronas19RenderSunReflectionEv
; Address            : 0x5A30F4 - 0x5A3764
; =========================================================

5A30F4:  LDR.W           R0, =(_ZN10CTimeCycle20m_CurrentStoredValueE_ptr - 0x5A3100)
5A30F8:  LDR.W           R1, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x5A3106)
5A30FC:  ADD             R0, PC; _ZN10CTimeCycle20m_CurrentStoredValueE_ptr
5A30FE:  VLDR            S2, =-0.05
5A3102:  ADD             R1, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
5A3104:  LDR             R0, [R0]; CTimeCycle::m_CurrentStoredValue ...
5A3106:  LDR             R1, [R1]; CTimeCycle::m_VectorToSun ...
5A3108:  LDR             R0, [R0]; CTimeCycle::m_CurrentStoredValue
5A310A:  ADD.W           R0, R0, R0,LSL#1
5A310E:  ADD.W           R1, R1, R0,LSL#2
5A3112:  VLDR            S0, [R1,#8]
5A3116:  VCMPE.F32       S0, S2
5A311A:  VMRS            APSR_nzcv, FPSCR
5A311E:  IT LE
5A3120:  BXLE            LR
5A3122:  PUSH            {R4-R7,LR}
5A3124:  ADD             R7, SP, #0x14+var_8
5A3126:  PUSH.W          {R8-R11}
5A312A:  SUB             SP, SP, #4
5A312C:  VPUSH           {D8-D14}
5A3130:  SUB             SP, SP, #0x18
5A3132:  VMOV.F32        S2, #-0.25
5A3136:  LDR.W           R1, =(_ZN8CWeather13CloudCoverageE_ptr - 0x5A3146)
5A313A:  VMOV.F32        S22, #1.0
5A313E:  LDR.W           R2, =(_ZN8CWeather9FoggynessE_ptr - 0x5A314C)
5A3142:  ADD             R1, PC; _ZN8CWeather13CloudCoverageE_ptr
5A3144:  VLDR            S4, =3.333
5A3148:  ADD             R2, PC; _ZN8CWeather9FoggynessE_ptr
5A314A:  LDR             R1, [R1]; CWeather::CloudCoverage ...
5A314C:  VADD.F32        S0, S0, S2
5A3150:  VLDR            S2, =0.3
5A3154:  VABS.F32        S0, S0
5A3158:  VSUB.F32        S0, S2, S0
5A315C:  VLDR            S2, [R1]
5A3160:  LDR             R1, [R2]; CWeather::Foggyness ...
5A3162:  VSUB.F32        S2, S22, S2
5A3166:  LDR.W           R2, =(_ZN8CWeather4WindE_ptr - 0x5A316E)
5A316A:  ADD             R2, PC; _ZN8CWeather4WindE_ptr
5A316C:  VMUL.F32        S0, S0, S4
5A3170:  VLDR            S4, [R1]
5A3174:  LDR             R1, [R2]; CWeather::Wind ...
5A3176:  VSUB.F32        S4, S22, S4
5A317A:  VLDR            S16, [R1]
5A317E:  VMUL.F32        S0, S2, S0
5A3182:  VSUB.F32        S2, S22, S16
5A3186:  VMUL.F32        S0, S4, S0
5A318A:  VMUL.F32        S2, S2, S0
5A318E:  VCMPE.F32       S2, #0.0
5A3192:  VMRS            APSR_nzcv, FPSCR
5A3196:  BLE.W           loc_5A3752
5A319A:  LDR.W           R1, =(TheCamera_ptr - 0x5A31A6)
5A319E:  VLDR            S0, =-875.0
5A31A2:  ADD             R1, PC; TheCamera_ptr
5A31A4:  VLDR            S4, =-611.0
5A31A8:  LDR             R1, [R1]; TheCamera
5A31AA:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
5A31AC:  ADD.W           R3, R2, #0x30 ; '0'
5A31B0:  CMP             R2, #0
5A31B2:  IT EQ
5A31B4:  ADDEQ           R3, R1, #4
5A31B6:  VLDR            S20, [R3]
5A31BA:  VLDR            S18, [R3,#4]
5A31BE:  VADD.F32        S4, S20, S4
5A31C2:  VADD.F32        S0, S18, S0
5A31C6:  VMUL.F32        S4, S4, S4
5A31CA:  VMUL.F32        S0, S0, S0
5A31CE:  VADD.F32        S0, S4, S0
5A31D2:  VMOV.F32        S4, S22
5A31D6:  VSQRT.F32       S6, S0
5A31DA:  VLDR            S0, =350.0
5A31DE:  VCMPE.F32       S6, S0
5A31E2:  VMRS            APSR_nzcv, FPSCR
5A31E6:  BGE             loc_5A320C
5A31E8:  VLDR            S4, =250.0
5A31EC:  VCMPE.F32       S6, S4
5A31F0:  VMRS            APSR_nzcv, FPSCR
5A31F4:  BLE             loc_5A3208
5A31F6:  VLDR            S4, =-250.0
5A31FA:  VADD.F32        S4, S6, S4
5A31FE:  VLDR            S6, =100.0
5A3202:  VDIV.F32        S4, S4, S6
5A3206:  B               loc_5A320C
5A3208:  VLDR            S4, =0.0
5A320C:  VLDR            S6, =-2364.0
5A3210:  VMUL.F32        S2, S2, S4
5A3214:  VLDR            S8, =929.0
5A3218:  VMOV.F32        S4, S22
5A321C:  VADD.F32        S6, S18, S6
5A3220:  VADD.F32        S8, S20, S8
5A3224:  VMUL.F32        S6, S6, S6
5A3228:  VMUL.F32        S8, S8, S8
5A322C:  VADD.F32        S6, S8, S6
5A3230:  VSQRT.F32       S6, S6
5A3234:  VCMPE.F32       S6, S0
5A3238:  VMRS            APSR_nzcv, FPSCR
5A323C:  BGE             loc_5A3262
5A323E:  VLDR            S4, =250.0
5A3242:  VCMPE.F32       S6, S4
5A3246:  VMRS            APSR_nzcv, FPSCR
5A324A:  BLE             loc_5A325E
5A324C:  VLDR            S4, =-250.0
5A3250:  VADD.F32        S4, S6, S4
5A3254:  VLDR            S6, =100.0
5A3258:  VDIV.F32        S4, S4, S6
5A325C:  B               loc_5A3262
5A325E:  VLDR            S4, =0.0
5A3262:  VLDR            S6, =-2640.0
5A3266:  VMUL.F32        S2, S2, S4
5A326A:  VLDR            S8, =1034.0
5A326E:  VMOV.F32        S4, S22
5A3272:  VADD.F32        S6, S18, S6
5A3276:  VADD.F32        S8, S20, S8
5A327A:  VMUL.F32        S6, S6, S6
5A327E:  VMUL.F32        S8, S8, S8
5A3282:  VADD.F32        S6, S8, S6
5A3286:  VSQRT.F32       S6, S6
5A328A:  VCMPE.F32       S6, S0
5A328E:  VMRS            APSR_nzcv, FPSCR
5A3292:  BGE             loc_5A32B8
5A3294:  VLDR            S4, =250.0
5A3298:  VCMPE.F32       S6, S4
5A329C:  VMRS            APSR_nzcv, FPSCR
5A32A0:  BLE             loc_5A32B4
5A32A2:  VLDR            S4, =-250.0
5A32A6:  VADD.F32        S4, S6, S4
5A32AA:  VLDR            S6, =100.0
5A32AE:  VDIV.F32        S4, S4, S6
5A32B2:  B               loc_5A32B8
5A32B4:  VLDR            S4, =0.0
5A32B8:  VLDR            S6, =1854.0
5A32BC:  VMUL.F32        S2, S2, S4
5A32C0:  VLDR            S8, =-2372.0
5A32C4:  VADD.F32        S6, S18, S6
5A32C8:  VLDR            S4, =450.0
5A32CC:  VADD.F32        S8, S20, S8
5A32D0:  VMUL.F32        S6, S6, S6
5A32D4:  VMUL.F32        S8, S8, S8
5A32D8:  VADD.F32        S6, S8, S6
5A32DC:  VSQRT.F32       S6, S6
5A32E0:  VCMPE.F32       S6, S4
5A32E4:  VMOV.F32        S4, S22
5A32E8:  VMRS            APSR_nzcv, FPSCR
5A32EC:  BGE             loc_5A330E
5A32EE:  VCMPE.F32       S6, S0
5A32F2:  VMRS            APSR_nzcv, FPSCR
5A32F6:  BLE             loc_5A330A
5A32F8:  VLDR            S4, =-350.0
5A32FC:  VADD.F32        S4, S6, S4
5A3300:  VLDR            S6, =100.0
5A3304:  VDIV.F32        S4, S4, S6
5A3308:  B               loc_5A330E
5A330A:  VLDR            S4, =0.0
5A330E:  VLDR            S6, =-106.0
5A3312:  VMUL.F32        S28, S2, S4
5A3316:  VLDR            S8, =1633.0
5A331A:  VADD.F32        S6, S18, S6
5A331E:  VADD.F32        S8, S20, S8
5A3322:  VMUL.F32        S6, S6, S6
5A3326:  VMUL.F32        S8, S8, S8
5A332A:  VADD.F32        S6, S8, S6
5A332E:  VSQRT.F32       S6, S6
5A3332:  VCMPE.F32       S6, S0
5A3336:  VMRS            APSR_nzcv, FPSCR
5A333A:  BGE             loc_5A33B0
5A333C:  VLDR            S0, =250.0
5A3340:  VCMPE.F32       S6, S0
5A3344:  VMRS            APSR_nzcv, FPSCR
5A3348:  BLE             loc_5A33AC
5A334A:  VLDR            S0, =-250.0
5A334E:  VLDR            S2, =100.0
5A3352:  VADD.F32        S0, S6, S0
5A3356:  VDIV.F32        S22, S0, S2
5A335A:  B               loc_5A33B0
5A335C:  DCFS -0.05
5A3360:  DCFS 3.333
5A3364:  DCFS 0.3
5A3368:  DCFS -875.0
5A336C:  DCFS -611.0
5A3370:  DCFS 350.0
5A3374:  DCFS 250.0
5A3378:  DCFS -250.0
5A337C:  DCFS 100.0
5A3380:  DCFS 0.0
5A3384:  DCFS -2364.0
5A3388:  DCFS 929.0
5A338C:  DCFS -2640.0
5A3390:  DCFS 1034.0
5A3394:  DCFS 1854.0
5A3398:  DCFS -2372.0
5A339C:  DCFS 450.0
5A33A0:  DCFS -350.0
5A33A4:  DCFS -106.0
5A33A8:  DCFS 1633.0
5A33AC:  VLDR            S22, =0.0
5A33B0:  LDR             R1, =(_ZN10CTimeCycle13m_VectorToSunE_ptr - 0x5A33BC)
5A33B2:  MOV.W           R11, #0
5A33B6:  LDR             R2, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5A33BE)
5A33B8:  ADD             R1, PC; _ZN10CTimeCycle13m_VectorToSunE_ptr
5A33BA:  ADD             R2, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5A33BC:  LDR             R1, [R1]; CTimeCycle::m_VectorToSun ...
5A33BE:  LDR             R2, [R2]; CTimeCycle::m_CurrentColours ...
5A33C0:  LDR.W           R3, [R1,R0,LSL#2]
5A33C4:  ADD.W           R0, R1, R0,LSL#2
5A33C8:  LDRH.W          R8, [R2,#(word_966580 - 0x96654C)]
5A33CC:  VLDR            S24, [R0]
5A33D0:  VLDR            S26, [R0,#4]
5A33D4:  LDR             R0, [R0,#4]
5A33D6:  LDRH.W          R9, [R2,#(word_966586 - 0x96654C)]
5A33DA:  LDRH.W          R10, [R2,#(word_96657E - 0x96654C)]
5A33DE:  LDRH            R4, [R2,#(word_966584 - 0x96654C)]
5A33E0:  LDRH            R5, [R2,#(word_96657C - 0x96654C)]
5A33E2:  LDRH            R6, [R2,#(word_966582 - 0x96654C)]
5A33E4:  STRD.W          R3, R0, [SP,#0x78+var_70]
5A33E8:  ADD             R0, SP, #0x78+var_70; this
5A33EA:  STR.W           R11, [SP,#0x78+var_68]
5A33EE:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A33F2:  VMUL.F32        S2, S28, S22
5A33F6:  ADDS            R0, R5, R6
5A33F8:  VMOV.F32        S0, #0.25
5A33FC:  ADD.W           R1, R10, R4
5A3400:  LDR             R2, =(TempBufferRenderIndexList_ptr - 0x5A3410)
5A3402:  VMOV.F32        S8, #30.0
5A3406:  VMOV            S4, R1
5A340A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A3414)
5A340C:  ADD             R2, PC; TempBufferRenderIndexList_ptr
5A340E:  LDR             R3, =(TempBufferVerticesStored_ptr - 0x5A341C)
5A3410:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A3412:  VMOV.F32        S28, #10.0
5A3416:  LDR             R2, [R2]; TempBufferRenderIndexList
5A3418:  ADD             R3, PC; TempBufferVerticesStored_ptr
5A341A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5A341C:  MOV.W           R10, #0
5A3420:  VMUL.F32        S0, S2, S0
5A3424:  LDR             R3, [R3]; TempBufferVerticesStored
5A3426:  VMOV            S2, R0
5A342A:  ADD.W           R0, R8, R9
5A342E:  ADD.W           R8, R2, #0x16
5A3432:  MOV.W           R9, #0
5A3436:  VMOV            S6, R0
5A343A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A3448)
5A343C:  VCVT.F32.S32    S2, S2
5A3440:  VCVT.F32.S32    S4, S4
5A3444:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A3446:  VCVT.F32.S32    S6, S6
5A344A:  LDR.W           R12, [R0]; TempBufferIndicesStored
5A344E:  MOV.W           R0, #0x3F800000
5A3452:  VMUL.F32        S2, S0, S2
5A3456:  VMUL.F32        S4, S0, S4
5A345A:  VMUL.F32        S0, S0, S6
5A345E:  VLDR            S6, =60.0
5A3462:  VCVT.U32.F32    S2, S2
5A3466:  VCVT.U32.F32    S4, S4
5A346A:  VCVT.U32.F32    S0, S0
5A346E:  VMOV            R6, S2
5A3472:  VLDR            S2, =40.0
5A3476:  VMOV            R5, S4
5A347A:  VMOV            R4, S0
5A347E:  VMOV.F32        S0, #0.5
5A3482:  VMUL.F32        S4, S24, S2
5A3486:  VMUL.F32        S2, S26, S2
5A348A:  VLDR            S26, =0.003068
5A348E:  VMUL.F32        S0, S16, S0
5A3492:  VADD.F32        S16, S4, S20
5A3496:  VADD.F32        S18, S2, S18
5A349A:  ADD             R5, R6
5A349C:  ADD             R5, R4
5A349E:  MOV             R4, #0xAAAAAAAB
5A34A6:  UMULL.W         R5, R4, R5, R4
5A34AA:  MOVS            R5, #0x10002
5A34B0:  STR             R5, [R2]
5A34B2:  MOV.W           R5, #0x20000
5A34B6:  STR             R5, [R2,#(dword_A7A1DC - 0xA7A1D8)]
5A34B8:  MOVS            R5, #0x10003
5A34BE:  ADD.W           R6, R6, R4,LSR#1
5A34C2:  STR             R5, [R2,#(dword_A7A1E0 - 0xA7A1D8)]
5A34C4:  LSRS            R5, R4, #1
5A34C6:  LSRS            R4, R6, #1
5A34C8:  UXTAB.W         R5, R5, R4
5A34CC:  UBFX.W          R5, R5, #1, #8
5A34D0:  UBFX.W          R6, R6, #1, #8
5A34D4:  VLDR            S24, [SP,#0x78+var_6C]
5A34D8:  VLDR            S22, [SP,#0x78+var_70]
5A34DC:  ORR.W           R4, R6, R5,LSL#8
5A34E0:  VMUL.F32        S4, S24, S6
5A34E4:  LDR             R6, =(TempVertexBuffer_ptr - 0x5A34F6)
5A34E6:  VMUL.F32        S10, S22, S6
5A34EA:  VLDR            S6, =0.1
5A34EE:  VMUL.F32        S2, S24, S8
5A34F2:  ADD             R6, PC; TempVertexBuffer_ptr
5A34F4:  VADD.F32        S20, S0, S6
5A34F8:  ORR.W           R5, R4, R5,LSL#16
5A34FC:  VMUL.F32        S8, S22, S8
5A3500:  LDR             R6, [R6]; TempVertexBuffer
5A3502:  ORR.W           R4, R5, #0xFF000000
5A3506:  MOV.W           R5, #0x3F000000
5A350A:  VADD.F32        S4, S18, S4
5A350E:  VADD.F32        S0, S16, S10
5A3512:  VADD.F32        S6, S16, S2
5A3516:  VSUB.F32        S12, S16, S2
5A351A:  VSUB.F32        S10, S18, S8
5A351E:  VADD.F32        S14, S18, S8
5A3522:  VSUB.F32        S3, S4, S8
5A3526:  VADD.F32        S1, S0, S2
5A352A:  VSUB.F32        S0, S0, S2
5A352E:  VSTR            S6, [R6]
5A3532:  VADD.F32        S2, S8, S4
5A3536:  VSTR            S10, [R6,#4]
5A353A:  VSTR            S20, [R6,#8]
5A353E:  VSTR            S12, [R6,#0x24]
5A3542:  VSTR            S14, [R6,#0x28]
5A3546:  VSTR            S20, [R6,#0x2C]
5A354A:  VSTR            S1, [R6,#0x48]
5A354E:  VSTR            S3, [R6,#0x4C]
5A3552:  VSTR            S20, [R6,#0x50]
5A3556:  STR             R4, [R6,#(dword_A5A214 - 0xA5A1D8)]
5A3558:  STR             R4, [R6,#(dword_A5A238 - 0xA5A1D8)]
5A355A:  STR.W           R4, [R6,#(dword_A5A25C - 0xA5A1D8)]
5A355E:  VSTR            S0, [R6,#0x6C]
5A3562:  VSTR            S2, [R6,#0x70]
5A3566:  VSTR            S20, [R6,#0x74]
5A356A:  STR             R5, [R6,#(dword_A5A240 - 0xA5A1D8)]
5A356C:  STR.W           R5, [R6,#(dword_A5A264 - 0xA5A1D8)]
5A3570:  MOVS            R5, #4
5A3572:  STRD.W          R4, R11, [R6,#(dword_A5A1F0 - 0xA5A1D8)]
5A3576:  STR             R0, [R6,#(dword_A5A1F8 - 0xA5A1D8)]
5A3578:  STRD.W          R0, R0, [R6,#(dword_A5A218 - 0xA5A1D8)]
5A357C:  STR.W           R11, [R6,#(dword_A5A23C - 0xA5A1D8)]
5A3580:  STR.W           R0, [R6,#(dword_A5A260 - 0xA5A1D8)]
5A3584:  LDR             R0, =(TempVertexBuffer_ptr - 0x5A358C)
5A3586:  LDR             R6, [R1]; CTimer::m_snTimeInMilliseconds
5A3588:  ADD             R0, PC; TempVertexBuffer_ptr
5A358A:  STR             R5, [R3]
5A358C:  MOVS            R3, #6
5A358E:  MOVS            R5, #0
5A3590:  LDR             R0, [R0]; TempVertexBuffer
5A3592:  STR.W           R3, [R12]
5A3596:  STR             R0, [SP,#0x78+var_74]
5A3598:  MOV             R0, R6
5A359A:  MOVW            R1, #0xCCCD
5A359E:  BFC.W           R0, #0xB, #0x15
5A35A2:  MOVT            R1, #0xCCCC
5A35A6:  UMULL.W         R1, R11, R9, R1
5A35AA:  VMOV            S0, R0
5A35AE:  VCVT.F32.U32    S0, S0
5A35B2:  VMUL.F32        S0, S0, S26
5A35B6:  VMOV            R0, S0; x
5A35BA:  BLX.W           sinf
5A35BE:  VMOV            S2, R0
5A35C2:  MOVS            R0, #0x1E
5A35C4:  ADD.W           R1, R10, #0x3C ; '<'
5A35C8:  ADD.W           R0, R0, R11,LSR#4
5A35CC:  VMUL.F32        S2, S2, S28
5A35D0:  ADDW            R9, R9, #0x3CA
5A35D4:  VMOV            S0, R1
5A35D8:  MOVS            R1, #:lower16:(elf_hash_bucket+0xFF07)
5A35DA:  VMOV            S4, R0
5A35DE:  MOVS            R0, #:lower16:(elf_hash_bucket+0xFF06)
5A35E0:  VCVT.F32.S32    S0, S0
5A35E4:  MOVT            R0, #:upper16:(elf_hash_bucket+0xFF06)
5A35E8:  VCVT.F32.S32    S4, S4
5A35EC:  MOVT            R1, #:upper16:(elf_hash_bucket+0xFF07)
5A35F0:  ADD             R0, R5
5A35F2:  ADD             R1, R5
5A35F4:  STRH.W          R1, [R8,#-8]
5A35F8:  ADD.W           R6, R6, #0x384
5A35FC:  STRH.W          R0, [R8,#-6]
5A3600:  ADDS            R0, R5, #4
5A3602:  STRH.W          R0, [R8,#-0xA]
5A3606:  MOV.W           R2, #0x3F800000
5A360A:  STRH.W          R0, [R8,#-4]
5A360E:  ADDS            R0, R5, #5
5A3610:  VMUL.F32        S6, S24, S0
5A3614:  STRH.W          R0, [R8,#-2]
5A3618:  VMUL.F32        S0, S22, S0
5A361C:  LDR             R0, [SP,#0x78+var_74]
5A361E:  VADD.F32        S2, S2, S4
5A3622:  STRH.W          R1, [R8]
5A3626:  ADD             R0, R10
5A3628:  ADD.W           R10, R10, #0x48 ; 'H'
5A362C:  MOVS            R1, #0
5A362E:  ADDS            R5, #2
5A3630:  ADD.W           R8, R8, #0xC
5A3634:  STR.W           R4, [R0,#0xA8]
5A3638:  STR.W           R1, [R0,#0xAC]
5A363C:  MOV.W           R1, #0x3F000000
5A3640:  VADD.F32        S4, S18, S6
5A3644:  CMP.W           R10, #0x5A0
5A3648:  VADD.F32        S0, S16, S0
5A364C:  STR.W           R1, [R0,#0xB0]
5A3650:  VMUL.F32        S6, S2, S24
5A3654:  STR.W           R4, [R0,#0xCC]
5A3658:  VMUL.F32        S2, S2, S22
5A365C:  STRD.W          R2, R1, [R0,#0xD0]
5A3660:  VADD.F32        S8, S0, S6
5A3664:  VSUB.F32        S10, S4, S2
5A3668:  VSUB.F32        S0, S0, S6
5A366C:  VADD.F32        S2, S2, S4
5A3670:  VSTR            S8, [R0,#0x90]
5A3674:  VSTR            S10, [R0,#0x94]
5A3678:  VSTR            S20, [R0,#0x98]
5A367C:  VSTR            S0, [R0,#0xB4]
5A3680:  VSTR            S2, [R0,#0xB8]
5A3684:  VSTR            S20, [R0,#0xBC]
5A3688:  BNE             loc_5A3598
5A368A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A3694)
5A368C:  MOVS            R4, #0
5A368E:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5A3696)
5A3690:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A3692:  ADD             R1, PC; TempBufferVerticesStored_ptr
5A3694:  LDR             R0, [R0]; TempBufferIndicesStored
5A3696:  LDR             R5, [R1]; TempBufferVerticesStored
5A3698:  MOVS            R1, #0x7E ; '~'
5A369A:  STR             R1, [R0]
5A369C:  MOVS            R0, #0x2C ; ','
5A369E:  STR             R0, [R5]
5A36A0:  MOVS            R0, #8
5A36A2:  MOVS            R1, #0
5A36A4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36A8:  MOVS            R0, #6
5A36AA:  MOVS            R1, #1
5A36AC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36B0:  MOVS            R0, #0xE
5A36B2:  MOVS            R1, #0
5A36B4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36B8:  MOVS            R0, #0x10
5A36BA:  MOVS            R1, #1
5A36BC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36C0:  MOVS            R0, #0xA
5A36C2:  MOVS            R1, #2
5A36C4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36C8:  MOVS            R0, #0xB
5A36CA:  MOVS            R1, #2
5A36CC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36D0:  MOVS            R0, #0xC
5A36D2:  MOVS            R1, #1
5A36D4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36D8:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A36DE)
5A36DA:  ADD             R0, PC; gpCoronaTexture_ptr
5A36DC:  LDR             R0, [R0]; gpCoronaTexture
5A36DE:  LDR             R0, [R0,#(dword_A25B18 - 0xA25B08)]
5A36E0:  LDR             R1, [R0]
5A36E2:  MOVS            R0, #1
5A36E4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A36E8:  LDR             R0, =(TempVertexBuffer_ptr - 0x5A36F4)
5A36EA:  MOVS            R2, #0
5A36EC:  LDR             R1, [R5]
5A36EE:  MOVS            R3, #1
5A36F0:  ADD             R0, PC; TempVertexBuffer_ptr
5A36F2:  LDR             R0, [R0]; TempVertexBuffer
5A36F4:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5A36F8:  CBZ             R0, loc_5A3712
5A36FA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A3702)
5A36FC:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5A3704)
5A36FE:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A3700:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5A3702:  LDR             R0, [R0]; TempBufferIndicesStored
5A3704:  LDR             R1, [R1]; TempBufferRenderIndexList
5A3706:  LDR             R2, [R0]
5A3708:  MOVS            R0, #3
5A370A:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5A370E:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5A3712:  MOVS            R0, #8
5A3714:  MOVS            R1, #1
5A3716:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A371A:  MOVS            R0, #6
5A371C:  MOVS            R1, #1
5A371E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A3722:  MOVS            R0, #0xA
5A3724:  MOVS            R1, #5
5A3726:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A372A:  MOVS            R0, #0xB
5A372C:  MOVS            R1, #6
5A372E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A3732:  MOVS            R0, #0xE
5A3734:  MOVS            R1, #0
5A3736:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A373A:  MOVS            R0, #0xC
5A373C:  MOVS            R1, #0
5A373E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A3742:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A374A)
5A3744:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5A374C)
5A3746:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A3748:  ADD             R1, PC; TempBufferVerticesStored_ptr
5A374A:  LDR             R0, [R0]; TempBufferIndicesStored
5A374C:  LDR             R1, [R1]; TempBufferVerticesStored
5A374E:  STR             R4, [R0]
5A3750:  STR             R4, [R1]
5A3752:  ADD             SP, SP, #0x18
5A3754:  VPOP            {D8-D14}
5A3758:  ADD             SP, SP, #4
5A375A:  POP.W           {R8-R11}
5A375E:  POP.W           {R4-R7,LR}
5A3762:  BX              LR
