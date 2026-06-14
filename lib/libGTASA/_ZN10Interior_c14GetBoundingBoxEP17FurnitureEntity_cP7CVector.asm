; =========================================================
; Game Engine Function: _ZN10Interior_c14GetBoundingBoxEP17FurnitureEntity_cP7CVector
; Address            : 0x446268 - 0x446522
; =========================================================

446268:  PUSH            {R4-R7,LR}
44626A:  ADD             R7, SP, #0xC
44626C:  PUSH.W          {R8-R10}
446270:  VPUSH           {D8-D10}
446274:  SUB.W           SP, SP, #0xE30
446278:  SUB             SP, SP, #8
44627A:  MOV             R8, R0
44627C:  MOV             R4, R2
44627E:  LDR.W           R2, [R8,#0x14]
446282:  MOVS            R0, #0
446284:  LDRB            R2, [R2]
446286:  CMP             R2, #6
446288:  BHI.W           loc_446512
44628C:  MOV.W           R10, #1
446290:  LSL.W           R2, R10, R2
446294:  TST.W           R2, #0x43
446298:  BEQ.W           loc_446512
44629C:  LDRH            R6, [R1,#0xC]
44629E:  ADD.W           R9, SP, #0xE68+var_E58
4462A2:  MOV             R0, R9
4462A4:  STRD.W          R6, R6, [R7,#var_3C]
4462A8:  LDRH            R5, [R1,#0xE]
4462AA:  MOV.W           R1, #0xE10
4462AE:  STRD.W          R5, R5, [R7,#var_44]
4462B2:  BLX             j___aeabi_memclr8
4462B6:  RSB.W           R0, R6, R6,LSL#4
4462BA:  SUB.W           R1, R7, #-var_40
4462BE:  SUB.W           R2, R7, #-var_3C
4462C2:  SUB.W           R3, R7, #-var_38; int *
4462C6:  ADD.W           R0, R9, R0,LSL#3
4462CA:  STR.W           R10, [R0,R5,LSL#2]
4462CE:  SUB.W           R0, R7, #-var_44
4462D2:  STRD.W          R2, R1, [SP,#0xE68+var_E68]; int *
4462D6:  MOV             R1, R6; int
4462D8:  STRD.W          R0, R9, [SP,#0xE68+var_E60]; int *
4462DC:  MOV             R0, R8; this
4462DE:  MOV             R2, R5; int
4462E0:  BLX             j__ZN10Interior_c15FindBoundingBoxEiiPiS0_S0_S0_S0_; Interior_c::FindBoundingBox(int,int,int *,int *,int *,int *,int *)
4462E4:  VLDR            S0, [R7,#var_38]
4462E8:  VMOV.F32        S20, #-0.5
4462EC:  LDR.W           R0, [R8,#0x14]
4462F0:  VMOV.F32        S16, #0.5
4462F4:  VCVT.F32.S32    S0, S0
4462F8:  LDR             R1, =(_ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr - 0x446306)
4462FA:  ADD.W           R6, R8, #0x18
4462FE:  MOVS            R2, #1
446300:  LDRB            R0, [R0,#2]
446302:  ADD             R1, PC; _ZN20CPedGeometryAnalyser20ms_fPedNominalRadiusE_ptr
446304:  MOV             R3, R6
446306:  NEGS            R0, R0
446308:  VMOV            S2, R0
44630C:  LDR             R0, [R1]; CPedGeometryAnalyser::ms_fPedNominalRadius ...
44630E:  VADD.F32        S0, S0, S20
446312:  MOV             R1, R4
446314:  VCVT.F32.S32    S2, S2
446318:  VLDR            S18, [R0]
44631C:  VSUB.F32        S0, S0, S18
446320:  VMUL.F32        S2, S2, S16
446324:  VADD.F32        S0, S0, S2
446328:  VLDR            S2, [R7,#var_44]
44632C:  VCVT.F32.S32    S2, S2
446330:  VADD.F32        S0, S0, S16
446334:  VSTR            S0, [R4]
446338:  VADD.F32        S0, S2, S16
44633C:  LDR.W           R0, [R8,#0x14]
446340:  LDRB            R0, [R0,#3]
446342:  NEGS            R0, R0
446344:  VADD.F32        S0, S18, S0
446348:  VMOV            S2, R0
44634C:  VCVT.F32.S32    S2, S2
446350:  VMUL.F32        S2, S2, S16
446354:  VADD.F32        S0, S0, S2
446358:  VADD.F32        S0, S0, S16
44635C:  VSTR            S0, [R4,#4]
446360:  LDR.W           R0, [R8,#0x14]
446364:  LDRB            R0, [R0,#4]
446366:  NEGS            R0, R0
446368:  VMOV            S0, R0
44636C:  MOV             R0, R4
44636E:  VCVT.F32.S32    S0, S0
446372:  VMUL.F32        S0, S0, S16
446376:  VSTR            S0, [R4,#8]
44637A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
44637E:  VLDR            S0, [R7,#var_38]
446382:  MOVS            R2, #1
446384:  LDR.W           R0, [R8,#0x14]
446388:  MOV             R3, R6
44638A:  VCVT.F32.S32    S0, S0
44638E:  LDRB            R0, [R0,#2]
446390:  NEGS            R0, R0
446392:  VMOV            S2, R0
446396:  VADD.F32        S0, S0, S20
44639A:  VCVT.F32.S32    S2, S2
44639E:  VSUB.F32        S0, S0, S18
4463A2:  VMUL.F32        S2, S2, S16
4463A6:  VADD.F32        S0, S0, S2
4463AA:  VLDR            S2, [R7,#var_40]
4463AE:  VCVT.F32.S32    S2, S2
4463B2:  VADD.F32        S0, S0, S16
4463B6:  VSTR            S0, [R4,#0xC]
4463BA:  VADD.F32        S0, S2, S20
4463BE:  LDR.W           R0, [R8,#0x14]
4463C2:  LDRB            R0, [R0,#3]
4463C4:  NEGS            R0, R0
4463C6:  VSUB.F32        S0, S0, S18
4463CA:  VMOV            S2, R0
4463CE:  VCVT.F32.S32    S2, S2
4463D2:  VMUL.F32        S2, S2, S16
4463D6:  VADD.F32        S0, S0, S2
4463DA:  VADD.F32        S0, S0, S16
4463DE:  VSTR            S0, [R4,#0x10]
4463E2:  LDR.W           R0, [R8,#0x14]
4463E6:  LDRB            R0, [R0,#4]
4463E8:  NEGS            R0, R0
4463EA:  VMOV            S0, R0
4463EE:  ADD.W           R0, R4, #0xC
4463F2:  VCVT.F32.S32    S0, S0
4463F6:  MOV             R1, R0
4463F8:  VMUL.F32        S0, S0, S16
4463FC:  VSTR            S0, [R4,#0x14]
446400:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
446404:  VLDR            S0, [R7,#var_3C]
446408:  MOVS            R2, #1
44640A:  LDR.W           R0, [R8,#0x14]
44640E:  MOV             R3, R6
446410:  VCVT.F32.S32    S0, S0
446414:  LDRB            R0, [R0,#2]
446416:  NEGS            R0, R0
446418:  VMOV            S2, R0
44641C:  VADD.F32        S0, S0, S16
446420:  VCVT.F32.S32    S2, S2
446424:  VADD.F32        S0, S18, S0
446428:  VMUL.F32        S2, S2, S16
44642C:  VADD.F32        S0, S0, S2
446430:  VLDR            S2, [R7,#var_40]
446434:  VCVT.F32.S32    S2, S2
446438:  VADD.F32        S0, S0, S16
44643C:  VSTR            S0, [R4,#0x18]
446440:  VADD.F32        S0, S2, S20
446444:  LDR.W           R0, [R8,#0x14]
446448:  LDRB            R0, [R0,#3]
44644A:  NEGS            R0, R0
44644C:  VSUB.F32        S0, S0, S18
446450:  VMOV            S2, R0
446454:  VCVT.F32.S32    S2, S2
446458:  VMUL.F32        S2, S2, S16
44645C:  VADD.F32        S0, S0, S2
446460:  VADD.F32        S0, S0, S16
446464:  VSTR            S0, [R4,#0x1C]
446468:  LDR.W           R0, [R8,#0x14]
44646C:  LDRB            R0, [R0,#4]
44646E:  NEGS            R0, R0
446470:  VMOV            S0, R0
446474:  ADD.W           R0, R4, #0x18
446478:  VCVT.F32.S32    S0, S0
44647C:  MOV             R1, R0
44647E:  VMUL.F32        S0, S0, S16
446482:  VSTR            S0, [R4,#0x20]
446486:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
44648A:  VLDR            S0, [R7,#var_3C]
44648E:  MOVS            R2, #1
446490:  LDR.W           R0, [R8,#0x14]
446494:  MOV             R3, R6
446496:  VCVT.F32.S32    S0, S0
44649A:  LDRB            R0, [R0,#2]
44649C:  NEGS            R0, R0
44649E:  VMOV            S2, R0
4464A2:  VADD.F32        S0, S0, S16
4464A6:  VCVT.F32.S32    S2, S2
4464AA:  VADD.F32        S0, S18, S0
4464AE:  VMUL.F32        S2, S2, S16
4464B2:  VADD.F32        S0, S0, S2
4464B6:  VLDR            S2, [R7,#var_44]
4464BA:  VCVT.F32.S32    S2, S2
4464BE:  VADD.F32        S0, S0, S16
4464C2:  VSTR            S0, [R4,#0x24]
4464C6:  VADD.F32        S0, S2, S16
4464CA:  LDR.W           R0, [R8,#0x14]
4464CE:  LDRB            R0, [R0,#3]
4464D0:  NEGS            R0, R0
4464D2:  VADD.F32        S0, S18, S0
4464D6:  VMOV            S2, R0
4464DA:  VCVT.F32.S32    S2, S2
4464DE:  VMUL.F32        S2, S2, S16
4464E2:  VADD.F32        S0, S0, S2
4464E6:  VADD.F32        S0, S0, S16
4464EA:  VSTR            S0, [R4,#0x28]
4464EE:  LDR.W           R0, [R8,#0x14]
4464F2:  LDRB            R0, [R0,#4]
4464F4:  NEGS            R0, R0
4464F6:  VMOV            S0, R0
4464FA:  ADD.W           R0, R4, #0x24 ; '$'
4464FE:  VCVT.F32.S32    S0, S0
446502:  MOV             R1, R0
446504:  VMUL.F32        S0, S0, S16
446508:  VSTR            S0, [R4,#0x2C]
44650C:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
446510:  MOVS            R0, #1
446512:  ADD.W           SP, SP, #0xE30
446516:  ADD             SP, SP, #8
446518:  VPOP            {D8-D10}
44651C:  POP.W           {R8-R10}
446520:  POP             {R4-R7,PC}
