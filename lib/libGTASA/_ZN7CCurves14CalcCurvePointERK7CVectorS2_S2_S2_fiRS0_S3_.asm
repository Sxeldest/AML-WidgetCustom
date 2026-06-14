; =========================================================
; Game Engine Function: _ZN7CCurves14CalcCurvePointERK7CVectorS2_S2_S2_fiRS0_S3_
; Address            : 0x303110 - 0x30355E
; =========================================================

303110:  PUSH            {R4-R7,LR}
303112:  ADD             R7, SP, #0xC
303114:  PUSH.W          {R8-R11}
303118:  SUB             SP, SP, #4
30311A:  VPUSH           {D8-D15}; float
30311E:  SUB             SP, SP, #8; float
303120:  MOV             R8, R3
303122:  MOV             R9, R2
303124:  VLDR            S22, [R8]
303128:  VMOV.F32        S20, #1.0
30312C:  VLDR            S26, [R9]
303130:  MOV             R6, R1
303132:  VLDR            S24, [R8,#4]
303136:  MOV             R5, R0
303138:  VLDR            S28, [R9,#4]
30313C:  VMUL.F32        S2, S26, S22
303140:  VLDR            S18, =0.0
303144:  VMUL.F32        S0, S28, S24
303148:  VADD.F32        S0, S2, S0
30314C:  VLDR            S2, [R7,#arg_0]
303150:  VMAX.F32        D16, D1, D9
303154:  VMIN.F32        D8, D16, D10
303158:  VCMPE.F32       S0, #0.0
30315C:  VMRS            APSR_nzcv, FPSCR
303160:  BLE             loc_3031D2
303162:  VLDR            S2, =0.7
303166:  VCMPE.F32       S0, S2
30316A:  VMRS            APSR_nzcv, FPSCR
30316E:  BLE             loc_3031D8
303170:  VMOV            R2, S22; float
303174:  LDRD.W          R0, R1, [R6]; float
303178:  VMOV            R3, S24; float
30317C:  VLDR            S0, [R5]
303180:  VLDR            S2, [R5,#4]
303184:  VSTR            S0, [SP,#0x68+var_68]
303188:  VSTR            S2, [SP,#0x68+var_64]
30318C:  BLX             j__ZN10CCollision24DistToMathematicalLine2DEffffff; CCollision::DistToMathematicalLine2D(float,float,float,float,float,float)
303190:  VLDR            S0, [R6]
303194:  VLDR            S4, [R5]
303198:  VLDR            S2, [R6,#4]
30319C:  VLDR            S6, [R5,#4]
3031A0:  VSUB.F32        S0, S4, S0
3031A4:  VLDR            S22, [R8]
3031A8:  VSUB.F32        S2, S6, S2
3031AC:  VLDR            S24, [R8,#4]
3031B0:  VLDR            S26, [R9]
3031B4:  VLDR            S28, [R9,#4]
3031B8:  VMUL.F32        S0, S0, S0
3031BC:  VMUL.F32        S2, S2, S2
3031C0:  VADD.F32        S0, S0, S2
3031C4:  VMOV            S2, R0
3031C8:  VSQRT.F32       S0, S0
3031CC:  VDIV.F32        S0, S2, S0
3031D0:  B               loc_3031E4
3031D2:  VLDR            S0, =0.33333
3031D6:  B               loc_3031EC
3031D8:  VLDR            S2, =-0.7
3031DC:  VDIV.F32        S0, S0, S2
3031E0:  VADD.F32        S0, S0, S20
3031E4:  VLDR            S2, =0.33333
3031E8:  VMUL.F32        S0, S0, S2
3031EC:  VMUL.F32        S2, S28, S22
3031F0:  ADD.W           R11, R7, #0xC
3031F4:  VMUL.F32        S4, S26, S24
3031F8:  LDM.W           R11, {R0,R10,R11}
3031FC:  VSUB.F32        S2, S4, S2
303200:  VCMP.F32        S2, #0.0
303204:  VMRS            APSR_nzcv, FPSCR
303208:  BNE.W           loc_3033BC
30320C:  VLDR            S23, [R6]
303210:  VLDR            S25, [R6,#4]
303214:  VLDR            S27, [R5]
303218:  VLDR            S29, [R5,#4]
30321C:  VSUB.F32        S2, S29, S25
303220:  VSUB.F32        S4, S27, S23
303224:  VMUL.F32        S2, S2, S2
303228:  VMUL.F32        S4, S4, S4
30322C:  VADD.F32        S2, S4, S2
303230:  VSQRT.F32       S30, S2
303234:  VSUB.F32        S2, S20, S0
303238:  VDIV.F32        S31, S30, S2
30323C:  VLDR            S2, =0.00001
303240:  VCMPE.F32       S31, S2
303244:  VMRS            APSR_nzcv, FPSCR
303248:  BGE             loc_303254
30324A:  VMOV.F32        S0, #0.5
30324E:  VMOV.F32        S2, S18
303252:  B               loc_3032D0
303254:  VMUL.F32        S18, S16, S31
303258:  VLDR            S2, =6.2832
30325C:  VMOV.F32        S6, #-2.0
303260:  VMOV.F32        S19, #0.5
303264:  VMUL.F32        S4, S18, S2
303268:  VMUL.F32        S6, S0, S6
30326C:  VDIV.F32        S2, S31, S2
303270:  VDIV.F32        S4, S4, S31
303274:  VMOV            R0, S4; x
303278:  VADD.F32        S4, S6, S20
30327C:  VADD.F32        S4, S4, S20
303280:  VMOV            D10, D8
303284:  VMUL.F32        S16, S0, S2
303288:  VMUL.F32        S17, S4, S19
30328C:  BLX             sinf
303290:  VDIV.F32        S0, S18, S31
303294:  MOV             R4, R0
303296:  VLDR            S2, =3.1416
30329A:  VMUL.F32        S0, S0, S2
30329E:  VMOV            R0, S0; x
3032A2:  BLX             cosf
3032A6:  VMOV            S0, R0
3032AA:  LDR             R0, [R7,#arg_4]
3032AC:  VMOV            S2, R4
3032B0:  VMUL.F32        S0, S0, S19
3032B4:  VMUL.F32        S4, S17, S18
3032B8:  VMUL.F32        S2, S16, S2
3032BC:  VMOV            D8, D10
3032C0:  VMOV.F32        S20, #1.0
3032C4:  VSUB.F32        S0, S19, S0
3032C8:  VLDR            S18, =0.0
3032CC:  VADD.F32        S2, S4, S2
3032D0:  VSUB.F32        S4, S2, S30
3032D4:  VLDR            S6, [R9,#8]
3032D8:  VLDR            S8, [R8,#8]
3032DC:  VMUL.F32        S10, S2, S28
3032E0:  VMUL.F32        S6, S2, S6
3032E4:  VLDR            S14, [R5,#8]
3032E8:  VMUL.F32        S2, S2, S26
3032EC:  VLDR            S1, [R6,#8]
3032F0:  VSUB.F32        S3, S20, S0
3032F4:  VMUL.F32        S8, S4, S8
3032F8:  VMUL.F32        S12, S4, S24
3032FC:  VMUL.F32        S4, S4, S22
303300:  VADD.F32        S6, S6, S14
303304:  VADD.F32        S10, S10, S29
303308:  VADD.F32        S2, S2, S27
30330C:  VADD.F32        S8, S8, S1
303310:  VADD.F32        S12, S12, S25
303314:  VADD.F32        S4, S4, S23
303318:  VMUL.F32        S6, S3, S6
30331C:  VMUL.F32        S10, S3, S10
303320:  VMUL.F32        S14, S3, S2
303324:  VMUL.F32        S8, S0, S8
303328:  VMUL.F32        S12, S0, S12
30332C:  VMUL.F32        S0, S0, S4
303330:  VADD.F32        S2, S6, S8
303334:  VADD.F32        S4, S10, S12
303338:  VADD.F32        S6, S14, S0
30333C:  VMOV.F32        S0, S18
303340:  VSUB.F32        S8, S20, S16
303344:  VSTR            S6, [R10]
303348:  VSTR            S4, [R10,#4]
30334C:  VADD.F32        S0, S30, S0
303350:  VSTR            S2, [R10,#8]
303354:  VMOV            S6, R0
303358:  VLDR            S2, [R8]
30335C:  MOVS            R0, #0
30335E:  VLDR            S4, [R9]
303362:  VCVT.F32.S32    S6, S6
303366:  VMUL.F32        S2, S16, S2
30336A:  VMUL.F32        S4, S8, S4
30336E:  VADD.F32        S0, S18, S0
303372:  VADD.F32        S2, S4, S2
303376:  VLDR            S4, =0.001
30337A:  VMUL.F32        S4, S6, S4
30337E:  VMUL.F32        S2, S0, S2
303382:  VDIV.F32        S2, S2, S4
303386:  VSTR            S2, [R11]
30338A:  VLDR            S2, [R8,#4]
30338E:  VLDR            S6, [R9,#4]
303392:  VMUL.F32        S2, S16, S2
303396:  STR.W           R0, [R11,#8]
30339A:  VMUL.F32        S6, S8, S6
30339E:  VADD.F32        S2, S6, S2
3033A2:  VMUL.F32        S0, S0, S2
3033A6:  VDIV.F32        S0, S0, S4
3033AA:  VSTR            S0, [R11,#4]
3033AE:  ADD             SP, SP, #8
3033B0:  VPOP            {D8-D15}
3033B4:  ADD             SP, SP, #4
3033B6:  POP.W           {R8-R11}
3033BA:  POP             {R4-R7,PC}
3033BC:  VLDR            S23, [R6]
3033C0:  VLDR            S27, [R5]
3033C4:  VLDR            S25, [R6,#4]
3033C8:  VLDR            S29, [R5,#4]
3033CC:  VSUB.F32        S6, S27, S23
3033D0:  VSUB.F32        S4, S29, S25
3033D4:  VMUL.F32        S6, S24, S6
3033D8:  VMUL.F32        S4, S22, S4
3033DC:  VSUB.F32        S4, S6, S4
3033E0:  VNEG.F32        S4, S4
3033E4:  VDIV.F32        S4, S4, S2
3033E8:  VCMPE.F32       S4, #0.0
3033EC:  VMRS            APSR_nzcv, FPSCR
3033F0:  BLE.W           loc_30321C
3033F4:  VSUB.F32        S6, S25, S29
3033F8:  VSUB.F32        S8, S23, S27
3033FC:  VMUL.F32        S6, S26, S6
303400:  VMUL.F32        S8, S28, S8
303404:  VSUB.F32        S6, S8, S6
303408:  VNEG.F32        S6, S6
30340C:  VDIV.F32        S6, S6, S2
303410:  VCMPE.F32       S6, #0.0
303414:  VMRS            APSR_nzcv, FPSCR
303418:  BLE.W           loc_30321C
30341C:  VMOV.F32        S0, #5.0
303420:  VMIN.F32        D16, D2, D3
303424:  VMIN.F32        D1, D16, D0
303428:  VSUB.F32        S0, S4, S2
30342C:  VADD.F32        S30, S2, S2
303430:  VSUB.F32        S18, S6, S2
303434:  VADD.F32        S8, S0, S30
303438:  VADD.F32        S6, S18, S8
30343C:  VMUL.F32        S4, S16, S6
303440:  VCMPE.F32       S4, S0
303444:  VMRS            APSR_nzcv, FPSCR
303448:  BGE             loc_303474
30344A:  VLDR            S6, [R9,#8]
30344E:  VMUL.F32        S2, S4, S28
303452:  VMUL.F32        S8, S4, S26
303456:  VLDR            S12, [R5,#8]
30345A:  VMUL.F32        S10, S4, S6
30345E:  VADD.F32        S4, S2, S29
303462:  VADD.F32        S6, S8, S27
303466:  VADD.F32        S2, S10, S12
30346A:  B               loc_303340
30346C:  DCFS 0.0
303470:  DCFS 0.7
303474:  VCMPE.F32       S4, S8
303478:  VMRS            APSR_nzcv, FPSCR
30347C:  BGE             loc_303538
30347E:  VSUB.F32        S4, S4, S0
303482:  VLDR            S8, [R9,#8]
303486:  VLDR            S10, [R8,#8]
30348A:  VMUL.F32        S1, S0, S28
30348E:  VMUL.F32        S5, S18, S24
303492:  VLDR            S15, [R5,#8]
303496:  VMUL.F32        S12, S0, S8
30349A:  VMUL.F32        S7, S0, S26
30349E:  VMUL.F32        S11, S18, S22
3034A2:  VMUL.F32        S14, S18, S10
3034A6:  VDIV.F32        S4, S4, S30
3034AA:  VSUB.F32        S6, S20, S4
3034AE:  VMUL.F32        S9, S4, S26
3034B2:  VLDR            S26, [R6,#8]
3034B6:  VMUL.F32        S8, S4, S8
3034BA:  VMUL.F32        S13, S4, S28
3034BE:  VADD.F32        S12, S12, S15
3034C2:  VSUB.F32        S14, S26, S14
3034C6:  VADD.F32        S1, S1, S29
3034CA:  VMUL.F32        S10, S6, S10
3034CE:  VMUL.F32        S24, S6, S24
3034D2:  VMUL.F32        S22, S6, S22
3034D6:  VMUL.F32        S8, S2, S8
3034DA:  VMUL.F32        S13, S2, S13
3034DE:  VSUB.F32        S5, S25, S5
3034E2:  VADD.F32        S7, S7, S27
3034E6:  VMUL.F32        S10, S2, S10
3034EA:  VMUL.F32        S15, S2, S24
3034EE:  VMUL.F32        S9, S2, S9
3034F2:  VSUB.F32        S11, S23, S11
3034F6:  VMUL.F32        S2, S2, S22
3034FA:  VADD.F32        S8, S8, S12
3034FE:  VADD.F32        S12, S13, S1
303502:  VSUB.F32        S10, S14, S10
303506:  VSUB.F32        S14, S5, S15
30350A:  VADD.F32        S1, S9, S7
30350E:  VSUB.F32        S2, S11, S2
303512:  VMUL.F32        S8, S6, S8
303516:  VMUL.F32        S12, S6, S12
30351A:  VMUL.F32        S10, S4, S10
30351E:  VMUL.F32        S14, S4, S14
303522:  VMUL.F32        S6, S6, S1
303526:  VMUL.F32        S1, S4, S2
30352A:  VADD.F32        S2, S8, S10
30352E:  VADD.F32        S4, S12, S14
303532:  VADD.F32        S6, S6, S1
303536:  B               loc_303340
303538:  VSUB.F32        S2, S4, S6
30353C:  VLDR            S4, [R8,#8]
303540:  VMUL.F32        S4, S2, S4
303544:  VMUL.F32        S6, S2, S24
303548:  VMUL.F32        S8, S2, S22
30354C:  VLDR            S2, [R6,#8]
303550:  VADD.F32        S2, S4, S2
303554:  VADD.F32        S4, S6, S25
303558:  VADD.F32        S6, S8, S23
30355C:  B               loc_303340
