; =========================================================
; Game Engine Function: INT123_synth_2to1
; Address            : 0x235190 - 0x235620
; =========================================================

235190:  PUSH            {R4-R7,LR}
235192:  ADD             R7, SP, #0xC
235194:  PUSH.W          {R8-R11}
235198:  SUB             SP, SP, #0xC
23519A:  MOV             R5, R2
23519C:  MOV             R2, R0
23519E:  STR             R3, [SP,#0x28+var_20]
2351A0:  MOVW            R12, #0xB2A8
2351A4:  MOVW            R0, #0xB2A0
2351A8:  LDR.W           LR, [R5,R12]
2351AC:  LDR             R6, [R5,R0]
2351AE:  MOVW            R0, #0x4848
2351B2:  LDR             R0, [R5,R0]
2351B4:  CBZ             R0, loc_2351DE
2351B6:  ADD.W           R0, R5, R1,LSL#8
2351BA:  MOVW            R4, #0x4850
2351BE:  ADD             R4, R0
2351C0:  MOVS            R0, #0
2351C2:  ADDS            R3, R4, R0
2351C4:  VLDR            D16, [R3]
2351C8:  ADDS            R3, R2, R0
2351CA:  ADDS            R0, #8
2351CC:  VLDR            D17, [R3]
2351D0:  CMP.W           R0, #0x100
2351D4:  VMUL.F64        D16, D17, D16
2351D8:  VSTR            D16, [R3]
2351DC:  BNE             loc_2351C2
2351DE:  ADD.W           R4, R6, LR
2351E2:  MOVW            R0, #0x4838
2351E6:  CBZ             R1, loc_2351F2
2351E8:  LDR.W           R10, [R5,R0]
2351EC:  ADDS            R4, #2
2351EE:  MOVS            R1, #1
2351F0:  B               loc_235200
2351F2:  LDR             R1, [R5,R0]
2351F4:  ADDS            R1, #0xF
2351F6:  AND.W           R10, R1, #0xF
2351FA:  STR.W           R10, [R5,R0]
2351FE:  MOVS            R1, #0
235200:  ADD.W           R0, R5, R12
235204:  STR             R0, [SP,#0x28+var_28]
235206:  ADD.W           R0, R5, R1,LSL#3
23520A:  MOVW            R1, #0x4820
23520E:  ADD             R1, R0
235210:  MOVS.W          R3, R10,LSL#31
235214:  BNE             loc_235234
235216:  MOVW            R3, #0x4824
23521A:  LDR             R1, [R1]
23521C:  LDR.W           R8, [R0,R3]
235220:  ADD.W           R0, R1, R10,LSL#3
235224:  ADD.W           R1, R8, R10,LSL#3
235228:  ADDS            R1, #8
23522A:  BLX             j_INT123_dct64
23522E:  ADD.W           R10, R10, #1
235232:  B               loc_235252
235234:  ADD.W           R3, R10, #1
235238:  LDR.W           R8, [R1]
23523C:  MOVW            R1, #0x4824
235240:  AND.W           R3, R3, #0xF
235244:  LDR             R0, [R0,R1]
235246:  ADD.W           R1, R8, R10,LSL#3
23524A:  ADD.W           R0, R0, R3,LSL#3
23524E:  BLX             j_INT123_dct64
235252:  MOVW            R0, #0x4844
235256:  VLDR            D16, =32767.0
23525A:  LDR.W           LR, [R5,R0]
23525E:  RSB.W           R0, R10, #0x1D0
235262:  VLDR            D17, =-32768.0
235266:  ADD.W           R2, LR, R0,LSL#3
23526A:  SUB.W           R0, LR, R10,LSL#3
23526E:  ADD.W           R5, R0, #0x80
235272:  RSB.W           R0, R10, #0x210
235276:  STR             R0, [SP,#0x28+var_24]
235278:  MOVS            R3, #0
23527A:  MOVW            R1, #0x7FFF
23527E:  MOV.W           R11, #0x8000
235282:  MOVS            R0, #0
235284:  MOV             R6, R8
235286:  VLDM            R6, {D18-D21}
23528A:  MOV.W           R9, R3,LSL#1
23528E:  VLDM            R5, {D22-D25}
235292:  VMUL.F64        D19, D23, D19
235296:  VMUL.F64        D18, D22, D18
23529A:  VMUL.F64        D20, D24, D20
23529E:  VSUB.F64        D18, D18, D19
2352A2:  VMUL.F64        D21, D25, D21
2352A6:  VADD.F64        D18, D18, D20
2352AA:  VLDR            D19, [R6,#0x20]
2352AE:  VLDR            D22, [R5,#0x20]
2352B2:  VSUB.F64        D18, D18, D21
2352B6:  VMUL.F64        D19, D22, D19
2352BA:  VLDR            D20, [R6,#0x28]
2352BE:  VLDR            D23, [R5,#0x28]
2352C2:  VADD.F64        D18, D18, D19
2352C6:  VMUL.F64        D20, D23, D20
2352CA:  VLDR            D21, [R6,#0x30]
2352CE:  VLDR            D22, [R5,#0x30]
2352D2:  VSUB.F64        D18, D18, D20
2352D6:  VMUL.F64        D21, D22, D21
2352DA:  VLDR            D19, [R6,#0x38]
2352DE:  VLDR            D23, [R5,#0x38]
2352E2:  VADD.F64        D18, D18, D21
2352E6:  VMUL.F64        D19, D23, D19
2352EA:  VLDR            D20, [R6,#0x40]
2352EE:  VLDR            D22, [R5,#0x40]
2352F2:  VSUB.F64        D18, D18, D19
2352F6:  VMUL.F64        D20, D22, D20
2352FA:  VLDR            D21, [R6,#0x48]
2352FE:  VLDR            D23, [R5,#0x48]
235302:  VADD.F64        D18, D18, D20
235306:  VMUL.F64        D21, D23, D21
23530A:  VLDR            D19, [R6,#0x50]
23530E:  VLDR            D22, [R5,#0x50]
235312:  VSUB.F64        D18, D18, D21
235316:  VMUL.F64        D19, D22, D19
23531A:  VLDR            D20, [R6,#0x58]
23531E:  VLDR            D23, [R5,#0x58]
235322:  VADD.F64        D18, D18, D19
235326:  VMUL.F64        D20, D23, D20
23532A:  VLDR            D21, [R6,#0x60]
23532E:  VLDR            D22, [R5,#0x60]
235332:  VSUB.F64        D18, D18, D20
235336:  VMUL.F64        D21, D22, D21
23533A:  VLDR            D19, [R6,#0x68]
23533E:  VLDR            D23, [R5,#0x68]
235342:  VADD.F64        D18, D18, D21
235346:  VMUL.F64        D19, D23, D19
23534A:  VLDR            D20, [R6,#0x70]
23534E:  VLDR            D22, [R5,#0x70]
235352:  VSUB.F64        D18, D18, D19
235356:  VMUL.F64        D20, D22, D20
23535A:  VLDR            D21, [R6,#0x78]
23535E:  VLDR            D23, [R5,#0x78]
235362:  VADD.F64        D18, D18, D20
235366:  VMUL.F64        D19, D23, D21
23536A:  VSUB.F64        D18, D18, D19
23536E:  VCMPE.F64       D18, D16
235372:  VMRS            APSR_nzcv, FPSCR
235376:  BLE             loc_235380
235378:  STRH.W          R1, [R4,R9,LSL#1]
23537C:  ADDS            R0, #1
23537E:  B               loc_23539E
235380:  VCMPE.F64       D18, D17
235384:  VMRS            APSR_nzcv, FPSCR
235388:  BGE             loc_235392
23538A:  STRH.W          R11, [R4,R9,LSL#1]
23538E:  ADDS            R0, #1
235390:  B               loc_23539E
235392:  VCVT.S32.F64    S0, D18
235396:  VMOV            R12, S0
23539A:  STRH.W          R12, [R4,R9,LSL#1]
23539E:  ADDS            R3, #1
2353A0:  ADD.W           R6, R6, #0x100
2353A4:  ADD.W           R5, R5, #0x200
2353A8:  CMP             R3, #8
2353AA:  BNE.W           loc_235286
2353AE:  LDR             R1, [SP,#0x28+var_24]
2353B0:  ADD.W           R3, R8, #0x810
2353B4:  VLDR            D18, [R2,#0x210]
2353B8:  VLDR            D23, [R3]
2353BC:  ADD.W           R1, LR, R1,LSL#3
2353C0:  VLDR            D19, [R2,#0x220]
2353C4:  VMUL.F64        D18, D18, D23
2353C8:  VLDR            D22, [R1]
2353CC:  ADD.W           R1, R8, #0x800
2353D0:  VLDR            D20, [R2,#0x230]
2353D4:  VLDR            D24, [R1]
2353D8:  ADD.W           R1, R8, #0x820
2353DC:  VLDR            D21, [R2,#0x240]
2353E0:  VMUL.F64        D22, D22, D24
2353E4:  VLDR            D23, [R1]
2353E8:  ADD.W           R1, R8, #0x830
2353EC:  VADD.F64        D18, D22, D18
2353F0:  VMUL.F64        D19, D19, D23
2353F4:  VLDR            D24, [R1]
2353F8:  ADD.W           R1, R8, #0x840
2353FC:  VADD.F64        D18, D18, D19
235400:  VMUL.F64        D20, D20, D24
235404:  VLDR            D22, [R1]
235408:  ADD.W           R1, R8, #0x850
23540C:  VADD.F64        D18, D18, D20
235410:  VMUL.F64        D21, D21, D22
235414:  VLDR            D23, [R1]
235418:  ADD.W           R1, R8, #0x860
23541C:  VLDR            D19, [R2,#0x250]
235420:  VADD.F64        D18, D18, D21
235424:  VMUL.F64        D19, D19, D23
235428:  VLDR            D22, [R1]
23542C:  ADD.W           R1, R8, #0x870
235430:  VLDR            D21, [R2,#0x260]
235434:  VADD.F64        D18, D18, D19
235438:  VMUL.F64        D21, D21, D22
23543C:  VLDR            D20, [R2,#0x270]
235440:  ADD.W           R2, R8, #0x700
235444:  VLDR            D23, [R1]
235448:  VADD.F64        D18, D18, D21
23544C:  VMUL.F64        D19, D20, D23
235450:  VADD.F64        D18, D18, D19
235454:  VCMPE.F64       D18, D16
235458:  VMRS            APSR_nzcv, FPSCR
23545C:  BLE             loc_235464
23545E:  MOVW            R1, #0x7FFF
235462:  B               loc_235472
235464:  VCMPE.F64       D18, D17
235468:  VMRS            APSR_nzcv, FPSCR
23546C:  BGE             loc_235478
23546E:  MOV.W           R1, #0x8000
235472:  STRH            R1, [R4,#0x20]
235474:  ADDS            R0, #1
235476:  B               loc_235482
235478:  VCVT.S32.F64    S0, D18
23547C:  VMOV            R1, S0
235480:  STRH            R1, [R4,#0x20]
235482:  ADD.W           R1, LR, R10,LSL#3
235486:  ADD.W           R3, R4, #0x24 ; '$'
23548A:  MOVS            R6, #0
23548C:  MOVW            LR, #0x7FFF
235490:  MOV.W           R12, #0x8000
235494:  ADDS            R4, R1, R6
235496:  VLDM            R2, {D18-D21}
23549A:  ADD.W           R5, R4, #0xE70
23549E:  VLDR            D22, [R5]
2354A2:  ADDW            R5, R4, #0xE78
2354A6:  VLDR            D23, [R5]
2354AA:  ADDW            R5, R4, #0xE68
2354AE:  VMUL.F64        D19, D22, D19
2354B2:  VNMUL.F64       D18, D23, D18
2354B6:  VLDR            D22, [R5]
2354BA:  ADD.W           R5, R4, #0xE60
2354BE:  VSUB.F64        D18, D18, D19
2354C2:  VMUL.F64        D20, D22, D20
2354C6:  VLDR            D23, [R5]
2354CA:  ADDW            R5, R4, #0xE58
2354CE:  VSUB.F64        D18, D18, D20
2354D2:  VMUL.F64        D19, D23, D21
2354D6:  VLDR            D22, [R5]
2354DA:  ADD.W           R5, R4, #0xE50
2354DE:  VLDR            D21, [R2,#0x20]
2354E2:  VSUB.F64        D18, D18, D19
2354E6:  VMUL.F64        D21, D22, D21
2354EA:  VLDR            D23, [R5]
2354EE:  ADDW            R5, R4, #0xE48
2354F2:  VLDR            D20, [R2,#0x28]
2354F6:  VSUB.F64        D18, D18, D21
2354FA:  VMUL.F64        D19, D23, D20
2354FE:  VLDR            D22, [R5]
235502:  ADD.W           R5, R4, #0xE40
235506:  VLDR            D21, [R2,#0x30]
23550A:  VSUB.F64        D18, D18, D19
23550E:  VMUL.F64        D21, D22, D21
235512:  VLDR            D23, [R5]
235516:  ADDW            R5, R4, #0xE38
23551A:  VLDR            D20, [R2,#0x38]
23551E:  VSUB.F64        D18, D18, D21
235522:  VMUL.F64        D19, D23, D20
235526:  VLDR            D22, [R5]
23552A:  ADD.W           R5, R4, #0xE30
23552E:  VLDR            D21, [R2,#0x40]
235532:  VSUB.F64        D18, D18, D19
235536:  VMUL.F64        D21, D22, D21
23553A:  VLDR            D23, [R5]
23553E:  ADDW            R5, R4, #0xE28
235542:  VLDR            D20, [R2,#0x48]
235546:  VSUB.F64        D18, D18, D21
23554A:  VMUL.F64        D19, D23, D20
23554E:  VLDR            D22, [R5]
235552:  ADD.W           R5, R4, #0xE20
235556:  VLDR            D21, [R2,#0x50]
23555A:  VSUB.F64        D18, D18, D19
23555E:  VMUL.F64        D21, D22, D21
235562:  VLDR            D23, [R5]
235566:  ADDW            R5, R4, #0xE18
23556A:  VLDR            D20, [R2,#0x58]
23556E:  VSUB.F64        D18, D18, D21
235572:  VMUL.F64        D19, D23, D20
235576:  VLDR            D22, [R5]
23557A:  ADD.W           R5, R4, #0xE10
23557E:  VLDR            D21, [R2,#0x60]
235582:  VSUB.F64        D18, D18, D19
235586:  VMUL.F64        D21, D22, D21
23558A:  VLDR            D23, [R5]
23558E:  ADDW            R5, R4, #0xE08
235592:  VLDR            D20, [R2,#0x68]
235596:  ADD.W           R4, R4, #0xE00
23559A:  VSUB.F64        D18, D18, D21
23559E:  VMUL.F64        D19, D23, D20
2355A2:  VLDR            D21, [R2,#0x70]
2355A6:  VLDR            D22, [R5]
2355AA:  VSUB.F64        D18, D18, D19
2355AE:  VMUL.F64        D21, D22, D21
2355B2:  VLDR            D20, [R2,#0x78]
2355B6:  VLDR            D23, [R4]
2355BA:  VSUB.F64        D18, D18, D21
2355BE:  VMUL.F64        D19, D23, D20
2355C2:  VSUB.F64        D18, D18, D19
2355C6:  VCMPE.F64       D18, D16
2355CA:  VMRS            APSR_nzcv, FPSCR
2355CE:  BLE             loc_2355D8
2355D0:  STRH.W          LR, [R3]
2355D4:  ADDS            R0, #1
2355D6:  B               loc_2355F4
2355D8:  VCMPE.F64       D18, D17
2355DC:  VMRS            APSR_nzcv, FPSCR
2355E0:  BGE             loc_2355EA
2355E2:  STRH.W          R12, [R3]
2355E6:  ADDS            R0, #1
2355E8:  B               loc_2355F4
2355EA:  VCVT.S32.F64    S0, D18
2355EE:  VMOV            R4, S0
2355F2:  STRH            R4, [R3]
2355F4:  SUB.W           R6, R6, #0x200
2355F8:  SUB.W           R2, R2, #0x100
2355FC:  ADDS            R3, #4
2355FE:  CMN.W           R6, #0xE00
235602:  BNE.W           loc_235494
235606:  LDR             R1, [SP,#0x28+var_20]
235608:  CMP             R1, #0
23560A:  ITTTT NE
23560C:  LDRNE           R1, [SP,#0x28+var_28]
23560E:  MOVNE           R2, R1
235610:  LDRNE           R1, [R2]
235612:  ADDNE           R1, #0x40 ; '@'
235614:  IT NE
235616:  STRNE           R1, [R2]
235618:  ADD             SP, SP, #0xC
23561A:  POP.W           {R8-R11}
23561E:  POP             {R4-R7,PC}
