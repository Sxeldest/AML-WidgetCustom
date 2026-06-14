; =========================================================
; Game Engine Function: _ZN8CCarCtrl14DragCarToPointEP8CVehicleP7CVector
; Address            : 0x2ED338 - 0x2ED782
; =========================================================

2ED338:  PUSH            {R4-R7,LR}
2ED33A:  ADD             R7, SP, #0xC
2ED33C:  PUSH.W          {R8-R10}
2ED340:  VPUSH           {D8-D15}
2ED344:  SUB             SP, SP, #0xD8
2ED346:  MOV             R4, R0
2ED348:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2ED358)
2ED34C:  LDRSH.W         R2, [R4,#0x26]
2ED350:  VMOV.F32        S16, #0.5
2ED354:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2ED356:  LDRSB.W         R8, [R4,#0x3E5]
2ED35A:  VMOV.F32        S30, #1.5
2ED35E:  ADD.W           R9, R4, #4
2ED362:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
2ED364:  ADD             R3, SP, #0x130+var_D8
2ED366:  LDR.W           R0, [R0,R2,LSL#2]
2ED36A:  LDR             R0, [R0,#0x2C]
2ED36C:  VLDR            S0, [R0,#4]
2ED370:  VLDR            S2, [R0,#0x10]
2ED374:  LDR             R0, [R4,#0x14]
2ED376:  VSUB.F32        S0, S2, S0
2ED37A:  VLDR            S2, =0.95
2ED37E:  CMP             R0, #0
2ED380:  VLDR            D16, [R0,#0x10]
2ED384:  LDR             R2, [R0,#0x18]
2ED386:  STR             R2, [SP,#0x130+var_98]
2ED388:  MOV             R2, R9
2ED38A:  VSTR            D16, [SP,#0x130+var_A0]
2ED38E:  VLDR            S28, [R0,#0x18]
2ED392:  VMUL.F32        S22, S0, S2
2ED396:  VLDR            S0, [R0,#0x10]
2ED39A:  VLDR            S2, [R0,#0x14]
2ED39E:  IT NE
2ED3A0:  ADDNE.W         R2, R0, #0x30 ; '0'
2ED3A4:  VLDR            S8, [R2]
2ED3A8:  MOVS            R0, #0
2ED3AA:  VLDR            S10, [R2,#4]
2ED3AE:  ADD             R2, SP, #0x130+var_104
2ED3B0:  LDRD.W          R6, R5, [R1]
2ED3B4:  ADD             R1, SP, #0x130+var_D4
2ED3B6:  STR             R0, [SP,#0x130+var_B8]
2ED3B8:  STR             R0, [SP,#0x130+var_A8]
2ED3BA:  VMUL.F32        S4, S22, S0
2ED3BE:  VMUL.F32        S6, S22, S2
2ED3C2:  VMUL.F32        S0, S0, S30
2ED3C6:  VMUL.F32        S2, S2, S30
2ED3CA:  VMUL.F32        S4, S4, S16
2ED3CE:  VMUL.F32        S6, S6, S16
2ED3D2:  VSUB.F32        S24, S8, S4
2ED3D6:  VSUB.F32        S26, S10, S6
2ED3DA:  VADD.F32        S0, S0, S24
2ED3DE:  VADD.F32        S2, S2, S26
2ED3E2:  VSTR            S26, [SP,#0x130+var_BC]
2ED3E6:  VSTR            S24, [SP,#0x130+var_C0]
2ED3EA:  VSTR            S0, [SP,#0x130+var_B0]
2ED3EE:  VSTR            S2, [SP,#0x130+var_AC]
2ED3F2:  STRD.W          R6, R5, [SP,#0x130+var_D4]
2ED3F6:  STR             R0, [SP,#0x130+var_CC]
2ED3F8:  MOV.W           R0, #0x3F800000
2ED3FC:  STR             R0, [SP,#0x130+var_D8]
2ED3FE:  ADD             R0, SP, #0x130+var_C0
2ED400:  VSTR            S22, [SP,#0x130+var_C8]
2ED404:  BLX             j__ZN10CCollision17ProcessLineSphereERK8CColLineRK10CColSphereR9CColPointRf; CCollision::ProcessLineSphere(CColLine const&,CColSphere const&,CColPoint &,float &)
2ED408:  VLDR            S0, =100.0
2ED40C:  VMOV.F32        S19, #3.0
2ED410:  CMP.W           R8, #0x10
2ED414:  VMOV            S20, R5
2ED418:  VMOV            S18, R6
2ED41C:  IT GT
2ED41E:  VMOVGT.F32      S19, S0
2ED422:  CMP             R0, #1
2ED424:  BNE             loc_2ED430
2ED426:  VLDR            S24, [SP,#0x130+var_104]
2ED42A:  VLDR            S26, [SP,#0x130+var_100]
2ED42E:  B               loc_2ED464
2ED430:  VSUB.F32        S0, S20, S26
2ED434:  VSUB.F32        S2, S18, S24
2ED438:  VSUB.F32        S4, S24, S18
2ED43C:  VMUL.F32        S0, S0, S0
2ED440:  VMUL.F32        S2, S2, S2
2ED444:  VADD.F32        S0, S2, S0
2ED448:  VSUB.F32        S2, S26, S20
2ED44C:  VSQRT.F32       S0, S0
2ED450:  VDIV.F32        S0, S22, S0
2ED454:  VMUL.F32        S2, S2, S0
2ED458:  VMUL.F32        S0, S4, S0
2ED45C:  VADD.F32        S26, S2, S20
2ED460:  VADD.F32        S24, S0, S18
2ED464:  VMUL.F32        S0, S22, S28
2ED468:  LDR             R0, [R4,#0x14]
2ED46A:  MOV             R1, R9
2ED46C:  ADD             R2, SP, #0x130+var_84
2ED46E:  CMP             R0, #0
2ED470:  IT NE
2ED472:  ADDNE.W         R1, R0, #0x30 ; '0'
2ED476:  VMUL.F32        S21, S0, S16
2ED47A:  VLDR            S0, [R1,#8]
2ED47E:  STRD.W          R6, R5, [SP,#0x130+var_94]
2ED482:  ADDW            R6, R4, #0x52C
2ED486:  MOV             R3, R6
2ED488:  VADD.F32        S23, S21, S0
2ED48C:  VSUB.F32        S0, S23, S19
2ED490:  VADD.F32        S28, S19, S23
2ED494:  VMOV            R8, S0
2ED498:  VSTR            S28, [SP,#0x130+var_8C]
2ED49C:  LDRB.W          R0, [R4,#0x3E5]
2ED4A0:  ADDS            R0, #1
2ED4A2:  STRB.W          R0, [R4,#0x3E5]
2ED4A6:  ADD             R0, SP, #0x130+var_94
2ED4A8:  MOV             R1, R8
2ED4AA:  BLX             j__ZN10CCollision34IsStoredPolyStillValidVerticalLineERK7CVectorfR9CColPointP15CStoredCollPoly; CCollision::IsStoredPolyStillValidVerticalLine(CVector const&,float,CColPoint &,CStoredCollPoly *)
2ED4AE:  CMP             R0, #0
2ED4B0:  BEQ             loc_2ED4B8
2ED4B2:  VLDR            S28, [SP,#0x130+var_7C]
2ED4B6:  B               loc_2ED566
2ED4B8:  VMOV.F32        S0, #-2.0
2ED4BC:  ADD             R0, SP, #0x130+var_94; CVector *
2ED4BE:  VADD.F32        S2, S23, S30
2ED4C2:  ADD             R2, SP, #0x130+var_84; int
2ED4C4:  ADD             R3, SP, #0x130+var_88; int
2ED4C6:  MOVS            R5, #0
2ED4C8:  MOV.W           R10, #1
2ED4CC:  VADD.F32        S0, S23, S0
2ED4D0:  VSTR            S2, [SP,#0x130+var_8C]
2ED4D4:  STRD.W          R10, R5, [SP,#0x130+var_130]; int
2ED4D8:  STRD.W          R5, R5, [SP,#0x130+var_128]; int
2ED4DC:  STRD.W          R5, R5, [SP,#0x130+var_120]; int
2ED4E0:  STR             R6, [SP,#0x130+var_118]; int
2ED4E2:  VMOV            R1, S0; int
2ED4E6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2ED4EA:  CMP             R0, #1
2ED4EC:  BNE             loc_2ED510
2ED4EE:  LDR             R0, [SP,#0x130+var_88]
2ED4F0:  VLDR            S28, [SP,#0x130+var_7C]
2ED4F4:  STR.W           R0, [R4,#0x490]
2ED4F8:  LDR             R1, [R0,#0x1C]
2ED4FA:  LDRD.W          R2, R3, [R4,#0x1C]
2ED4FE:  LSRS            R1, R1, #0x1E
2ED500:  BFI.W           R2, R1, #0x1E, #1
2ED504:  STRD.W          R2, R3, [R4,#0x1C]
2ED508:  LDR             R0, [R0,#0x1C]
2ED50A:  STRB.W          R5, [R4,#0x3E5]
2ED50E:  B               loc_2ED554
2ED510:  ADD             R0, SP, #0x130+var_94; CVector *
2ED512:  ADD             R2, SP, #0x130+var_84; int
2ED514:  ADD             R3, SP, #0x130+var_88; int
2ED516:  MOV             R1, R8; int
2ED518:  VSTR            S28, [SP,#0x130+var_8C]
2ED51C:  STRD.W          R10, R5, [SP,#0x130+var_130]; int
2ED520:  STRD.W          R5, R5, [SP,#0x130+var_128]; int
2ED524:  STRD.W          R5, R5, [SP,#0x130+var_120]; int
2ED528:  STR             R6, [SP,#0x130+var_118]; int
2ED52A:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2ED52E:  CMP             R0, #1
2ED530:  BNE             loc_2ED55E
2ED532:  LDR             R0, [SP,#0x130+var_88]
2ED534:  VLDR            S28, [SP,#0x130+var_7C]
2ED538:  STR.W           R0, [R4,#0x490]
2ED53C:  LDR             R1, [R0,#0x1C]
2ED53E:  LDRD.W          R2, R3, [R4,#0x1C]
2ED542:  LSRS            R1, R1, #0x1E
2ED544:  BFI.W           R2, R1, #0x1E, #1
2ED548:  STRD.W          R2, R3, [R4,#0x1C]
2ED54C:  MOVS            R1, #0
2ED54E:  LDR             R0, [R0,#0x1C]
2ED550:  STRB.W          R1, [R4,#0x3E5]
2ED554:  BFI.W           R0, R2, #0, #0x1F
2ED558:  STR             R0, [R4,#0x1C]
2ED55A:  STR             R3, [R4,#0x20]
2ED55C:  B               loc_2ED566
2ED55E:  ADDW            R0, R4, #0x4F4
2ED562:  VLDR            S28, [R0]
2ED566:  LDR             R0, [R4,#0x14]
2ED568:  ADDW            R1, R4, #0x4F4
2ED56C:  ADD.W           R6, R4, #0x558
2ED570:  ADD             R2, SP, #0x130+var_84
2ED572:  CMP             R0, #0
2ED574:  VSTR            S28, [R1]
2ED578:  IT NE
2ED57A:  ADDNE.W         R9, R0, #0x30 ; '0'
2ED57E:  ADD             R0, SP, #0x130+var_94
2ED580:  VLDR            S0, [R9,#8]
2ED584:  MOV             R3, R6
2ED586:  VSTR            S26, [SP,#0x130+var_90]
2ED58A:  VSUB.F32        S21, S0, S21
2ED58E:  VSTR            S24, [SP,#0x130+var_94]
2ED592:  VSUB.F32        S0, S21, S19
2ED596:  VADD.F32        S19, S19, S21
2ED59A:  VMOV            R8, S0
2ED59E:  VSTR            S19, [SP,#0x130+var_8C]
2ED5A2:  MOV             R1, R8
2ED5A4:  BLX             j__ZN10CCollision34IsStoredPolyStillValidVerticalLineERK7CVectorfR9CColPointP15CStoredCollPoly; CCollision::IsStoredPolyStillValidVerticalLine(CVector const&,float,CColPoint &,CStoredCollPoly *)
2ED5A8:  CMP             R0, #0
2ED5AA:  BEQ             loc_2ED5B2
2ED5AC:  VLDR            S30, [SP,#0x130+var_7C]
2ED5B0:  B               loc_2ED660
2ED5B2:  VMOV.F32        S0, #-2.0
2ED5B6:  ADD             R0, SP, #0x130+var_94; CVector *
2ED5B8:  VADD.F32        S2, S21, S30
2ED5BC:  ADD             R2, SP, #0x130+var_84; int
2ED5BE:  ADD             R3, SP, #0x130+var_88; int
2ED5C0:  MOVS            R5, #0
2ED5C2:  MOV.W           R9, #1
2ED5C6:  VADD.F32        S0, S21, S0
2ED5CA:  VSTR            S2, [SP,#0x130+var_8C]
2ED5CE:  STRD.W          R9, R5, [SP,#0x130+var_130]; int
2ED5D2:  STRD.W          R5, R5, [SP,#0x130+var_128]; int
2ED5D6:  STRD.W          R5, R5, [SP,#0x130+var_120]; int
2ED5DA:  STR             R6, [SP,#0x130+var_118]; int
2ED5DC:  VMOV            R1, S0; int
2ED5E0:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2ED5E4:  CMP             R0, #1
2ED5E6:  BNE             loc_2ED60A
2ED5E8:  LDR             R0, [SP,#0x130+var_88]
2ED5EA:  VLDR            S30, [SP,#0x130+var_7C]
2ED5EE:  STR.W           R0, [R4,#0x490]
2ED5F2:  LDR             R1, [R0,#0x1C]
2ED5F4:  LDRD.W          R2, R3, [R4,#0x1C]
2ED5F8:  LSRS            R1, R1, #0x1E
2ED5FA:  BFI.W           R2, R1, #0x1E, #1
2ED5FE:  STRD.W          R2, R3, [R4,#0x1C]
2ED602:  LDR             R0, [R0,#0x1C]
2ED604:  STRB.W          R5, [R4,#0x3E5]
2ED608:  B               loc_2ED64E
2ED60A:  ADD             R0, SP, #0x130+var_94; CVector *
2ED60C:  ADD             R2, SP, #0x130+var_84; int
2ED60E:  ADD             R3, SP, #0x130+var_88; int
2ED610:  MOV             R1, R8; int
2ED612:  VSTR            S19, [SP,#0x130+var_8C]
2ED616:  STRD.W          R9, R5, [SP,#0x130+var_130]; int
2ED61A:  STRD.W          R5, R5, [SP,#0x130+var_128]; int
2ED61E:  STRD.W          R5, R5, [SP,#0x130+var_120]; int
2ED622:  STR             R6, [SP,#0x130+var_118]; int
2ED624:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2ED628:  CMP             R0, #1
2ED62A:  BNE             loc_2ED658
2ED62C:  LDR             R0, [SP,#0x130+var_88]
2ED62E:  VLDR            S30, [SP,#0x130+var_7C]
2ED632:  STR.W           R0, [R4,#0x490]
2ED636:  LDR             R1, [R0,#0x1C]
2ED638:  LDRD.W          R2, R3, [R4,#0x1C]
2ED63C:  LSRS            R1, R1, #0x1E
2ED63E:  BFI.W           R2, R1, #0x1E, #1
2ED642:  STRD.W          R2, R3, [R4,#0x1C]
2ED646:  MOVS            R1, #0
2ED648:  LDR             R0, [R0,#0x1C]
2ED64A:  STRB.W          R1, [R4,#0x3E5]
2ED64E:  BFI.W           R0, R2, #0, #0x1F
2ED652:  STR             R0, [R4,#0x1C]
2ED654:  STR             R3, [R4,#0x20]
2ED656:  B               loc_2ED660
2ED658:  ADD.W           R0, R4, #0x4F8
2ED65C:  VLDR            S30, [R0]
2ED660:  VSUB.F32        S0, S28, S30
2ED664:  ADD.W           R1, R4, #0x4F8
2ED668:  VSTR            S30, [R1]
2ED66C:  VDIV.F32        S0, S0, S22
2ED670:  VMOV            R0, S0; x
2ED674:  BLX             atanf
2ED678:  VSUB.F32        S0, S18, S24
2ED67C:  MOV             R5, R0
2ED67E:  VSUB.F32        S2, S20, S26
2ED682:  LDR             R0, [R4,#0x14]
2ED684:  MOVS            R1, #0
2ED686:  VNEG.F32        S0, S0
2ED68A:  VDIV.F32        S2, S2, S22
2ED68E:  VDIV.F32        S0, S0, S22
2ED692:  VSTR            S2, [R0]
2ED696:  LDR             R0, [R4,#0x14]
2ED698:  VSTR            S0, [R0,#4]
2ED69C:  LDR             R0, [R4,#0x14]
2ED69E:  STR             R1, [R0,#8]
2ED6A0:  MOV             R0, R5; x
2ED6A2:  BLX             cosf
2ED6A6:  LDR             R1, [R4,#0x14]
2ED6A8:  VMOV            S0, R0
2ED6AC:  VLDR            S2, [R1,#4]
2ED6B0:  VNMUL.F32       S2, S0, S2
2ED6B4:  VSTR            S2, [R1,#0x10]
2ED6B8:  LDR             R0, [R4,#0x14]
2ED6BA:  VLDR            S2, [R0]
2ED6BE:  VMUL.F32        S0, S0, S2
2ED6C2:  VSTR            S0, [R0,#0x14]
2ED6C6:  MOV             R0, R5; x
2ED6C8:  BLX             sinf
2ED6CC:  LDR             R1, [R4,#0x14]
2ED6CE:  STR             R0, [R1,#0x18]
2ED6D0:  ADD             R0, SP, #0x130+var_110; CVector *
2ED6D2:  LDR             R1, [R4,#0x14]; CVector *
2ED6D4:  ADD.W           R2, R1, #0x10
2ED6D8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2ED6DC:  ADD             R2, SP, #0x130+var_110
2ED6DE:  LDM             R2, {R0-R2}
2ED6E0:  LDR             R3, [R4,#0x14]
2ED6E2:  STR             R0, [R3,#0x20]
2ED6E4:  LDR             R0, [R4,#0x14]
2ED6E6:  STR             R1, [R0,#0x24]
2ED6E8:  LDR             R0, [R4,#0x14]
2ED6EA:  STR             R2, [R0,#0x28]
2ED6EC:  LDR             R0, [R4]
2ED6EE:  LDR.W           R1, [R0,#0xD8]
2ED6F2:  MOV             R0, R4
2ED6F4:  BLX             R1
2ED6F6:  MOV             R5, R0
2ED6F8:  MOV             R0, R4; this
2ED6FA:  BLX             j__ZN8CVehicle29UpdateLightingFromStoredPolysEv; CVehicle::UpdateLightingFromStoredPolys(void)
2ED6FE:  VADD.F32        S0, S28, S30
2ED702:  LDR             R0, [R4,#0x14]
2ED704:  VADD.F32        S2, S26, S20
2ED708:  VADD.F32        S4, S24, S18
2ED70C:  CMP             R0, #0
2ED70E:  VMOV            S6, R5
2ED712:  VMUL.F32        S0, S0, S16
2ED716:  VMUL.F32        S2, S2, S16
2ED71A:  VMUL.F32        S4, S4, S16
2ED71E:  VADD.F32        S0, S0, S6
2ED722:  BEQ             loc_2ED738
2ED724:  VSTR            S4, [R0,#0x30]
2ED728:  LDR             R0, [R4,#0x14]
2ED72A:  VSTR            S2, [R0,#0x34]
2ED72E:  LDR             R0, [R4,#0x14]
2ED730:  ADDS            R0, #0x38 ; '8'
2ED732:  B               loc_2ED744
2ED734:  DCFS 0.95
2ED738:  ADD.W           R0, R4, #0xC
2ED73C:  VSTR            S4, [R4,#4]
2ED740:  VSTR            S2, [R4,#8]
2ED744:  VSTR            S0, [R0]
2ED748:  ADD             R2, SP, #0x130+var_A0
2ED74A:  LDR             R0, [R4,#0x14]
2ED74C:  ADD.W           R1, R0, #0x10; CVector *
2ED750:  ADD             R0, SP, #0x130+var_110; CVector *
2ED752:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2ED756:  VMOV.F32        S0, #-10.0
2ED75A:  VLDR            S2, [SP,#0x130+var_108]
2ED75E:  ADD.W           R0, R4, #0x498
2ED762:  VMUL.F32        S0, S2, S0
2ED766:  VMOV.F32        S2, #-0.5
2ED76A:  VMIN.F32        D16, D0, D8
2ED76E:  VMAX.F32        D0, D16, D1
2ED772:  VSTR            S0, [R0]
2ED776:  ADD             SP, SP, #0xD8
2ED778:  VPOP            {D8-D15}
2ED77C:  POP.W           {R8-R10}
2ED780:  POP             {R4-R7,PC}
