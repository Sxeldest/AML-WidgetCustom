; =========================================================
; Game Engine Function: _ZN10CCollision11PointInPolyEP7CVectorP12CColTriangleS1_S1_
; Address            : 0x2E0286 - 0x2E044E
; =========================================================

2E0286:  VLDR            S2, [R2,#4]
2E028A:  VLDR            S4, [R2,#8]
2E028E:  VABS.F32        S2, S2
2E0292:  VLDR            S0, [R2]
2E0296:  VABS.F32        S4, S4
2E029A:  MOVS            R2, #4
2E029C:  VABS.F32        S0, S0
2E02A0:  VCMPE.F32       S2, S4
2E02A4:  VMRS            APSR_nzcv, FPSCR
2E02A8:  VCMPE.F32       S0, S4
2E02AC:  IT GT
2E02AE:  MOVGT           R2, #2
2E02B0:  VMRS            APSR_nzcv, FPSCR
2E02B4:  MOV             R1, R2
2E02B6:  VCMPE.F32       S0, S2
2E02BA:  IT GT
2E02BC:  MOVGT           R1, #0
2E02BE:  VMRS            APSR_nzcv, FPSCR
2E02C2:  IT LE
2E02C4:  MOVLE           R1, R2
2E02C6:  CMP             R1, #0
2E02C8:  BEQ             loc_2E0374
2E02CA:  CMP             R1, #4
2E02CC:  BEQ             loc_2E0396
2E02CE:  CMP             R1, #2
2E02D0:  BNE.W           loc_2E0440
2E02D4:  VLDR            S0, [R3]
2E02D8:  MOVS            R2, #0
2E02DA:  VLDR            S8, [R3,#0x18]
2E02DE:  MOVS            R1, #0
2E02E0:  VLDR            S10, [R0]
2E02E4:  VLDR            S12, [R0,#8]
2E02E8:  VSUB.F32        S1, S0, S8
2E02EC:  VLDR            S14, [R3,#0x20]
2E02F0:  VSUB.F32        S5, S10, S8
2E02F4:  VLDR            S2, [R3,#8]
2E02F8:  MOVS            R0, #0
2E02FA:  VSUB.F32        S3, S12, S14
2E02FE:  VLDR            S4, [R3,#0xC]
2E0302:  VSUB.F32        S7, S2, S14
2E0306:  VLDR            S6, [R3,#0x14]
2E030A:  VSUB.F32        S8, S8, S4
2E030E:  VSUB.F32        S9, S12, S6
2E0312:  VSUB.F32        S11, S10, S4
2E0316:  VSUB.F32        S14, S14, S6
2E031A:  VSUB.F32        S12, S12, S2
2E031E:  VSUB.F32        S4, S4, S0
2E0322:  VSUB.F32        S0, S10, S0
2E0326:  VSUB.F32        S2, S6, S2
2E032A:  VMUL.F32        S6, S3, S1
2E032E:  VMUL.F32        S10, S7, S5
2E0332:  VMUL.F32        S8, S9, S8
2E0336:  VMUL.F32        S14, S11, S14
2E033A:  VMUL.F32        S4, S12, S4
2E033E:  VMUL.F32        S0, S0, S2
2E0342:  VSUB.F32        S2, S10, S6
2E0346:  VSUB.F32        S6, S14, S8
2E034A:  VSUB.F32        S0, S0, S4
2E034E:  VCMPE.F32       S2, #0.0
2E0352:  VMRS            APSR_nzcv, FPSCR
2E0356:  VCMPE.F32       S6, #0.0
2E035A:  IT LE
2E035C:  MOVLE           R2, #1
2E035E:  VMRS            APSR_nzcv, FPSCR
2E0362:  VCMPE.F32       S0, #0.0
2E0366:  IT LE
2E0368:  MOVLE           R0, #1
2E036A:  VMRS            APSR_nzcv, FPSCR
2E036E:  IT LE
2E0370:  MOVLE           R1, #1
2E0372:  B               loc_2E0434
2E0374:  VLDR            S0, [R3,#4]
2E0378:  VLDR            S2, [R3,#8]
2E037C:  VLDR            S4, [R3,#0x10]
2E0380:  VLDR            S6, [R3,#0x14]
2E0384:  VLDR            S8, [R3,#0x1C]
2E0388:  VLDR            S10, [R3,#0x20]
2E038C:  VLDR            S12, [R0,#4]
2E0390:  VLDR            S14, [R0,#8]
2E0394:  B               loc_2E03B6
2E0396:  VLDR            S0, [R3]
2E039A:  VLDR            S2, [R3,#4]
2E039E:  VLDR            S4, [R3,#0xC]
2E03A2:  VLDR            S6, [R3,#0x10]
2E03A6:  VLDR            S8, [R3,#0x18]
2E03AA:  VLDR            S10, [R3,#0x1C]
2E03AE:  VLDR            S12, [R0]
2E03B2:  VLDR            S14, [R0,#4]
2E03B6:  VSUB.F32        S1, S0, S8
2E03BA:  MOVS            R2, #0
2E03BC:  VSUB.F32        S5, S12, S8
2E03C0:  MOVS            R0, #0
2E03C2:  VSUB.F32        S3, S14, S10
2E03C6:  MOVS            R1, #0
2E03C8:  VSUB.F32        S7, S2, S10
2E03CC:  VSUB.F32        S9, S14, S6
2E03D0:  VSUB.F32        S8, S8, S4
2E03D4:  VSUB.F32        S11, S12, S4
2E03D8:  VSUB.F32        S10, S10, S6
2E03DC:  VSUB.F32        S14, S14, S2
2E03E0:  VSUB.F32        S4, S4, S0
2E03E4:  VSUB.F32        S0, S12, S0
2E03E8:  VSUB.F32        S2, S6, S2
2E03EC:  VMUL.F32        S6, S3, S1
2E03F0:  VMUL.F32        S12, S7, S5
2E03F4:  VMUL.F32        S8, S9, S8
2E03F8:  VMUL.F32        S10, S11, S10
2E03FC:  VMUL.F32        S4, S14, S4
2E0400:  VMUL.F32        S0, S0, S2
2E0404:  VSUB.F32        S2, S12, S6
2E0408:  VSUB.F32        S6, S10, S8
2E040C:  VSUB.F32        S0, S0, S4
2E0410:  VCMPE.F32       S2, #0.0
2E0414:  VMRS            APSR_nzcv, FPSCR
2E0418:  VCMPE.F32       S6, #0.0
2E041C:  IT GE
2E041E:  MOVGE           R2, #1
2E0420:  VMRS            APSR_nzcv, FPSCR
2E0424:  VCMPE.F32       S0, #0.0
2E0428:  IT GE
2E042A:  MOVGE           R0, #1
2E042C:  VMRS            APSR_nzcv, FPSCR
2E0430:  IT GE
2E0432:  MOVGE           R1, #1
2E0434:  CMP             R0, R1
2E0436:  ITTT NE
2E0438:  MOVNE           R0, #0
2E043A:  ANDNE.W         R0, R0, #1
2E043E:  BXNE            LR
2E0440:  EOR.W           R0, R2, R1
2E0444:  EOR.W           R0, R0, #1
2E0448:  AND.W           R0, R0, #1
2E044C:  BX              LR
