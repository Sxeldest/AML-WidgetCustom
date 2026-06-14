; =========================================================
; Game Engine Function: _Z21LineRadarBoxCollisionR9CVector2DRKS_S2_
; Address            : 0x44327A - 0x443460
; =========================================================

44327A:  PUSH            {R4,R5,R7,LR}
44327C:  ADD             R7, SP, #8
44327E:  VMOV.F32        S0, #-1.0
443282:  VLDR            S4, [R2]
443286:  VLDR            S6, [R1]
44328A:  MOV             R12, #0xBF800000
443292:  VSUB.F32        S8, S0, S4
443296:  VSUB.F32        S2, S0, S6
44329A:  VMUL.F32        S10, S2, S8
44329E:  VCMPE.F32       S10, #0.0
4432A2:  VMRS            APSR_nzcv, FPSCR
4432A6:  BGE             loc_44330A
4432A8:  VSUB.F32        S8, S2, S8
4432AC:  MOV.W           LR, #0xFFFFFFFF
4432B0:  VDIV.F32        S8, S2, S8
4432B4:  VMOV.F32        S2, #1.0
4432B8:  VCMPE.F32       S8, S2
4432BC:  VMRS            APSR_nzcv, FPSCR
4432C0:  BGT             loc_443312
4432C2:  VLDR            S10, [R1,#4]
4432C6:  VLDR            S12, [R2,#4]
4432CA:  VSUB.F32        S12, S12, S10
4432CE:  VMUL.F32        S12, S8, S12
4432D2:  VADD.F32        S10, S10, S12
4432D6:  VMOV.F32        S12, #1.0
4432DA:  VCMPE.F32       S10, S12
4432DE:  VMRS            APSR_nzcv, FPSCR
4432E2:  BGT             loc_443312
4432E4:  VCMPE.F32       S10, S0
4432E8:  VMRS            APSR_nzcv, FPSCR
4432EC:  ITTTT GE
4432EE:  VSTRGE          S10, [R0,#4]
4432F2:  STRGE.W         R12, [R0]
4432F6:  VLDRGE          S4, [R2]
4432FA:  VLDRGE          S6, [R1]
4432FE:  ITT GE
443300:  MOVGE.W         LR, #3
443304:  VMOVGE.F32      S2, S8
443308:  B               loc_443312
44330A:  VMOV.F32        S2, #1.0
44330E:  MOV.W           LR, #0xFFFFFFFF
443312:  VADD.F32        S8, S4, S0
443316:  VADD.F32        S4, S6, S0
44331A:  VMUL.F32        S6, S4, S8
44331E:  VCMPE.F32       S6, #0.0
443322:  VMRS            APSR_nzcv, FPSCR
443326:  BGE             loc_443380
443328:  VSUB.F32        S6, S4, S8
44332C:  ADDS            R5, R1, #4
44332E:  ADDS            R4, R2, #4
443330:  VDIV.F32        S4, S4, S6
443334:  VCMPE.F32       S4, S2
443338:  VMRS            APSR_nzcv, FPSCR
44333C:  BGT             loc_443384
44333E:  VLDR            S6, [R1,#4]
443342:  VLDR            S8, [R2,#4]
443346:  VSUB.F32        S8, S8, S6
44334A:  VMUL.F32        S8, S4, S8
44334E:  VADD.F32        S6, S6, S8
443352:  VMOV.F32        S8, #1.0
443356:  VCMPE.F32       S6, S8
44335A:  VMRS            APSR_nzcv, FPSCR
44335E:  BGT             loc_443384
443360:  VCMPE.F32       S6, S0
443364:  VMRS            APSR_nzcv, FPSCR
443368:  ITTTT GE
44336A:  VSTRGE          S6, [R0,#4]
44336E:  MOVGE.W         R3, #0x3F800000
443372:  STRGE           R3, [R0]
443374:  MOVGE.W         LR, #1
443378:  IT GE
44337A:  VMOVGE.F32      S2, S4
44337E:  B               loc_443384
443380:  ADDS            R4, R2, #4
443382:  ADDS            R5, R1, #4
443384:  VLDR            S4, [R4]
443388:  VLDR            S6, [R5]
44338C:  VSUB.F32        S10, S0, S4
443390:  VSUB.F32        S8, S0, S6
443394:  VMUL.F32        S12, S8, S10
443398:  VCMPE.F32       S12, #0.0
44339C:  VMRS            APSR_nzcv, FPSCR
4433A0:  BGE             loc_4433FA
4433A2:  VSUB.F32        S10, S8, S10
4433A6:  VDIV.F32        S8, S8, S10
4433AA:  VCMPE.F32       S8, S2
4433AE:  VMRS            APSR_nzcv, FPSCR
4433B2:  BGT             loc_4433FA
4433B4:  VLDR            S10, [R1]
4433B8:  VLDR            S12, [R2]
4433BC:  VSUB.F32        S12, S12, S10
4433C0:  VMUL.F32        S12, S8, S12
4433C4:  VADD.F32        S10, S10, S12
4433C8:  VMOV.F32        S12, #1.0
4433CC:  VCMPE.F32       S10, S12
4433D0:  VMRS            APSR_nzcv, FPSCR
4433D4:  BGT             loc_4433FA
4433D6:  VCMPE.F32       S10, S0
4433DA:  VMRS            APSR_nzcv, FPSCR
4433DE:  ITTTT GE
4433E0:  STRGE.W         R12, [R0,#4]
4433E4:  VSTRGE          S10, [R0]
4433E8:  VLDRGE          S4, [R4]
4433EC:  VLDRGE          S6, [R5]
4433F0:  ITT GE
4433F2:  MOVGE.W         LR, #0
4433F6:  VMOVGE.F32      S2, S8
4433FA:  VADD.F32        S8, S4, S0
4433FE:  VADD.F32        S4, S6, S0
443402:  VMUL.F32        S6, S4, S8
443406:  VCMPE.F32       S6, #0.0
44340A:  VMRS            APSR_nzcv, FPSCR
44340E:  BGE             loc_44345C
443410:  VSUB.F32        S6, S4, S8
443414:  VDIV.F32        S4, S4, S6
443418:  VCMPE.F32       S4, S2
44341C:  VMRS            APSR_nzcv, FPSCR
443420:  BGT             loc_44345C
443422:  VLDR            S2, [R1]
443426:  VLDR            S6, [R2]
44342A:  VSUB.F32        S6, S6, S2
44342E:  VMUL.F32        S4, S4, S6
443432:  VADD.F32        S2, S2, S4
443436:  VMOV.F32        S4, #1.0
44343A:  VCMPE.F32       S2, S4
44343E:  VMRS            APSR_nzcv, FPSCR
443442:  BGT             loc_44345C
443444:  VCMPE.F32       S2, S0
443448:  VMRS            APSR_nzcv, FPSCR
44344C:  ITTTT GE
44344E:  MOVGE.W         R1, #0x3F800000
443452:  STRGE           R1, [R0,#4]
443454:  VSTRGE          S2, [R0]
443458:  MOVGE.W         LR, #2
44345C:  MOV             R0, LR
44345E:  POP             {R4,R5,R7,PC}
