; =========================================================
; Game Engine Function: INT123_synth_4to1_8bit
; Address            : 0x2370F0 - 0x2375C8
; =========================================================

2370F0:  PUSH            {R4-R7,LR}
2370F2:  ADD             R7, SP, #0xC
2370F4:  PUSH.W          {R8-R11}
2370F8:  SUB             SP, SP, #0xC
2370FA:  MOV             R5, R2
2370FC:  MOV             R2, R0
2370FE:  STR             R3, [SP,#0x28+var_20]
237100:  MOVW            R12, #0xB2A8
237104:  MOVW            R0, #0xB2A0
237108:  LDR.W           LR, [R5,R12]
23710C:  LDR             R6, [R5,R0]
23710E:  MOVW            R0, #0x4848
237112:  LDR             R0, [R5,R0]
237114:  CBZ             R0, loc_23713E
237116:  ADD.W           R0, R5, R1,LSL#8
23711A:  MOVW            R4, #0x4850
23711E:  ADD             R4, R0
237120:  MOVS            R0, #0
237122:  ADDS            R3, R4, R0
237124:  VLDR            D16, [R3]
237128:  ADDS            R3, R2, R0
23712A:  ADDS            R0, #8
23712C:  VLDR            D17, [R3]
237130:  CMP.W           R0, #0x100
237134:  VMUL.F64        D16, D17, D16
237138:  VSTR            D16, [R3]
23713C:  BNE             loc_237122
23713E:  ADD.W           R4, R6, LR
237142:  MOVW            R0, #0x4838
237146:  CBZ             R1, loc_237152
237148:  LDR.W           R10, [R5,R0]
23714C:  ADDS            R4, #1
23714E:  MOVS            R1, #1
237150:  B               loc_237160
237152:  LDR             R1, [R5,R0]
237154:  ADDS            R1, #0xF
237156:  AND.W           R10, R1, #0xF
23715A:  STR.W           R10, [R5,R0]
23715E:  MOVS            R1, #0
237160:  ADD.W           R0, R5, R12
237164:  STR             R0, [SP,#0x28+var_28]
237166:  ADD.W           R0, R5, R1,LSL#3
23716A:  MOVW            R1, #0x4820
23716E:  ADD             R1, R0
237170:  MOVS.W          R3, R10,LSL#31
237174:  BNE             loc_237194
237176:  MOVW            R3, #0x4824
23717A:  LDR             R1, [R1]
23717C:  LDR.W           R11, [R0,R3]
237180:  ADD.W           R0, R1, R10,LSL#3
237184:  ADD.W           R1, R11, R10,LSL#3
237188:  ADDS            R1, #8
23718A:  BLX             j_INT123_dct64
23718E:  ADD.W           R10, R10, #1
237192:  B               loc_2371B2
237194:  ADD.W           R3, R10, #1
237198:  LDR.W           R11, [R1]
23719C:  MOVW            R1, #0x4824
2371A0:  AND.W           R3, R3, #0xF
2371A4:  LDR             R0, [R0,R1]
2371A6:  ADD.W           R1, R11, R10,LSL#3
2371AA:  ADD.W           R0, R0, R3,LSL#3
2371AE:  BLX             j_INT123_dct64
2371B2:  MOVW            R0, #0x4844
2371B6:  MOVW            R1, #0x4A7C
2371BA:  LDR             R0, [R5,R0]
2371BC:  ADD.W           LR, R5, R1
2371C0:  VLDR            D16, =32767.0
2371C4:  VLDR            D17, =-32768.0
2371C8:  MOVS            R2, #0
2371CA:  MOV             R1, R0
2371CC:  RSB.W           R0, R10, #0x210
2371D0:  MOV             R6, R11
2371D2:  ADD.W           R0, R1, R0,LSL#3
2371D6:  STR             R0, [SP,#0x28+var_24]
2371D8:  RSB.W           R0, R10, #0x190
2371DC:  ADD.W           R12, R1, R0,LSL#3
2371E0:  SUB.W           R0, R1, R10,LSL#3
2371E4:  ADD.W           R5, R0, #0x80
2371E8:  MOVS            R0, #0
2371EA:  VLDM            R6, {D18-D21}
2371EE:  VLDM            R5, {D22-D25}
2371F2:  VMUL.F64        D19, D23, D19
2371F6:  VMUL.F64        D18, D22, D18
2371FA:  VMUL.F64        D20, D24, D20
2371FE:  VSUB.F64        D18, D18, D19
237202:  VMUL.F64        D21, D25, D21
237206:  VADD.F64        D18, D18, D20
23720A:  VLDR            D19, [R6,#0x20]
23720E:  VLDR            D22, [R5,#0x20]
237212:  VSUB.F64        D18, D18, D21
237216:  VMUL.F64        D19, D22, D19
23721A:  VLDR            D20, [R6,#0x28]
23721E:  VLDR            D23, [R5,#0x28]
237222:  VADD.F64        D18, D18, D19
237226:  VMUL.F64        D20, D23, D20
23722A:  VLDR            D21, [R6,#0x30]
23722E:  VLDR            D22, [R5,#0x30]
237232:  VSUB.F64        D18, D18, D20
237236:  VMUL.F64        D21, D22, D21
23723A:  VLDR            D19, [R6,#0x38]
23723E:  VLDR            D23, [R5,#0x38]
237242:  VADD.F64        D18, D18, D21
237246:  VMUL.F64        D19, D23, D19
23724A:  VLDR            D20, [R6,#0x40]
23724E:  VLDR            D22, [R5,#0x40]
237252:  VSUB.F64        D18, D18, D19
237256:  VMUL.F64        D20, D22, D20
23725A:  VLDR            D21, [R6,#0x48]
23725E:  VLDR            D23, [R5,#0x48]
237262:  VADD.F64        D18, D18, D20
237266:  VMUL.F64        D21, D23, D21
23726A:  VLDR            D19, [R6,#0x50]
23726E:  VLDR            D22, [R5,#0x50]
237272:  VSUB.F64        D18, D18, D21
237276:  VMUL.F64        D19, D22, D19
23727A:  VLDR            D20, [R6,#0x58]
23727E:  VLDR            D23, [R5,#0x58]
237282:  VADD.F64        D18, D18, D19
237286:  VMUL.F64        D20, D23, D20
23728A:  VLDR            D21, [R6,#0x60]
23728E:  VLDR            D22, [R5,#0x60]
237292:  VSUB.F64        D18, D18, D20
237296:  VMUL.F64        D21, D22, D21
23729A:  VLDR            D19, [R6,#0x68]
23729E:  VLDR            D23, [R5,#0x68]
2372A2:  VADD.F64        D18, D18, D21
2372A6:  VMUL.F64        D19, D23, D19
2372AA:  VLDR            D20, [R6,#0x70]
2372AE:  VLDR            D22, [R5,#0x70]
2372B2:  VSUB.F64        D18, D18, D19
2372B6:  VMUL.F64        D20, D22, D20
2372BA:  VLDR            D21, [R6,#0x78]
2372BE:  VLDR            D23, [R5,#0x78]
2372C2:  VADD.F64        D18, D18, D20
2372C6:  VMUL.F64        D19, D23, D21
2372CA:  VSUB.F64        D18, D18, D19
2372CE:  VCMPE.F64       D18, D16
2372D2:  VMRS            APSR_nzcv, FPSCR
2372D6:  BLE             loc_2372E0
2372D8:  ADDS            R0, #1
2372DA:  MOVW            R8, #0x7FFF
2372DE:  B               loc_2372FA
2372E0:  VCMPE.F64       D18, D17
2372E4:  VMRS            APSR_nzcv, FPSCR
2372E8:  BGE             loc_2372F2
2372EA:  ADDS            R0, #1
2372EC:  MOV.W           R8, #0x8000
2372F0:  B               loc_2372FA
2372F2:  VCVT.S32.F64    S0, D18
2372F6:  VMOV            R8, S0
2372FA:  LDR.W           R9, [LR]
2372FE:  SXTH.W          R3, R8
237302:  ASRS            R3, R3, #3
237304:  ADD.W           R6, R6, #0x200
237308:  ADD.W           R5, R5, #0x400
23730C:  LDRB.W          R3, [R9,R3]
237310:  STRB.W          R3, [R4,R2,LSL#1]
237314:  ADDS            R2, #1
237316:  CMP             R2, #4
237318:  BNE.W           loc_2371EA
23731C:  LDR             R2, [SP,#0x28+var_24]
23731E:  ADD.W           R3, R11, #0x810
237322:  VLDR            D19, [R3]
237326:  ADD.W           R3, R11, #0x830
23732A:  VLDR            D18, [R2]
23732E:  ADD.W           R2, R12, #0x410
237332:  VLDR            D20, [R2]
237336:  ADD.W           R2, R11, #0x800
23733A:  VLDR            D21, [R2]
23733E:  ADD.W           R2, R12, #0x420
237342:  VMUL.F64        D19, D20, D19
237346:  VMUL.F64        D18, D18, D21
23734A:  VLDR            D20, [R3]
23734E:  ADD.W           R3, R11, #0x820
237352:  VLDR            D22, [R2]
237356:  ADD.W           R2, R12, #0x430
23735A:  VLDR            D21, [R3]
23735E:  ADD.W           R3, R11, #0x850
237362:  VADD.F64        D18, D18, D19
237366:  VMUL.F64        D21, D22, D21
23736A:  VLDR            D23, [R2]
23736E:  ADD.W           R2, R12, #0x440
237372:  VADD.F64        D18, D18, D21
237376:  VMUL.F64        D19, D23, D20
23737A:  VLDR            D20, [R3]
23737E:  ADD.W           R3, R11, #0x840
237382:  VLDR            D22, [R2]
237386:  ADD.W           R2, R12, #0x450
23738A:  VLDR            D21, [R3]
23738E:  ADD.W           R3, R11, #0x870
237392:  VADD.F64        D18, D18, D19
237396:  VMUL.F64        D21, D22, D21
23739A:  VLDR            D23, [R2]
23739E:  ADD.W           R2, R12, #0x460
2373A2:  VADD.F64        D18, D18, D21
2373A6:  VMUL.F64        D19, D23, D20
2373AA:  VLDR            D20, [R3]
2373AE:  ADD.W           R3, R11, #0x860
2373B2:  VLDR            D22, [R2]
2373B6:  ADD.W           R2, R12, #0x470
2373BA:  VLDR            D21, [R3]
2373BE:  ADD.W           R3, R11, #0x600
2373C2:  VADD.F64        D18, D18, D19
2373C6:  VMUL.F64        D21, D22, D21
2373CA:  VLDR            D23, [R2]
2373CE:  VADD.F64        D18, D18, D21
2373D2:  VMUL.F64        D19, D23, D20
2373D6:  VADD.F64        D18, D18, D19
2373DA:  VCMPE.F64       D18, D16
2373DE:  VMRS            APSR_nzcv, FPSCR
2373E2:  BLE             loc_2373EC
2373E4:  ADDS            R0, #1
2373E6:  MOVW            R2, #0x7FFF
2373EA:  B               loc_237406
2373EC:  VCMPE.F64       D18, D17
2373F0:  VMRS            APSR_nzcv, FPSCR
2373F4:  BGE             loc_2373FE
2373F6:  ADDS            R0, #1
2373F8:  MOV.W           R2, #0x8000
2373FC:  B               loc_237406
2373FE:  VCVT.S32.F64    S0, D18
237402:  VMOV            R2, S0
237406:  LDR.W           R6, [LR]
23740A:  SXTH            R2, R2
23740C:  ASRS            R2, R2, #3
23740E:  MOVS            R5, #0
237410:  LDRB            R2, [R6,R2]
237412:  ADD.W           R6, R4, #0xA
237416:  STRB            R2, [R4,#8]
237418:  ADD.W           R2, R1, R10,LSL#3
23741C:  ADDS            R4, R2, R5
23741E:  VLDM            R3, {D18-D21}
237422:  ADD.W           R1, R4, #0xC70
237426:  VLDR            D22, [R1]
23742A:  ADDW            R1, R4, #0xC78
23742E:  VLDR            D23, [R1]
237432:  ADDW            R1, R4, #0xC68
237436:  VMUL.F64        D19, D22, D19
23743A:  VNMUL.F64       D18, D23, D18
23743E:  VLDR            D22, [R1]
237442:  ADD.W           R1, R4, #0xC60
237446:  VSUB.F64        D18, D18, D19
23744A:  VMUL.F64        D20, D22, D20
23744E:  VLDR            D23, [R1]
237452:  ADDW            R1, R4, #0xC58
237456:  VSUB.F64        D18, D18, D20
23745A:  VMUL.F64        D19, D23, D21
23745E:  VLDR            D22, [R1]
237462:  ADD.W           R1, R4, #0xC50
237466:  VLDR            D21, [R3,#0x20]
23746A:  VSUB.F64        D18, D18, D19
23746E:  VMUL.F64        D21, D22, D21
237472:  VLDR            D23, [R1]
237476:  ADDW            R1, R4, #0xC48
23747A:  VLDR            D20, [R3,#0x28]
23747E:  VSUB.F64        D18, D18, D21
237482:  VMUL.F64        D19, D23, D20
237486:  VLDR            D22, [R1]
23748A:  ADD.W           R1, R4, #0xC40
23748E:  VLDR            D21, [R3,#0x30]
237492:  VSUB.F64        D18, D18, D19
237496:  VMUL.F64        D21, D22, D21
23749A:  VLDR            D23, [R1]
23749E:  ADDW            R1, R4, #0xC38
2374A2:  VLDR            D20, [R3,#0x38]
2374A6:  VSUB.F64        D18, D18, D21
2374AA:  VMUL.F64        D19, D23, D20
2374AE:  VLDR            D22, [R1]
2374B2:  ADD.W           R1, R4, #0xC30
2374B6:  VLDR            D21, [R3,#0x40]
2374BA:  VSUB.F64        D18, D18, D19
2374BE:  VMUL.F64        D21, D22, D21
2374C2:  VLDR            D23, [R1]
2374C6:  ADDW            R1, R4, #0xC28
2374CA:  VLDR            D20, [R3,#0x48]
2374CE:  VSUB.F64        D18, D18, D21
2374D2:  VMUL.F64        D19, D23, D20
2374D6:  VLDR            D22, [R1]
2374DA:  ADD.W           R1, R4, #0xC20
2374DE:  VLDR            D21, [R3,#0x50]
2374E2:  VSUB.F64        D18, D18, D19
2374E6:  VMUL.F64        D21, D22, D21
2374EA:  VLDR            D23, [R1]
2374EE:  ADDW            R1, R4, #0xC18
2374F2:  VLDR            D20, [R3,#0x58]
2374F6:  VSUB.F64        D18, D18, D21
2374FA:  VMUL.F64        D19, D23, D20
2374FE:  VLDR            D22, [R1]
237502:  ADD.W           R1, R4, #0xC10
237506:  VLDR            D21, [R3,#0x60]
23750A:  VSUB.F64        D18, D18, D19
23750E:  VMUL.F64        D21, D22, D21
237512:  VLDR            D23, [R1]
237516:  ADDW            R1, R4, #0xC08
23751A:  VLDR            D20, [R3,#0x68]
23751E:  VSUB.F64        D18, D18, D21
237522:  VMUL.F64        D19, D23, D20
237526:  VLDR            D22, [R1]
23752A:  ADD.W           R1, R4, #0xC00
23752E:  VLDR            D21, [R3,#0x70]
237532:  VSUB.F64        D18, D18, D19
237536:  VMUL.F64        D21, D22, D21
23753A:  VLDR            D20, [R3,#0x78]
23753E:  VLDR            D23, [R1]
237542:  VSUB.F64        D18, D18, D21
237546:  VMUL.F64        D19, D23, D20
23754A:  VSUB.F64        D18, D18, D19
23754E:  VCMPE.F64       D18, D16
237552:  VMRS            APSR_nzcv, FPSCR
237556:  BLE             loc_237560
237558:  ADDS            R0, #1
23755A:  MOVW            R4, #0x7FFF
23755E:  B               loc_237590
237560:  VCMPE.F64       D18, D17
237564:  VMRS            APSR_nzcv, FPSCR
237568:  BGE             loc_237588
23756A:  ADDS            R0, #1
23756C:  MOV.W           R4, #0x8000
237570:  B               loc_237590
237572:  ALIGN 8
237578:  DCFD 32767.0
237580:  DCFD -32768.0
237588:  VCVT.S32.F64    S0, D18
23758C:  VMOV            R4, S0
237590:  LDR.W           R1, [LR]
237594:  SXTH            R4, R4
237596:  ASRS            R4, R4, #3
237598:  SUB.W           R5, R5, #0x400
23759C:  SUB.W           R3, R3, #0x200
2375A0:  CMN.W           R5, #0xC00
2375A4:  LDRB            R1, [R1,R4]
2375A6:  STRB.W          R1, [R6],#2
2375AA:  BNE.W           loc_23741C
2375AE:  LDR             R1, [SP,#0x28+var_20]
2375B0:  CMP             R1, #0
2375B2:  ITTTT NE
2375B4:  LDRNE           R1, [SP,#0x28+var_28]
2375B6:  MOVNE           R2, R1
2375B8:  LDRNE           R1, [R2]
2375BA:  ADDNE           R1, #0x10
2375BC:  IT NE
2375BE:  STRNE           R1, [R2]
2375C0:  ADD             SP, SP, #0xC
2375C2:  POP.W           {R8-R11}
2375C6:  POP             {R4-R7,PC}
