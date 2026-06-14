; =========================================================
; Game Engine Function: _Z19_rwPalQuantAddImageP10rwPalQuantP7RwImagef
; Address            : 0x1AB2E0 - 0x1AB7F6
; =========================================================

1AB2E0:  PUSH            {R4-R7,LR}
1AB2E2:  ADD             R7, SP, #0xC
1AB2E4:  PUSH.W          {R8-R11}
1AB2E8:  SUB             SP, SP, #4
1AB2EA:  VPUSH           {D8-D12}
1AB2EE:  SUB             SP, SP, #0x40
1AB2F0:  STR             R0, [SP,#0x88+var_4C]
1AB2F2:  VMOV            S16, R2
1AB2F6:  LDRD.W          R3, R0, [R1,#8]
1AB2FA:  CMP             R0, #4
1AB2FC:  LDR             R6, [R1,#0x10]
1AB2FE:  STR             R6, [SP,#0x88+var_84]
1AB300:  LDR             R6, [R1,#0x14]
1AB302:  STR             R6, [SP,#0x88+var_5C]
1AB304:  STR             R1, [SP,#0x88+var_80]
1AB306:  LDR             R6, [R1,#0x18]
1AB308:  IT NE
1AB30A:  CMPNE           R0, #8
1AB30C:  BEQ.W           loc_1AB580
1AB310:  CMP             R0, #0x20 ; ' '
1AB312:  BNE.W           loc_1AB7E8
1AB316:  CMP             R3, #0
1AB318:  BEQ.W           loc_1AB7E8
1AB31C:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1AB32C)
1AB320:  VMOV.I32        Q5, #0
1AB324:  VLDR            S24, =0.0039216
1AB328:  ADD             R0, PC; RwEngineInstance_ptr
1AB32A:  LDR             R0, [R0]; RwEngineInstance
1AB32C:  STR             R0, [SP,#0x88+var_58]
1AB32E:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1AB336)
1AB332:  ADD             R0, PC; RwEngineInstance_ptr
1AB334:  LDR             R0, [R0]; RwEngineInstance
1AB336:  STR             R0, [SP,#0x88+var_60]
1AB338:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1AB340)
1AB33C:  ADD             R0, PC; RwEngineInstance_ptr
1AB33E:  LDR             R0, [R0]; RwEngineInstance
1AB340:  STR             R0, [SP,#0x88+var_64]
1AB342:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1AB34A)
1AB346:  ADD             R0, PC; RwEngineInstance_ptr
1AB348:  LDR             R0, [R0]; RwEngineInstance
1AB34A:  STR             R0, [SP,#0x88+var_68]
1AB34C:  LDR.W           R0, =(RwEngineInstance_ptr - 0x1AB354)
1AB350:  ADD             R0, PC; RwEngineInstance_ptr
1AB352:  LDR             R0, [R0]; RwEngineInstance
1AB354:  STR             R0, [SP,#0x88+var_6C]
1AB356:  LDR             R0, [SP,#0x88+var_80]
1AB358:  SUBS            R3, #1
1AB35A:  LDR             R0, [R0,#4]
1AB35C:  STR             R3, [SP,#0x88+var_7C]
1AB35E:  CMP             R0, #0
1AB360:  STR             R0, [SP,#0x88+var_54]
1AB362:  BEQ.W           loc_1AB56A
1AB366:  MOVS            R2, #0
1AB368:  LDR             R1, [SP,#0x88+var_5C]
1AB36A:  MOVS            R5, #0x7C ; '|'
1AB36C:  LDR.W           R6, =(unk_6B2DD0 - 0x1AB37C)
1AB370:  ADD.W           R9, R1, R2,LSL#2
1AB374:  LDRB.W          R0, [R1,R2,LSL#2]
1AB378:  ADD             R6, PC; unk_6B2DD0
1AB37A:  STR             R2, [SP,#0x88+var_50]
1AB37C:  LDRB.W          R1, [R9,#1]
1AB380:  LDRB.W          R2, [R9,#2]
1AB384:  AND.W           R0, R5, R0,LSR#1
1AB388:  LDRB.W          R3, [R9,#3]
1AB38C:  AND.W           R1, R5, R1,LSR#1
1AB390:  LDR             R0, [R6,R0]
1AB392:  AND.W           R2, R5, R2,LSR#1
1AB396:  AND.W           R3, R5, R3,LSR#1
1AB39A:  LDR             R1, [R6,R1]
1AB39C:  LDR             R2, [R6,R2]
1AB39E:  LDR             R3, [R6,R3]
1AB3A0:  LDR             R6, [SP,#0x88+var_4C]
1AB3A2:  LSLS            R1, R1, #2
1AB3A4:  ORR.W           R0, R1, R0,LSL#3
1AB3A8:  ORR.W           R0, R0, R2,LSL#1
1AB3AC:  LDR             R5, [R6,#8]
1AB3AE:  ORR.W           R11, R0, R3
1AB3B2:  AND.W           R6, R11, #0xF
1AB3B6:  LDR.W           R10, [R5,R6,LSL#2]
1AB3BA:  CMP.W           R10, #0
1AB3BE:  BNE             loc_1AB3EE
1AB3C0:  LDR             R0, [SP,#0x88+var_58]
1AB3C2:  LDR             R1, [R0]
1AB3C4:  LDR             R0, [SP,#0x88+var_4C]
1AB3C6:  LDR.W           R1, [R1,#0x13C]
1AB3CA:  LDR             R0, [R0,#0xC]
1AB3CC:  BLX             R1
1AB3CE:  ADD.W           R1, R0, #0x30 ; '0'
1AB3D2:  STR.W           R0, [R5,R6,LSL#2]
1AB3D6:  VST1.32         {D10-D11}, [R1]
1AB3DA:  ADD.W           R1, R0, #0x20 ; ' '
1AB3DE:  VST1.32         {D10-D11}, [R1]
1AB3E2:  VST1.32         {D10-D11}, [R0]!
1AB3E6:  VST1.32         {D10-D11}, [R0]
1AB3EA:  LDR.W           R10, [R5,R6,LSL#2]
1AB3EE:  UBFX.W          R4, R11, #4, #4
1AB3F2:  LDR.W           R8, [R10,R4,LSL#2]
1AB3F6:  CMP.W           R8, #0
1AB3FA:  BNE             loc_1AB42A
1AB3FC:  LDR             R0, [SP,#0x88+var_60]
1AB3FE:  LDR             R1, [R0]
1AB400:  LDR             R0, [SP,#0x88+var_4C]
1AB402:  LDR.W           R1, [R1,#0x13C]
1AB406:  LDR             R0, [R0,#0xC]
1AB408:  BLX             R1
1AB40A:  ADD.W           R1, R0, #0x30 ; '0'
1AB40E:  STR.W           R0, [R10,R4,LSL#2]
1AB412:  VST1.32         {D10-D11}, [R1]
1AB416:  ADD.W           R1, R0, #0x20 ; ' '
1AB41A:  VST1.32         {D10-D11}, [R1]
1AB41E:  VST1.32         {D10-D11}, [R0]!
1AB422:  VST1.32         {D10-D11}, [R0]
1AB426:  LDR.W           R8, [R10,R4,LSL#2]
1AB42A:  UBFX.W          R5, R11, #8, #4
1AB42E:  LDR.W           R6, [R8,R5,LSL#2]
1AB432:  CBNZ            R6, loc_1AB462
1AB434:  LDR             R0, [SP,#0x88+var_64]
1AB436:  LDR             R1, [R0]
1AB438:  LDR             R0, [SP,#0x88+var_4C]
1AB43A:  LDR.W           R1, [R1,#0x13C]
1AB43E:  LDR             R0, [R0,#0xC]
1AB440:  BLX             R1
1AB442:  ADD.W           R1, R0, #0x30 ; '0'
1AB446:  STR.W           R0, [R8,R5,LSL#2]
1AB44A:  VST1.32         {D10-D11}, [R1]
1AB44E:  ADD.W           R1, R0, #0x20 ; ' '
1AB452:  VST1.32         {D10-D11}, [R1]
1AB456:  VST1.32         {D10-D11}, [R0]!
1AB45A:  VST1.32         {D10-D11}, [R0]
1AB45E:  LDR.W           R6, [R8,R5,LSL#2]
1AB462:  UBFX.W          R4, R11, #0xC, #4
1AB466:  LDR.W           R5, [R6,R4,LSL#2]
1AB46A:  CBNZ            R5, loc_1AB49A
1AB46C:  LDR             R0, [SP,#0x88+var_68]
1AB46E:  LDR             R1, [R0]
1AB470:  LDR             R0, [SP,#0x88+var_4C]
1AB472:  LDR.W           R1, [R1,#0x13C]
1AB476:  LDR             R0, [R0,#0xC]
1AB478:  BLX             R1
1AB47A:  ADD.W           R1, R0, #0x30 ; '0'
1AB47E:  STR.W           R0, [R6,R4,LSL#2]
1AB482:  VST1.32         {D10-D11}, [R1]
1AB486:  ADD.W           R1, R0, #0x20 ; ' '
1AB48A:  VST1.32         {D10-D11}, [R1]
1AB48E:  VST1.32         {D10-D11}, [R0]!
1AB492:  VST1.32         {D10-D11}, [R0]
1AB496:  LDR.W           R5, [R6,R4,LSL#2]
1AB49A:  UBFX.W          R4, R11, #0x10, #4
1AB49E:  LDR.W           R0, [R5,R4,LSL#2]
1AB4A2:  CBNZ            R0, loc_1AB4C8
1AB4A4:  LDR             R0, [SP,#0x88+var_6C]
1AB4A6:  LDR             R1, [R0]
1AB4A8:  LDR             R0, [SP,#0x88+var_4C]
1AB4AA:  LDR.W           R1, [R1,#0x13C]
1AB4AE:  LDR             R0, [R0,#0xC]
1AB4B0:  BLX             R1
1AB4B2:  MOVS            R1, #0
1AB4B4:  MOVS            R2, #0xFF
1AB4B6:  STR.W           R0, [R5,R4,LSL#2]
1AB4BA:  STR             R1, [R0,#0x14]
1AB4BC:  STRB            R2, [R0,#0x18]
1AB4BE:  VST1.32         {D10-D11}, [R0]!
1AB4C2:  STR             R1, [R0]
1AB4C4:  LDR.W           R0, [R5,R4,LSL#2]
1AB4C8:  LDRB.W          R2, [R9,#1]
1AB4CC:  LDRB.W          R1, [R9]
1AB4D0:  LDRB.W          R3, [R9,#2]
1AB4D4:  VMOV            S0, R2
1AB4D8:  LDRB.W          R6, [R9,#3]
1AB4DC:  VMOV            S2, R1
1AB4E0:  MOV             R1, R0
1AB4E2:  VCVT.F32.U32    S0, S0
1AB4E6:  VCVT.F32.U32    S2, S2
1AB4EA:  VMOV            S4, R3
1AB4EE:  VMOV            S6, R6
1AB4F2:  VCVT.F32.U32    S4, S4
1AB4F6:  VCVT.F32.U32    S6, S6
1AB4FA:  VLD1.32         {D16-D17}, [R0]
1AB4FE:  VMUL.F32        S0, S0, S24
1AB502:  VMUL.F32        S2, S2, S24
1AB506:  VMUL.F32        S4, S4, S24
1AB50A:  VMUL.F32        S18, S0, S16
1AB50E:  VMUL.F32        S17, S2, S16
1AB512:  VMUL.F32        S0, S6, S24
1AB516:  VMUL.F32        S19, S4, S16
1AB51A:  VMUL.F32        S2, S18, S18
1AB51E:  VMUL.F32        S4, S17, S17
1AB522:  VMUL.F32        S0, S0, S16
1AB526:  VADD.F32        Q8, Q4, Q8
1AB52A:  VMUL.F32        S6, S19, S19
1AB52E:  VADD.F32        S2, S4, S2
1AB532:  VMUL.F32        S4, S0, S0
1AB536:  VST1.32         {D16-D17}, [R1]!
1AB53A:  VADD.F32        S2, S2, S6
1AB53E:  VLDR            S6, [R0,#0x14]
1AB542:  VADD.F32        S2, S2, S4
1AB546:  VLDR            S4, [R1]
1AB54A:  VADD.F32        S0, S0, S4
1AB54E:  VMUL.F32        S2, S2, S16
1AB552:  VSTR            S0, [R1]
1AB556:  VADD.F32        S2, S2, S6
1AB55A:  VSTR            S2, [R0,#0x14]
1AB55E:  LDR             R2, [SP,#0x88+var_50]
1AB560:  LDR             R0, [SP,#0x88+var_54]
1AB562:  ADDS            R2, #1
1AB564:  CMP             R0, R2
1AB566:  BNE.W           loc_1AB368
1AB56A:  LDR             R3, [SP,#0x88+var_7C]
1AB56C:  LDR             R0, [SP,#0x88+var_84]
1AB56E:  LDR             R1, [SP,#0x88+var_5C]
1AB570:  CMP             R3, #0
1AB572:  ADD             R1, R0
1AB574:  STR             R1, [SP,#0x88+var_5C]
1AB576:  BNE.W           loc_1AB356
1AB57A:  B               loc_1AB7E8
1AB57C:  DCFS 0.0039216
1AB580:  CMP             R3, #0
1AB582:  BEQ.W           loc_1AB7E8
1AB586:  LDR             R0, =(RwEngineInstance_ptr - 0x1AB594)
1AB588:  VMOV.I32        Q5, #0
1AB58C:  VLDR            S24, =0.0039216
1AB590:  ADD             R0, PC; RwEngineInstance_ptr
1AB592:  STR             R6, [SP,#0x88+var_64]
1AB594:  LDR             R0, [R0]; RwEngineInstance
1AB596:  STR             R0, [SP,#0x88+var_68]
1AB598:  LDR             R0, =(RwEngineInstance_ptr - 0x1AB59E)
1AB59A:  ADD             R0, PC; RwEngineInstance_ptr
1AB59C:  LDR             R0, [R0]; RwEngineInstance
1AB59E:  STR             R0, [SP,#0x88+var_6C]
1AB5A0:  LDR             R0, =(RwEngineInstance_ptr - 0x1AB5A6)
1AB5A2:  ADD             R0, PC; RwEngineInstance_ptr
1AB5A4:  LDR             R0, [R0]; RwEngineInstance
1AB5A6:  STR             R0, [SP,#0x88+var_70]
1AB5A8:  LDR             R0, =(RwEngineInstance_ptr - 0x1AB5AE)
1AB5AA:  ADD             R0, PC; RwEngineInstance_ptr
1AB5AC:  LDR             R0, [R0]; RwEngineInstance
1AB5AE:  STR             R0, [SP,#0x88+var_74]
1AB5B0:  LDR             R0, =(RwEngineInstance_ptr - 0x1AB5B6)
1AB5B2:  ADD             R0, PC; RwEngineInstance_ptr
1AB5B4:  LDR             R0, [R0]; RwEngineInstance
1AB5B6:  STR             R0, [SP,#0x88+var_78]
1AB5B8:  LDR             R0, [SP,#0x88+var_80]
1AB5BA:  SUBS            R3, #1
1AB5BC:  LDR             R0, [R0,#4]
1AB5BE:  STR             R3, [SP,#0x88+var_7C]
1AB5C0:  CMP             R0, #0
1AB5C2:  STR             R0, [SP,#0x88+var_60]
1AB5C4:  BEQ.W           loc_1AB7D8
1AB5C8:  MOV.W           R10, #0
1AB5CC:  LDR             R0, [SP,#0x88+var_5C]
1AB5CE:  MOVS            R4, #0x7C ; '|'
1AB5D0:  LDRB.W          R2, [R0,R10]
1AB5D4:  ADD.W           R11, R6, R2,LSL#2
1AB5D8:  MOV             R1, R11
1AB5DA:  MOV             R3, R11
1AB5DC:  LDRB.W          R0, [R1,#3]!
1AB5E0:  STR             R1, [SP,#0x88+var_50]
1AB5E2:  LDR             R1, =(unk_6B2DD0 - 0x1AB5EC)
1AB5E4:  AND.W           R0, R4, R0,LSR#1
1AB5E8:  ADD             R1, PC; unk_6B2DD0
1AB5EA:  MOV             R5, R1
1AB5EC:  LDRB.W          R1, [R3,#2]!
1AB5F0:  STR             R3, [SP,#0x88+var_58]
1AB5F2:  STR             R2, [SP,#0x88+var_54]
1AB5F4:  LDRB.W          R3, [R11,#1]!
1AB5F8:  AND.W           R1, R4, R1,LSR#1
1AB5FC:  LDRB.W          R2, [R6,R2,LSL#2]
1AB600:  LDR             R1, [R5,R1]
1AB602:  AND.W           R3, R4, R3,LSR#1
1AB606:  AND.W           R2, R4, R2,LSR#1
1AB60A:  LDR             R0, [R5,R0]
1AB60C:  LDR             R3, [R5,R3]
1AB60E:  LDR             R2, [R5,R2]
1AB610:  LSLS            R3, R3, #2
1AB612:  ORR.W           R2, R3, R2,LSL#3
1AB616:  LDR             R3, [SP,#0x88+var_4C]
1AB618:  ORR.W           R1, R2, R1,LSL#1
1AB61C:  ORR.W           R8, R1, R0
1AB620:  LDR             R4, [R3,#8]
1AB622:  AND.W           R9, R8, #0xF
1AB626:  LDR.W           R6, [R4,R9,LSL#2]
1AB62A:  CMP             R6, #0
1AB62C:  BNE             loc_1AB65C
1AB62E:  LDR             R0, [SP,#0x88+var_68]
1AB630:  LDR             R1, [R0]
1AB632:  LDR             R0, [SP,#0x88+var_4C]
1AB634:  LDR.W           R1, [R1,#0x13C]
1AB638:  LDR             R0, [R0,#0xC]
1AB63A:  BLX             R1
1AB63C:  ADD.W           R1, R0, #0x30 ; '0'
1AB640:  STR.W           R0, [R4,R9,LSL#2]
1AB644:  VST1.32         {D10-D11}, [R1]
1AB648:  ADD.W           R1, R0, #0x20 ; ' '
1AB64C:  VST1.32         {D10-D11}, [R1]
1AB650:  VST1.32         {D10-D11}, [R0]!
1AB654:  VST1.32         {D10-D11}, [R0]
1AB658:  LDR.W           R6, [R4,R9,LSL#2]
1AB65C:  UBFX.W          R5, R8, #4, #4
1AB660:  LDR.W           R4, [R6,R5,LSL#2]
1AB664:  CBNZ            R4, loc_1AB694
1AB666:  LDR             R0, [SP,#0x88+var_6C]
1AB668:  LDR             R1, [R0]
1AB66A:  LDR             R0, [SP,#0x88+var_4C]
1AB66C:  LDR.W           R1, [R1,#0x13C]
1AB670:  LDR             R0, [R0,#0xC]
1AB672:  BLX             R1
1AB674:  ADD.W           R1, R0, #0x30 ; '0'
1AB678:  STR.W           R0, [R6,R5,LSL#2]
1AB67C:  VST1.32         {D10-D11}, [R1]
1AB680:  ADD.W           R1, R0, #0x20 ; ' '
1AB684:  VST1.32         {D10-D11}, [R1]
1AB688:  VST1.32         {D10-D11}, [R0]!
1AB68C:  VST1.32         {D10-D11}, [R0]
1AB690:  LDR.W           R4, [R6,R5,LSL#2]
1AB694:  UBFX.W          R5, R8, #8, #4
1AB698:  LDR.W           R6, [R4,R5,LSL#2]
1AB69C:  CBNZ            R6, loc_1AB6CC
1AB69E:  LDR             R0, [SP,#0x88+var_70]
1AB6A0:  LDR             R1, [R0]
1AB6A2:  LDR             R0, [SP,#0x88+var_4C]
1AB6A4:  LDR.W           R1, [R1,#0x13C]
1AB6A8:  LDR             R0, [R0,#0xC]
1AB6AA:  BLX             R1
1AB6AC:  ADD.W           R1, R0, #0x30 ; '0'
1AB6B0:  STR.W           R0, [R4,R5,LSL#2]
1AB6B4:  VST1.32         {D10-D11}, [R1]
1AB6B8:  ADD.W           R1, R0, #0x20 ; ' '
1AB6BC:  VST1.32         {D10-D11}, [R1]
1AB6C0:  VST1.32         {D10-D11}, [R0]!
1AB6C4:  VST1.32         {D10-D11}, [R0]
1AB6C8:  LDR.W           R6, [R4,R5,LSL#2]
1AB6CC:  UBFX.W          R5, R8, #0xC, #4
1AB6D0:  LDR.W           R4, [R6,R5,LSL#2]
1AB6D4:  CBNZ            R4, loc_1AB704
1AB6D6:  LDR             R0, [SP,#0x88+var_74]
1AB6D8:  LDR             R1, [R0]
1AB6DA:  LDR             R0, [SP,#0x88+var_4C]
1AB6DC:  LDR.W           R1, [R1,#0x13C]
1AB6E0:  LDR             R0, [R0,#0xC]
1AB6E2:  BLX             R1
1AB6E4:  ADD.W           R1, R0, #0x30 ; '0'
1AB6E8:  STR.W           R0, [R6,R5,LSL#2]
1AB6EC:  VST1.32         {D10-D11}, [R1]
1AB6F0:  ADD.W           R1, R0, #0x20 ; ' '
1AB6F4:  VST1.32         {D10-D11}, [R1]
1AB6F8:  VST1.32         {D10-D11}, [R0]!
1AB6FC:  VST1.32         {D10-D11}, [R0]
1AB700:  LDR.W           R4, [R6,R5,LSL#2]
1AB704:  UBFX.W          R5, R8, #0x10, #4
1AB708:  LDR.W           R0, [R4,R5,LSL#2]
1AB70C:  CBNZ            R0, loc_1AB732
1AB70E:  LDR             R0, [SP,#0x88+var_78]
1AB710:  LDR             R1, [R0]
1AB712:  LDR             R0, [SP,#0x88+var_4C]
1AB714:  LDR.W           R1, [R1,#0x13C]
1AB718:  LDR             R0, [R0,#0xC]
1AB71A:  BLX             R1
1AB71C:  MOVS            R1, #0
1AB71E:  MOVS            R2, #0xFF
1AB720:  STR.W           R0, [R4,R5,LSL#2]
1AB724:  STR             R1, [R0,#0x14]
1AB726:  STRB            R2, [R0,#0x18]
1AB728:  VST1.32         {D10-D11}, [R0]!
1AB72C:  STR             R1, [R0]
1AB72E:  LDR.W           R0, [R4,R5,LSL#2]
1AB732:  LDR             R6, [SP,#0x88+var_64]
1AB734:  ADD.W           R10, R10, #1
1AB738:  LDR             R1, [SP,#0x88+var_54]
1AB73A:  LDRB.W          R2, [R11]
1AB73E:  LDRB.W          R1, [R6,R1,LSL#2]
1AB742:  VMOV            S0, R2
1AB746:  VMOV            S2, R1
1AB74A:  VCVT.F32.U32    S0, S0
1AB74E:  VCVT.F32.U32    S2, S2
1AB752:  LDR             R1, [SP,#0x88+var_58]
1AB754:  LDRB            R1, [R1]
1AB756:  VMOV            S4, R1
1AB75A:  VMUL.F32        S0, S0, S24
1AB75E:  VCVT.F32.U32    S4, S4
1AB762:  LDR             R1, [SP,#0x88+var_50]
1AB764:  VMUL.F32        S2, S2, S24
1AB768:  LDRB            R1, [R1]
1AB76A:  VMOV            S6, R1
1AB76E:  MOV             R1, R0
1AB770:  VMUL.F32        S18, S0, S16
1AB774:  VMUL.F32        S4, S4, S24
1AB778:  VMUL.F32        S17, S2, S16
1AB77C:  VCVT.F32.U32    S6, S6
1AB780:  VLD1.32         {D16-D17}, [R0]
1AB784:  VMUL.F32        S19, S4, S16
1AB788:  VMUL.F32        S2, S18, S18
1AB78C:  VMUL.F32        S0, S6, S24
1AB790:  VMUL.F32        S4, S17, S17
1AB794:  VADD.F32        Q8, Q4, Q8
1AB798:  VMUL.F32        S6, S19, S19
1AB79C:  VMUL.F32        S0, S0, S16
1AB7A0:  VADD.F32        S2, S4, S2
1AB7A4:  VST1.32         {D16-D17}, [R1]!
1AB7A8:  VMUL.F32        S4, S0, S0
1AB7AC:  VADD.F32        S2, S2, S6
1AB7B0:  VLDR            S6, [R0,#0x14]
1AB7B4:  VADD.F32        S2, S2, S4
1AB7B8:  VLDR            S4, [R1]
1AB7BC:  VADD.F32        S0, S0, S4
1AB7C0:  VMUL.F32        S2, S2, S16
1AB7C4:  VSTR            S0, [R1]
1AB7C8:  VADD.F32        S2, S2, S6
1AB7CC:  VSTR            S2, [R0,#0x14]
1AB7D0:  LDR             R0, [SP,#0x88+var_60]
1AB7D2:  CMP             R0, R10
1AB7D4:  BNE.W           loc_1AB5CC
1AB7D8:  LDR             R3, [SP,#0x88+var_7C]
1AB7DA:  LDR             R0, [SP,#0x88+var_84]
1AB7DC:  LDR             R1, [SP,#0x88+var_5C]
1AB7DE:  CMP             R3, #0
1AB7E0:  ADD             R1, R0
1AB7E2:  STR             R1, [SP,#0x88+var_5C]
1AB7E4:  BNE.W           loc_1AB5B8
1AB7E8:  ADD             SP, SP, #0x40 ; '@'
1AB7EA:  VPOP            {D8-D12}
1AB7EE:  ADD             SP, SP, #4
1AB7F0:  POP.W           {R8-R11}
1AB7F4:  POP             {R4-R7,PC}
