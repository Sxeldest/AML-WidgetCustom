; =========================================================
; Game Engine Function: _ZN11CPlayerInfo24FindClosestCarSectorListER8CPtrListP4CPedffffPfPP8CVehicle
; Address            : 0x40B2D4 - 0x40B522
; =========================================================

40B2D4:  PUSH            {R4-R7,LR}
40B2D6:  ADD             R7, SP, #0xC
40B2D8:  PUSH.W          {R8-R11}
40B2DC:  SUB             SP, SP, #4
40B2DE:  VPUSH           {D8-D15}
40B2E2:  SUB             SP, SP, #0x28; int *
40B2E4:  LDR             R5, [R1]
40B2E6:  MOV             R4, R2
40B2E8:  CMP             R5, #0
40B2EA:  BEQ.W           loc_40B514
40B2EE:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x40B304)
40B2F0:  VMOV.F32        S18, #1.0
40B2F4:  VMOV.F32        S22, #10.0
40B2F8:  ADD.W           R11, R4, #4
40B2FC:  VMOV.F32        S24, #2.0
40B300:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
40B302:  VMOV.F32        S26, #-4.0
40B306:  VLDR            S16, =0.3
40B30A:  LDR.W           R8, [R0]; CWorld::ms_nCurrentScanCode ...
40B30E:  MOV             R9, #0xFFFFFFFB
40B312:  VLDR            S20, =0.0
40B316:  B               loc_40B4F8
40B318:  LDRB.W          R1, [R6,#0x3A]
40B31C:  AND.W           R2, R1, #7
40B320:  CMP             R2, #2
40B322:  BNE.W           loc_40B510
40B326:  STRH            R0, [R6,#0x30]
40B328:  ADD.W           R0, R9, R1,LSR#3
40B32C:  CMP             R0, #2
40B32E:  BCC.W           loc_40B510
40B332:  LDR             R0, [R6,#0x14]
40B334:  CBNZ            R0, loc_40B346
40B336:  MOV             R0, R6; this
40B338:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
40B33C:  LDR             R1, [R6,#0x14]; CMatrix *
40B33E:  ADDS            R0, R6, #4; this
40B340:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40B344:  LDR             R0, [R6,#0x14]
40B346:  VLDR            S0, [R0,#0x28]
40B34A:  VCMPE.F32       S0, S16
40B34E:  VMRS            APSR_nzcv, FPSCR
40B352:  BGT             loc_40B36A
40B354:  LDRB.W          R0, [R6,#0x3A]
40B358:  AND.W           R0, R0, #7
40B35C:  CMP             R0, #2
40B35E:  ITT EQ
40B360:  LDREQ.W         R0, [R6,#0x5A0]
40B364:  CMPEQ           R0, #9
40B366:  BNE.W           loc_40B510
40B36A:  ADD             R0, SP, #0x88+var_70; this
40B36C:  MOV             R1, R6
40B36E:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
40B372:  LDR             R0, [R6,#0x14]
40B374:  ADD.W           R10, R6, #4
40B378:  CMP             R0, #0
40B37A:  MOV             R1, R10
40B37C:  IT NE
40B37E:  ADDNE.W         R1, R0, #0x30 ; '0'
40B382:  VLDR            D16, [R1]
40B386:  LDR             R0, [R1,#8]
40B388:  STR             R0, [SP,#0x88+var_68]
40B38A:  VSTR            D16, [SP,#0x88+var_70]
40B38E:  LDR             R0, [R6]
40B390:  VLDR            S28, [SP,#0x88+var_68]
40B394:  LDR.W           R1, [R0,#0xD8]
40B398:  MOV             R0, R6
40B39A:  BLX             R1
40B39C:  VMOV            S0, R0
40B3A0:  MOV             R1, R11
40B3A2:  VSUB.F32        S0, S28, S0
40B3A6:  VADD.F32        S0, S0, S18
40B3AA:  VSTR            S0, [SP,#0x88+var_68]
40B3AE:  LDR             R0, [R4,#0x14]
40B3B0:  VLDR            S2, [SP,#0x88+var_70]
40B3B4:  CMP             R0, #0
40B3B6:  VLDR            S4, [SP,#0x88+var_70+4]
40B3BA:  IT NE
40B3BC:  ADDNE.W         R1, R0, #0x30 ; '0'
40B3C0:  LDRH            R0, [R6,#0x26]
40B3C2:  VLDR            S6, [R1]
40B3C6:  VLDR            S8, [R1,#4]
40B3CA:  VSUB.F32        S2, S6, S2
40B3CE:  VLDR            S10, [R1,#8]
40B3D2:  VSUB.F32        S4, S8, S4
40B3D6:  MOVW            R1, #0x241
40B3DA:  VSUB.F32        S0, S10, S0
40B3DE:  CMP             R0, R1
40B3E0:  VMUL.F32        S2, S2, S20
40B3E4:  VMUL.F32        S4, S4, S20
40B3E8:  VADD.F32        S2, S2, S4
40B3EC:  VADD.F32        S28, S0, S2
40B3F0:  BNE             loc_40B42C
40B3F2:  MOVS            R0, #0
40B3F4:  ADD             R2, SP, #0x88+var_80; CVehicle *
40B3F6:  ADD             R3, SP, #0x88+var_74; CVector *
40B3F8:  STR             R0, [SP,#0x88+var_74]
40B3FA:  MOV             R0, R4; this
40B3FC:  MOV             R1, R6; CPed *
40B3FE:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
40B402:  CMP             R0, #1
40B404:  BNE             loc_40B42C
40B406:  LDR             R0, [R4,#0x14]
40B408:  MOV             R1, R11
40B40A:  VLDR            S0, [SP,#0x88+var_78]
40B40E:  CMP             R0, #0
40B410:  IT NE
40B412:  ADDNE.W         R1, R0, #0x30 ; '0'
40B416:  VLDR            S2, [R1,#8]
40B41A:  VSUB.F32        S0, S2, S0
40B41E:  VABS.F32        S28, S0
40B422:  VCMPE.F32       S28, S18
40B426:  VMRS            APSR_nzcv, FPSCR
40B42A:  BLT             loc_40B43A
40B42C:  VABS.F32        S0, S28
40B430:  VCMPE.F32       S0, S24
40B434:  VMRS            APSR_nzcv, FPSCR
40B438:  BGE             loc_40B4BA
40B43A:  LDRB.W          R0, [R6,#0x432]
40B43E:  LSLS            R0, R0, #0x1A
40B440:  BPL             loc_40B510
40B442:  LDR             R0, [R6,#0x14]
40B444:  MOV             R1, R11
40B446:  LDR             R2, [R4,#0x14]
40B448:  CMP             R0, #0
40B44A:  IT NE
40B44C:  ADDNE.W         R10, R0, #0x30 ; '0'
40B450:  CMP             R2, #0
40B452:  VLDR            D16, [R10]
40B456:  IT NE
40B458:  ADDNE.W         R1, R2, #0x30 ; '0'; CPed *
40B45C:  VLDR            D17, [R1]
40B460:  VSUB.F32        D16, D17, D16
40B464:  VMUL.F32        D0, D16, D16
40B468:  VADD.F32        S0, S0, S1
40B46C:  VADD.F32        S0, S0, S20
40B470:  VSQRT.F32       S28, S0
40B474:  VCMPE.F32       S28, S22
40B478:  VMRS            APSR_nzcv, FPSCR
40B47C:  BLE             loc_40B48C
40B47E:  MOV             R0, R4; this
40B480:  MOV             R2, R6; CVector *
40B482:  BLX             j__ZN20CPedGeometryAnalyser21LiesInsideBoundingBoxERK4CPedRK7CVectorR7CEntity; CPedGeometryAnalyser::LiesInsideBoundingBox(CPed const&,CVector const&,CEntity &)
40B486:  VMOV.F32        S30, S22
40B48A:  CBNZ            R0, loc_40B49A
40B48C:  VMOV.F32        S30, S28
40B490:  VCMPE.F32       S28, S22
40B494:  VMRS            APSR_nzcv, FPSCR
40B498:  BGT             loc_40B510
40B49A:  MOV             R0, R6; this
40B49C:  BLX             j__ZN7CCranes31IsThisCarBeingCarriedByAnyCraneEP8CVehicle; CCranes::IsThisCarBeingCarriedByAnyCrane(CVehicle *)
40B4A0:  CBNZ            R0, loc_40B510
40B4A2:  VMOV            R3, S30; float
40B4A6:  LDR             R0, [R7,#arg_C]
40B4A8:  STR             R0, [SP,#0x88+var_88]; float *
40B4AA:  MOV             R1, R6; CEntity *
40B4AC:  LDR             R0, [R7,#arg_10]; this
40B4AE:  MOV             R2, R4; CPed *
40B4B0:  STR             R0, [SP,#0x88+var_84]; CVehicle **
40B4B2:  BLX             j__ZN11CPlayerInfo19EvaluateCarPositionEP7CEntityP4CPedfPfPP8CVehicle; CPlayerInfo::EvaluateCarPosition(CEntity *,CPed *,float,float *,CVehicle **)
40B4B6:  CBNZ            R5, loc_40B4F8
40B4B8:  B               loc_40B514
40B4BA:  LDR.W           R0, [R6,#0x5A0]
40B4BE:  CMP             R0, #5
40B4C0:  BNE             loc_40B510
40B4C2:  LDR             R0, [R4,#0x14]
40B4C4:  MOV             R1, R11
40B4C6:  CMP             R0, #0
40B4C8:  IT NE
40B4CA:  ADDNE.W         R1, R0, #0x30 ; '0'
40B4CE:  VLDR            S0, [SP,#0x88+var_68]
40B4D2:  VLDR            S2, [R1,#8]
40B4D6:  VCMPE.F32       S0, S2
40B4DA:  VMRS            APSR_nzcv, FPSCR
40B4DE:  BGE             loc_40B4EE
40B4E0:  VADD.F32        S2, S2, S26
40B4E4:  VCMPE.F32       S0, S2
40B4E8:  VMRS            APSR_nzcv, FPSCR
40B4EC:  BGT             loc_40B43A
40B4EE:  LDR.W           R0, [R4,#0x588]
40B4F2:  CMP             R0, R6
40B4F4:  BNE             loc_40B510
40B4F6:  B               loc_40B43A
40B4F8:  LDRD.W          R6, R5, [R5]
40B4FC:  LDRH.W          R0, [R8]; CWorld::ms_nCurrentScanCode
40B500:  LDRH            R1, [R6,#0x30]
40B502:  CMP             R1, R0
40B504:  ITT NE
40B506:  LDRBNE          R1, [R6,#0x1C]
40B508:  MOVSNE.W        R1, R1,LSL#31
40B50C:  BNE.W           loc_40B318
40B510:  CMP             R5, #0
40B512:  BNE             loc_40B4F8
40B514:  ADD             SP, SP, #0x28 ; '('
40B516:  VPOP            {D8-D15}
40B51A:  ADD             SP, SP, #4
40B51C:  POP.W           {R8-R11}
40B520:  POP             {R4-R7,PC}
