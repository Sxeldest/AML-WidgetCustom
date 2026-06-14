; =========================================================
; Game Engine Function: _ZN6CWorld23FindNearestObjectOfTypeEiRK7CVectorfbbbbbb
; Address            : 0x42A278 - 0x42A6AE
; =========================================================

42A278:  PUSH            {R4-R7,LR}
42A27A:  ADD             R7, SP, #0xC
42A27C:  PUSH.W          {R8-R11}
42A280:  SUB             SP, SP, #4
42A282:  VPUSH           {D8-D12}
42A286:  SUB             SP, SP, #0x30
42A288:  MOV             R10, R1
42A28A:  VMOV            S16, R2
42A28E:  VLDR            S18, [R10]
42A292:  MOV             R11, R0
42A294:  VLDR            S22, =50.0
42A298:  MOV             R9, R3
42A29A:  VSUB.F32        S0, S18, S16
42A29E:  VLDR            S24, =60.0
42A2A2:  VLDR            S20, [R10,#4]
42A2A6:  VDIV.F32        S0, S0, S22
42A2AA:  VADD.F32        S0, S0, S24
42A2AE:  VMOV            R0, S0; x
42A2B2:  BLX             floorf
42A2B6:  VADD.F32        S0, S18, S16
42A2BA:  MOV             R8, R0
42A2BC:  VSUB.F32        S2, S20, S16
42A2C0:  VDIV.F32        S0, S0, S22
42A2C4:  VADD.F32        S0, S0, S24
42A2C8:  VDIV.F32        S2, S2, S22
42A2CC:  VMOV            R0, S0; x
42A2D0:  VADD.F32        S18, S2, S24
42A2D4:  BLX             floorf
42A2D8:  VADD.F32        S0, S20, S16
42A2DC:  MOV             R4, R0
42A2DE:  VDIV.F32        S0, S0, S22
42A2E2:  VADD.F32        S0, S0, S24
42A2E6:  VMOV            R0, S0; x
42A2EA:  BLX             floorf
42A2EE:  MOV             R5, R0
42A2F0:  VMOV            R0, S18; x
42A2F4:  LDR.W           R6, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A300)
42A2F8:  VMOV            S20, R8
42A2FC:  ADD             R6, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42A2FE:  BLX             floorf
42A302:  VMOV            S2, R5
42A306:  VMOV            S0, R0
42A30A:  LDR             R0, [R6]; CWorld::ms_nCurrentScanCode ...
42A30C:  VMOV            S4, R4
42A310:  VCVT.S32.F32    S2, S2
42A314:  VCVT.S32.F32    S18, S4
42A318:  VCVT.S32.F32    S0, S0
42A31C:  VCVT.S32.F32    S20, S20
42A320:  LDRH            R0, [R0]; this
42A322:  VMOV            R1, S2
42A326:  VMOV            R3, S0
42A32A:  STR             R1, [SP,#0x78+var_74]
42A32C:  MOVW            R1, #0xFFFF
42A330:  CMP             R0, R1
42A332:  BEQ             loc_42A338
42A334:  ADDS            R1, R0, #1
42A336:  B               loc_42A342
42A338:  MOV             R4, R3
42A33A:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42A33E:  MOV             R3, R4
42A340:  MOVS            R1, #1
42A342:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42A34A)
42A344:  LDR             R2, [SP,#0x78+var_74]
42A346:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42A348:  CMP             R3, R2
42A34A:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
42A34C:  STRH            R1, [R0]; CWorld::ms_nCurrentScanCode
42A34E:  MOV.W           R0, #0
42A352:  BGT.W           loc_42A6A0
42A356:  VMOV            R2, S18
42A35A:  VMOV            R6, S20
42A35E:  STR             R2, [SP,#0x78+var_50]
42A360:  LDR             R2, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42A368)
42A362:  STR             R6, [SP,#0x78+var_78]
42A364:  ADD             R2, PC; _ZN6CWorld11ms_aSectorsE_ptr
42A366:  LDR             R2, [R2]; CWorld::ms_aSectors ...
42A368:  STR             R2, [SP,#0x78+var_5C]
42A36A:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A370)
42A36C:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A36E:  LDR             R2, [R2]; CWorld::ms_aRepeatSectors ...
42A370:  STR             R2, [SP,#0x78+var_60]
42A372:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A378)
42A374:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A376:  LDR             R2, [R2]; CWorld::ms_aRepeatSectors ...
42A378:  STR             R2, [SP,#0x78+var_64]
42A37A:  LDR             R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42A380)
42A37C:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42A37E:  LDR             R2, [R2]; CWorld::ms_aRepeatSectors ...
42A380:  STR             R2, [SP,#0x78+var_68]
42A382:  LDR             R2, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42A388)
42A384:  ADD             R2, PC; _ZN6CWorld11ms_aSectorsE_ptr
42A386:  LDR             R2, [R2]; CWorld::ms_aSectors ...
42A388:  STR             R2, [SP,#0x78+var_6C]
42A38A:  LDR             R2, [SP,#0x78+var_50]
42A38C:  STR             R3, [SP,#0x78+var_70]
42A38E:  CMP             R6, R2
42A390:  BGT.W           loc_42A690
42A394:  CMP             R3, #0
42A396:  MOV.W           R2, #0
42A39A:  IT GT
42A39C:  MOVGT           R2, R3
42A39E:  MOVS            R5, #0x77 ; 'w'
42A3A0:  CMP             R2, #0x77 ; 'w'
42A3A2:  IT GE
42A3A4:  MOVGE           R2, R5
42A3A6:  RSB.W           R2, R2, R2,LSL#4
42A3AA:  LSLS            R2, R2, #3
42A3AC:  STR             R2, [SP,#0x78+var_54]
42A3AE:  LSLS            R2, R3, #4
42A3B0:  UXTB            R2, R2
42A3B2:  STR             R2, [SP,#0x78+var_58]
42A3B4:  MOV             R2, R6
42A3B6:  MOV             LR, R2
42A3B8:  CMP.W           LR, #0
42A3BC:  MOV.W           R2, #0
42A3C0:  MOV.W           R3, #0x77 ; 'w'
42A3C4:  IT GT
42A3C6:  MOVGT           R2, LR
42A3C8:  AND.W           R12, LR, #0xF
42A3CC:  CMP             R2, #0x77 ; 'w'
42A3CE:  IT GE
42A3D0:  MOVGE           R2, R3
42A3D2:  LDR             R3, [SP,#0x78+var_54]
42A3D4:  ADD             R3, R2
42A3D6:  LDR             R2, [R7,#arg_0]
42A3D8:  STR             R3, [SP,#0x78+var_4C]
42A3DA:  CMP             R2, #1
42A3DC:  BNE             loc_42A45A
42A3DE:  LDR             R2, [SP,#0x78+var_5C]
42A3E0:  LDR.W           R3, [R2,R3,LSL#3]
42A3E4:  B               loc_42A43A
42A3E6:  LDR             R4, [R2,#0x14]
42A3E8:  MOV             R5, R10
42A3EA:  VLD1.32         {D16}, [R5]!
42A3EE:  ADD.W           R6, R4, #0x30 ; '0'
42A3F2:  CMP             R4, #0
42A3F4:  IT EQ
42A3F6:  ADDEQ           R6, R2, #4
42A3F8:  VLDR            S0, [R5]
42A3FC:  VLD1.32         {D17}, [R6]!
42A400:  CMP.W           R9, #0
42A404:  VSUB.F32        D16, D16, D17
42A408:  VLDR            S2, [R6]
42A40C:  VSUB.F32        S0, S0, S2
42A410:  VMUL.F32        D1, D16, D16
42A414:  VADD.F32        S2, S2, S3
42A418:  VMUL.F32        S0, S0, S0
42A41C:  VADD.F32        S0, S2, S0
42A420:  IT NE
42A422:  VMOVNE.F32      S0, S2
42A426:  VSQRT.F32       S0, S0
42A42A:  VCMPE.F32       S0, S16
42A42E:  VMRS            APSR_nzcv, FPSCR
42A432:  ITT LT
42A434:  MOVLT           R0, R2
42A436:  VMOVLT.F32      S16, S0
42A43A:  CBZ             R3, loc_42A45A
42A43C:  LDRD.W          R2, R3, [R3]
42A440:  UXTH            R5, R1
42A442:  LDRH            R4, [R2,#0x30]
42A444:  CMP             R4, R5
42A446:  BEQ             loc_42A43A
42A448:  LDRSH.W         R8, [R2,#0x26]
42A44C:  CMP.W           R11, #0
42A450:  STRH            R1, [R2,#0x30]
42A452:  BLT             loc_42A3E6
42A454:  CMP             R8, R11
42A456:  BNE             loc_42A43A
42A458:  B               loc_42A3E6
42A45A:  LDR             R2, [SP,#0x78+var_58]
42A45C:  ORR.W           R12, R12, R2
42A460:  LDR             R2, [R7,#arg_4]
42A462:  CMP             R2, #1
42A464:  BNE             loc_42A4E6
42A466:  LDR             R3, [SP,#0x78+var_60]
42A468:  ADD.W           R2, R12, R12,LSL#1
42A46C:  LDR.W           R2, [R3,R2,LSL#2]
42A470:  B               loc_42A4C6
42A472:  LDR             R6, [R3,#0x14]
42A474:  MOV             R4, R10
42A476:  VLD1.32         {D16}, [R4]!
42A47A:  ADD.W           R5, R6, #0x30 ; '0'
42A47E:  CMP             R6, #0
42A480:  IT EQ
42A482:  ADDEQ           R5, R3, #4
42A484:  VLDR            S0, [R4]
42A488:  VLD1.32         {D17}, [R5]!
42A48C:  CMP.W           R9, #0
42A490:  VSUB.F32        D16, D16, D17
42A494:  VLDR            S2, [R5]
42A498:  VSUB.F32        S0, S0, S2
42A49C:  VMUL.F32        D1, D16, D16
42A4A0:  VADD.F32        S2, S2, S3
42A4A4:  VMUL.F32        S0, S0, S0
42A4A8:  VADD.F32        S0, S2, S0
42A4AC:  IT NE
42A4AE:  VMOVNE.F32      S0, S2
42A4B2:  VSQRT.F32       S0, S0
42A4B6:  VCMPE.F32       S0, S16
42A4BA:  VMRS            APSR_nzcv, FPSCR
42A4BE:  ITT LT
42A4C0:  MOVLT           R0, R3
42A4C2:  VMOVLT.F32      S16, S0
42A4C6:  CBZ             R2, loc_42A4E6
42A4C8:  LDRD.W          R3, R2, [R2]
42A4CC:  UXTH            R4, R1
42A4CE:  LDRH            R6, [R3,#0x30]
42A4D0:  CMP             R6, R4
42A4D2:  BEQ             loc_42A4C6
42A4D4:  LDRSH.W         R4, [R3,#0x26]
42A4D8:  CMP.W           R11, #0
42A4DC:  STRH            R1, [R3,#0x30]
42A4DE:  BLT             loc_42A472
42A4E0:  CMP             R4, R11
42A4E2:  BNE             loc_42A4C6
42A4E4:  B               loc_42A472
42A4E6:  LDR             R2, [R7,#arg_8]
42A4E8:  CMP             R2, #1
42A4EA:  BNE             loc_42A56E
42A4EC:  ADD.W           R2, R12, R12,LSL#1
42A4F0:  LDR             R3, [SP,#0x78+var_64]
42A4F2:  ADD.W           R2, R3, R2,LSL#2
42A4F6:  LDR             R2, [R2,#4]
42A4F8:  B               loc_42A54E
42A4FA:  LDR             R4, [R3,#0x14]
42A4FC:  MOV             R5, R10
42A4FE:  VLD1.32         {D16}, [R5]!
42A502:  ADD.W           R6, R4, #0x30 ; '0'
42A506:  CMP             R4, #0
42A508:  IT EQ
42A50A:  ADDEQ           R6, R3, #4
42A50C:  VLDR            S0, [R5]
42A510:  VLD1.32         {D17}, [R6]!
42A514:  CMP.W           R9, #0
42A518:  VSUB.F32        D16, D16, D17
42A51C:  VLDR            S2, [R6]
42A520:  VSUB.F32        S0, S0, S2
42A524:  VMUL.F32        D1, D16, D16
42A528:  VADD.F32        S2, S2, S3
42A52C:  VMUL.F32        S0, S0, S0
42A530:  VADD.F32        S0, S2, S0
42A534:  IT NE
42A536:  VMOVNE.F32      S0, S2
42A53A:  VSQRT.F32       S0, S0
42A53E:  VCMPE.F32       S0, S16
42A542:  VMRS            APSR_nzcv, FPSCR
42A546:  ITT LT
42A548:  MOVLT           R0, R3
42A54A:  VMOVLT.F32      S16, S0
42A54E:  CBZ             R2, loc_42A56E
42A550:  LDRD.W          R3, R2, [R2]
42A554:  UXTH            R5, R1
42A556:  LDRH            R4, [R3,#0x30]
42A558:  CMP             R4, R5
42A55A:  BEQ             loc_42A54E
42A55C:  LDRSH.W         R4, [R3,#0x26]
42A560:  CMP.W           R11, #0
42A564:  STRH            R1, [R3,#0x30]
42A566:  BLT             loc_42A4FA
42A568:  CMP             R4, R11
42A56A:  BNE             loc_42A54E
42A56C:  B               loc_42A4FA
42A56E:  LDR             R2, [R7,#arg_C]
42A570:  CMP             R2, #1
42A572:  BNE             loc_42A5F6
42A574:  ADD.W           R2, R12, R12,LSL#1
42A578:  LDR             R3, [SP,#0x78+var_68]
42A57A:  ADD.W           R2, R3, R2,LSL#2
42A57E:  LDR             R2, [R2,#8]
42A580:  B               loc_42A5D6
42A582:  LDR             R6, [R3,#0x14]
42A584:  MOV             R5, R10
42A586:  VLD1.32         {D16}, [R5]!
42A58A:  ADD.W           R4, R6, #0x30 ; '0'
42A58E:  CMP             R6, #0
42A590:  IT EQ
42A592:  ADDEQ           R4, R3, #4
42A594:  VLDR            S0, [R5]
42A598:  VLD1.32         {D17}, [R4]!
42A59C:  CMP.W           R9, #0
42A5A0:  VSUB.F32        D16, D16, D17
42A5A4:  VLDR            S2, [R4]
42A5A8:  VSUB.F32        S0, S0, S2
42A5AC:  VMUL.F32        D1, D16, D16
42A5B0:  VADD.F32        S2, S2, S3
42A5B4:  VMUL.F32        S0, S0, S0
42A5B8:  VADD.F32        S0, S2, S0
42A5BC:  IT NE
42A5BE:  VMOVNE.F32      S0, S2
42A5C2:  VSQRT.F32       S0, S0
42A5C6:  VCMPE.F32       S0, S16
42A5CA:  VMRS            APSR_nzcv, FPSCR
42A5CE:  ITT LT
42A5D0:  MOVLT           R0, R3
42A5D2:  VMOVLT.F32      S16, S0
42A5D6:  CBZ             R2, loc_42A5F6
42A5D8:  LDRD.W          R3, R2, [R2]
42A5DC:  UXTH            R5, R1
42A5DE:  LDRH            R6, [R3,#0x30]
42A5E0:  CMP             R6, R5
42A5E2:  BEQ             loc_42A5D6
42A5E4:  LDRSH.W         R4, [R3,#0x26]
42A5E8:  CMP.W           R11, #0
42A5EC:  STRH            R1, [R3,#0x30]
42A5EE:  BLT             loc_42A582
42A5F0:  CMP             R4, R11
42A5F2:  BNE             loc_42A5D6
42A5F4:  B               loc_42A582
42A5F6:  LDR             R2, [R7,#arg_10]
42A5F8:  CMP             R2, #1
42A5FA:  BNE             loc_42A684
42A5FC:  LDR             R3, [SP,#0x78+var_4C]
42A5FE:  LDR             R2, [SP,#0x78+var_6C]
42A600:  ADD.W           R2, R2, R3,LSL#3
42A604:  LDR             R2, [R2,#4]
42A606:  B               loc_42A664
42A608:  DCFS 50.0
42A60C:  DCFS 60.0
42A610:  LDR             R6, [R3,#0x14]
42A612:  MOV             R5, R10
42A614:  VLD1.32         {D16}, [R5]!
42A618:  ADD.W           R4, R6, #0x30 ; '0'
42A61C:  CMP             R6, #0
42A61E:  IT EQ
42A620:  ADDEQ           R4, R3, #4
42A622:  VLDR            S0, [R5]
42A626:  VLD1.32         {D17}, [R4]!
42A62A:  CMP.W           R9, #0
42A62E:  VSUB.F32        D16, D16, D17
42A632:  VLDR            S2, [R4]
42A636:  VSUB.F32        S0, S0, S2
42A63A:  VMUL.F32        D1, D16, D16
42A63E:  VADD.F32        S2, S2, S3
42A642:  VMUL.F32        S0, S0, S0
42A646:  VADD.F32        S0, S2, S0
42A64A:  IT NE
42A64C:  VMOVNE.F32      S0, S2
42A650:  VSQRT.F32       S0, S0
42A654:  VCMPE.F32       S0, S16
42A658:  VMRS            APSR_nzcv, FPSCR
42A65C:  ITT LT
42A65E:  MOVLT           R0, R3
42A660:  VMOVLT.F32      S16, S0
42A664:  CBZ             R2, loc_42A684
42A666:  LDRD.W          R3, R2, [R2]
42A66A:  UXTH            R5, R1
42A66C:  LDRH            R6, [R3,#0x30]
42A66E:  CMP             R6, R5
42A670:  BEQ             loc_42A664
42A672:  LDRSH.W         R4, [R3,#0x26]
42A676:  CMP.W           R11, #0
42A67A:  STRH            R1, [R3,#0x30]
42A67C:  BLT             loc_42A610
42A67E:  CMP             R4, R11
42A680:  BNE             loc_42A664
42A682:  B               loc_42A610
42A684:  LDR             R3, [SP,#0x78+var_50]
42A686:  ADD.W           R2, LR, #1
42A68A:  CMP             LR, R3
42A68C:  BLT.W           loc_42A3B6
42A690:  LDR             R6, [SP,#0x78+var_70]
42A692:  LDR             R3, [SP,#0x78+var_74]
42A694:  ADDS            R2, R6, #1
42A696:  CMP             R6, R3
42A698:  LDR             R6, [SP,#0x78+var_78]
42A69A:  MOV             R3, R2
42A69C:  BLT.W           loc_42A38A
42A6A0:  ADD             SP, SP, #0x30 ; '0'
42A6A2:  VPOP            {D8-D12}
42A6A6:  ADD             SP, SP, #4
42A6A8:  POP.W           {R8-R11}
42A6AC:  POP             {R4-R7,PC}
