; =========================================================
; Game Engine Function: _ZN13BreakObject_c12SetGroupDataEP11RwMatrixTagP5RwV3df
; Address            : 0x451388 - 0x45159E
; =========================================================

451388:  PUSH            {R4-R7,LR}
45138A:  ADD             R7, SP, #0xC
45138C:  PUSH.W          {R8-R10}
451390:  VPUSH           {D8-D12}
451394:  MOV             R6, R0
451396:  MOV             R9, R2
451398:  LDR             R0, [R6,#4]
45139A:  MOV             R10, R1
45139C:  CMP             R0, #1
45139E:  BLT.W           loc_451594
4513A2:  VMOV            S16, R3
4513A6:  VLDR            S20, =4.6566e-10
4513AA:  VMOV.F32        S22, #3.0
4513AE:  MOV.W           R8, #0
4513B2:  VADD.F32        S18, S16, S16
4513B6:  MOVS            R4, #0
4513B8:  VMOV.F32        S24, #-1.0
4513BC:  MOVS            R5, #0
4513BE:  MOV             R0, R10
4513C0:  LDR             R1, [R6,#8]
4513C2:  VLD1.32         {D16-D17}, [R0]!
4513C6:  ADD.W           R2, R10, #0x20 ; ' '
4513CA:  VLD1.32         {D20-D21}, [R0]
4513CE:  ADD.W           R0, R10, #0x30 ; '0'
4513D2:  VLD1.32         {D22-D23}, [R0]
4513D6:  ADDS            R0, R1, R4
4513D8:  ADD.W           R1, R0, #0x30 ; '0'
4513DC:  VLD1.32         {D18-D19}, [R2]
4513E0:  VST1.32         {D22-D23}, [R1]
4513E4:  ADD.W           R1, R0, #0x20 ; ' '
4513E8:  VST1.32         {D18-D19}, [R1]
4513EC:  VST1.32         {D16-D17}, [R0]!
4513F0:  VST1.32         {D20-D21}, [R0]
4513F4:  LDR             R0, [R6,#8]
4513F6:  ADDS            R1, R0, R4
4513F8:  BLX             j__ZN13BreakObject_c15CalcGroupCenterEP12BreakGroup_t; BreakObject_c::CalcGroupCenter(BreakGroup_t *)
4513FC:  CMP.W           R9, #0
451400:  BEQ             loc_451494
451402:  LDR             R0, [R6,#8]
451404:  VCMP.F32        S16, #0.0
451408:  VLDR            D16, [R9]
45140C:  ADD             R0, R4
45140E:  LDR.W           R1, [R9,#8]
451412:  VMRS            APSR_nzcv, FPSCR
451416:  STR             R1, [R0,#0x48]
451418:  VSTR            D16, [R0,#0x40]
45141C:  BEQ             loc_4514F4
45141E:  BLX             rand
451422:  VMOV            S0, R0
451426:  VCVT.F32.S32    S0, S0
45142A:  LDR             R0, [R6,#8]
45142C:  ADD             R0, R4
45142E:  VLDR            S2, [R0,#0x40]
451432:  VMUL.F32        S0, S0, S20
451436:  VMUL.F32        S0, S18, S0
45143A:  VSUB.F32        S0, S0, S16
45143E:  VADD.F32        S0, S2, S0
451442:  VSTR            S0, [R0,#0x40]
451446:  BLX             rand
45144A:  VMOV            S0, R0
45144E:  VCVT.F32.S32    S0, S0
451452:  LDR             R0, [R6,#8]
451454:  ADD             R0, R4
451456:  VLDR            S2, [R0,#0x44]
45145A:  VMUL.F32        S0, S0, S20
45145E:  VMUL.F32        S0, S18, S0
451462:  VSUB.F32        S0, S0, S16
451466:  VADD.F32        S0, S2, S0
45146A:  VSTR            S0, [R0,#0x44]
45146E:  BLX             rand
451472:  VMOV            S0, R0
451476:  VCVT.F32.S32    S0, S0
45147A:  LDR             R0, [R6,#8]
45147C:  ADD             R0, R4
45147E:  VLDR            S2, [R0,#0x48]
451482:  VMUL.F32        S0, S0, S20
451486:  VMUL.F32        S0, S18, S0
45148A:  VSUB.F32        S0, S0, S16
45148E:  VADD.F32        S0, S2, S0
451492:  B               loc_4514F0
451494:  BLX             rand
451498:  VMOV            S0, R0
45149C:  VCVT.F32.S32    S0, S0
4514A0:  LDR             R0, [R6,#8]
4514A2:  ADD             R0, R4
4514A4:  VMUL.F32        S0, S0, S20
4514A8:  VMUL.F32        S0, S18, S0
4514AC:  VSUB.F32        S0, S0, S16
4514B0:  VSTR            S0, [R0,#0x40]
4514B4:  BLX             rand
4514B8:  VMOV            S0, R0
4514BC:  VCVT.F32.S32    S0, S0
4514C0:  LDR             R0, [R6,#8]
4514C2:  ADD             R0, R4
4514C4:  VMUL.F32        S0, S0, S20
4514C8:  VMUL.F32        S0, S18, S0
4514CC:  VSUB.F32        S0, S0, S16
4514D0:  VSTR            S0, [R0,#0x44]
4514D4:  BLX             rand
4514D8:  VMOV            S0, R0
4514DC:  VCVT.F32.S32    S0, S0
4514E0:  LDR             R0, [R6,#8]
4514E2:  ADD             R0, R4
4514E4:  VMUL.F32        S0, S0, S20
4514E8:  VMUL.F32        S0, S18, S0
4514EC:  VSUB.F32        S0, S0, S16
4514F0:  VSTR            S0, [R0,#0x48]
4514F4:  BLX             rand
4514F8:  VMOV            S0, R0
4514FC:  VCVT.F32.S32    S0, S0
451500:  LDR             R0, [R6,#8]
451502:  ADD             R0, R4
451504:  VMUL.F32        S0, S0, S20
451508:  VMUL.F32        S0, S0, S22
45150C:  VADD.F32        S0, S0, S22
451510:  VSTR            S0, [R0,#0x60]
451514:  BLX             rand
451518:  VMOV            S0, R0
45151C:  VCVT.F32.S32    S0, S0
451520:  LDR             R0, [R6,#8]
451522:  ADD             R0, R4
451524:  VMUL.F32        S0, S0, S20
451528:  VADD.F32        S0, S0, S0
45152C:  VADD.F32        S0, S0, S24
451530:  VSTR            S0, [R0,#0x64]
451534:  BLX             rand
451538:  VMOV            S0, R0
45153C:  VCVT.F32.S32    S0, S0
451540:  LDR             R0, [R6,#8]
451542:  ADD             R0, R4
451544:  VMUL.F32        S0, S0, S20
451548:  VADD.F32        S0, S0, S0
45154C:  VADD.F32        S0, S0, S24
451550:  VSTR            S0, [R0,#0x68]
451554:  BLX             rand
451558:  VMOV            S0, R0
45155C:  VCVT.F32.S32    S0, S0
451560:  LDR             R0, [R6,#8]
451562:  ADD             R0, R4
451564:  VMUL.F32        S0, S0, S20
451568:  VADD.F32        S0, S0, S0
45156C:  VADD.F32        S0, S0, S24
451570:  VSTR            S0, [R0,#0x6C]
451574:  LDR             R0, [R6,#8]
451576:  ADD             R0, R4
451578:  ADDS            R0, #0x64 ; 'd'
45157A:  MOV             R1, R0
45157C:  BLX             j__Z14RwV3dNormalizeP5RwV3dPKS_; RwV3dNormalize(RwV3d *,RwV3d const*)
451580:  LDR             R0, [R6,#8]
451582:  ADDS            R5, #1
451584:  ADD             R0, R4
451586:  ADDS            R4, #0x74 ; 't'
451588:  STRB.W          R8, [R0,#0x4C]
45158C:  LDR             R0, [R6,#4]
45158E:  CMP             R5, R0
451590:  BLT.W           loc_4513BE
451594:  VPOP            {D8-D12}
451598:  POP.W           {R8-R10}
45159C:  POP             {R4-R7,PC}
