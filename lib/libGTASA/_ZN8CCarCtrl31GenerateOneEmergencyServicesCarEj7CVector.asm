; =========================================================
; Game Engine Function: _ZN8CCarCtrl31GenerateOneEmergencyServicesCarEj7CVector
; Address            : 0x2FB258 - 0x2FB602
; =========================================================

2FB258:  PUSH            {R4-R7,LR}
2FB25A:  ADD             R7, SP, #0xC
2FB25C:  PUSH.W          {R8-R11}
2FB260:  SUB             SP, SP, #4
2FB262:  VPUSH           {D8-D9}
2FB266:  SUB             SP, SP, #0x90
2FB268:  STRD.W          R2, R1, [SP,#0xC0+var_94]
2FB26C:  MOVW            R1, #0xFFFF
2FB270:  STR             R0, [SP,#0xC0+var_8C]
2FB272:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2FB27C)
2FB274:  STRH.W          R1, [SP,#0xC0+var_74]
2FB278:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2FB27A:  STRH.W          R1, [SP,#0xC0+var_78]
2FB27E:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2FB280:  LDR             R0, [R0]; int
2FB282:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
2FB286:  LDR             R1, [R0]
2FB288:  MOVW            R10, #0
2FB28C:  STR             R1, [SP,#0xC0+var_80]
2FB28E:  MOVW            R8, #0xFDF4
2FB292:  LDR             R1, [R0,#4]
2FB294:  MOV.W           R9, #0
2FB298:  STR             R1, [SP,#0xC0+var_84]
2FB29A:  MOVT            R10, #0x4320
2FB29E:  LDR             R6, [R0,#8]
2FB2A0:  MOVS            R4, #1
2FB2A2:  LDR             R0, =(ThePaths_ptr - 0x2FB2B2)
2FB2A4:  MOVT            R8, #0x3F34
2FB2A8:  MOV.W           R11, #0
2FB2AC:  MOVS            R5, #0
2FB2AE:  ADD             R0, PC; ThePaths_ptr
2FB2B0:  LDR             R0, [R0]; ThePaths
2FB2B2:  STR             R0, [SP,#0xC0+var_88]
2FB2B4:  ADD             R0, SP, #0xC0+var_64
2FB2B6:  STRD.W          R0, R9, [SP,#0xC0+var_A0]; int
2FB2BA:  MOVS            R0, #0
2FB2BC:  ADD             R1, SP, #0xC0+var_BC
2FB2BE:  MOVT            R0, #0xBF80
2FB2C2:  STR.W           R9, [SP,#0xC0+var_98]; int
2FB2C6:  STR.W           R8, [SP,#0xC0+var_C0]; float
2FB2CA:  MOV             R2, R6; int
2FB2CC:  STM.W           R1, {R0,R4,R10}
2FB2D0:  ADD             R0, SP, #0xC0+var_70
2FB2D2:  MOV             R3, R8; int
2FB2D4:  STR.W           R10, [SP,#0xC0+var_B0]; float
2FB2D8:  STR             R0, [SP,#0xC0+var_AC]; int
2FB2DA:  ADD             R0, SP, #0xC0+var_74
2FB2DC:  STR             R0, [SP,#0xC0+var_A8]; int
2FB2DE:  ADD             R0, SP, #0xC0+var_78
2FB2E0:  STR             R0, [SP,#0xC0+var_A4]; bool
2FB2E2:  LDRD.W          R1, R0, [SP,#0xC0+var_84]; int
2FB2E6:  BLX             j__ZN8CCarCtrl25GenerateCarCreationCoors2E7CVectorfffbffPS0_P12CNodeAddressS3_Pfbb; CCarCtrl::GenerateCarCreationCoors2(CVector,float,float,float,bool,float,float,CVector*,CNodeAddress *,CNodeAddress *,float *,bool,bool)
2FB2EA:  CMP             R0, #1
2FB2EC:  BNE             loc_2FB348
2FB2EE:  LDR             R0, [SP,#0xC0+var_74]
2FB2F0:  LDR             R2, [SP,#0xC0+var_88]
2FB2F2:  UXTH            R1, R0
2FB2F4:  ADD.W           R1, R2, R1,LSL#2
2FB2F8:  LSRS            R2, R0, #0x10
2FB2FA:  LSLS            R2, R2, #3
2FB2FC:  SUB.W           R0, R2, R0,LSR#16
2FB300:  LDR.W           R1, [R1,#0x804]
2FB304:  ADD.W           R0, R1, R0,LSL#2
2FB308:  LDRH            R0, [R0,#0x18]
2FB30A:  LSLS            R0, R0, #0x18
2FB30C:  BMI             loc_2FB348
2FB30E:  MOVS            R0, #(stderr+2)
2FB310:  MOVS            R1, #0
2FB312:  STRD.W          R0, R9, [SP,#0xC0+var_C0]; __int16 *
2FB316:  MOVS            R0, #1
2FB318:  STR.W           R9, [SP,#0xC0+var_B8]; CEntity **
2FB31C:  SUB.W           R3, R7, #-var_7A; bool
2FB320:  STR             R0, [SP,#0xC0+var_B4]; int
2FB322:  MOVT            R1, #0x4120; CVector *
2FB326:  STRD.W          R0, R9, [SP,#0xC0+var_B0]; bool
2FB32A:  ADD             R0, SP, #0xC0+var_70; this
2FB32C:  MOVS            R2, #1; float
2FB32E:  MOVS            R4, #1
2FB330:  STR.W           R9, [SP,#0xC0+var_A8]; bool
2FB334:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
2FB338:  LDRH.W          R0, [R7,#var_7A]
2FB33C:  CMP             R0, #0
2FB33E:  MOV.W           R0, #0
2FB342:  IT EQ
2FB344:  MOVEQ           R0, #1
2FB346:  ORRS            R5, R0
2FB348:  SXTH.W          R0, R11
2FB34C:  CMP             R0, #3
2FB34E:  BGT             loc_2FB358
2FB350:  ADD.W           R11, R11, #1
2FB354:  LSLS            R1, R5, #0x1F; unsigned int
2FB356:  BEQ             loc_2FB2B4
2FB358:  CMP             R0, #3
2FB35A:  BGT             loc_2FB394
2FB35C:  MOVW            R0, #(elf_hash_bucket+0x8A0); this
2FB360:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
2FB364:  LDR.W           R11, [SP,#0xC0+var_8C]
2FB368:  MOVS            R2, #1; unsigned __int8
2FB36A:  MOVS            R3, #1; unsigned __int8
2FB36C:  MOV             R5, R0
2FB36E:  MOV             R1, R11; int
2FB370:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
2FB374:  LDRD.W          R2, R1, [SP,#0xC0+var_70]
2FB378:  LDR             R3, [R5,#0x14]
2FB37A:  LDR             R0, [SP,#0xC0+var_68]
2FB37C:  VMOV            S0, R2
2FB380:  CBZ             R3, loc_2FB398
2FB382:  STR             R2, [R3,#0x30]
2FB384:  VMOV            S2, R1
2FB388:  LDR             R2, [R5,#0x14]
2FB38A:  STR             R1, [R2,#0x34]
2FB38C:  LDR             R2, [R5,#0x14]
2FB38E:  ADD.W           R1, R2, #0x38 ; '8'
2FB392:  B               loc_2FB3A4
2FB394:  MOVS            R5, #0
2FB396:  B               loc_2FB5B2
2FB398:  STRD.W          R2, R1, [R5,#4]
2FB39C:  ADD.W           R1, R5, #0xC
2FB3A0:  VLDR            S2, [SP,#0xC0+var_6C]
2FB3A4:  LDRD.W          R3, R2, [SP,#0xC0+var_94]
2FB3A8:  VMOV            S6, R2
2FB3AC:  STR             R0, [R1]
2FB3AE:  VMOV            S4, R3
2FB3B2:  VSUB.F32        S2, S4, S2
2FB3B6:  VSUB.F32        S4, S6, S0
2FB3BA:  VMUL.F32        S0, S2, S2
2FB3BE:  VMUL.F32        S6, S4, S4
2FB3C2:  VADD.F32        S0, S6, S0
2FB3C6:  VSQRT.F32       S6, S0
2FB3CA:  VMOV.F32        S0, #1.0
2FB3CE:  VCMP.F32        S6, #0.0
2FB3D2:  VMRS            APSR_nzcv, FPSCR
2FB3D6:  BNE             loc_2FB3DE
2FB3D8:  VMOV.F32        S4, S0
2FB3DC:  B               loc_2FB3E6
2FB3DE:  VDIV.F32        S2, S2, S6
2FB3E2:  VDIV.F32        S4, S4, S6
2FB3E6:  LDR             R0, [R5,#0x14]
2FB3E8:  MOVS            R6, #0
2FB3EA:  LDR             R1, =(ThePaths_ptr - 0x2FB406)
2FB3EC:  MOV.W           R2, #0x3F800000
2FB3F0:  ADD.W           R10, SP, #0xC0+var_70
2FB3F4:  ADD.W           R9, SP, #0xC0+var_60
2FB3F8:  VSTR            S4, [R0,#0x10]
2FB3FC:  VNEG.F32        S4, S4
2FB400:  LDR             R0, [R5,#0x14]
2FB402:  ADD             R1, PC; ThePaths_ptr
2FB404:  ADD.W           R8, SP, #0xC0+var_34
2FB408:  LDR             R1, [R1]; ThePaths
2FB40A:  VSTR            S2, [R0,#0x14]
2FB40E:  LDR             R0, [R5,#0x14]
2FB410:  ADDW            R1, R1, #0x804
2FB414:  STR             R6, [R0,#0x18]
2FB416:  LDR             R0, [R5,#0x14]
2FB418:  VSTR            S2, [R0]
2FB41C:  VMOV.F32        S2, #0.125
2FB420:  LDR             R0, [R5,#0x14]
2FB422:  VSTR            S4, [R0,#4]
2FB426:  LDR             R0, [R5,#0x14]
2FB428:  STR             R6, [R0,#8]
2FB42A:  LDR             R0, [R5,#0x14]
2FB42C:  STR             R6, [R0,#0x20]
2FB42E:  LDR             R0, [R5,#0x14]
2FB430:  STR             R6, [R0,#0x24]
2FB432:  LDR             R0, [R5,#0x14]
2FB434:  STR             R2, [R0,#0x28]
2FB436:  LDRD.W          R0, R2, [SP,#0xC0+var_78]
2FB43A:  UXTH            R4, R2
2FB43C:  UXTH            R3, R0
2FB43E:  LDR.W           R3, [R1,R3,LSL#2]
2FB442:  LDR.W           R1, [R1,R4,LSL#2]
2FB446:  LSRS            R4, R0, #0x10
2FB448:  LSLS            R4, R4, #3
2FB44A:  SUB.W           R0, R4, R0,LSR#16
2FB44E:  MOVS            R4, #1
2FB450:  ADD.W           R0, R3, R0,LSL#2
2FB454:  LSRS            R3, R2, #0x10
2FB456:  LSLS            R3, R3, #3
2FB458:  SUB.W           R2, R3, R2,LSR#16
2FB45C:  LDRSH.W         R0, [R0,#0xC]
2FB460:  MOV             R3, R8; int
2FB462:  VMOV            S4, R0
2FB466:  ADD.W           R0, R1, R2,LSL#2
2FB46A:  MOVS            R1, #0
2FB46C:  MOV             R2, R9; int
2FB46E:  VCVT.F32.S32    S4, S4
2FB472:  LDRSH.W         R0, [R0,#0xC]
2FB476:  MOVT            R1, #0x447A; int
2FB47A:  VMOV            S6, R0
2FB47E:  MOV             R0, R10; CVector *
2FB480:  VCVT.F32.S32    S6, S6
2FB484:  VLDR            S8, [SP,#0xC0+var_64]
2FB488:  VMUL.F32        S4, S4, S2
2FB48C:  VSUB.F32        S0, S0, S8
2FB490:  VMUL.F32        S2, S6, S2
2FB494:  VMUL.F32        S4, S8, S4
2FB498:  VMUL.F32        S0, S2, S0
2FB49C:  VADD.F32        S0, S0, S4
2FB4A0:  VSTR            S0, [SP,#0xC0+var_68]
2FB4A4:  STRD.W          R4, R6, [SP,#0xC0+var_C0]; int
2FB4A8:  STRD.W          R6, R6, [SP,#0xC0+var_B8]; int
2FB4AC:  STRD.W          R4, R6, [SP,#0xC0+var_B0]; int
2FB4B0:  STR             R6, [SP,#0xC0+var_A8]; int
2FB4B2:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2FB4B6:  VLDR            S18, =1.0e9
2FB4BA:  MOVS            R1, #0
2FB4BC:  VLDR            S0, [SP,#0xC0+var_58]
2FB4C0:  CMP             R0, #0
2FB4C2:  VMOV.F32        S16, S18
2FB4C6:  MOVT            R1, #0xC47A; int
2FB4CA:  MOV             R0, R10; CVector *
2FB4CC:  MOV             R2, R9; int
2FB4CE:  MOV             R3, R8; int
2FB4D0:  IT NE
2FB4D2:  VMOVNE.F32      S16, S0
2FB4D6:  STRD.W          R4, R6, [SP,#0xC0+var_C0]; int
2FB4DA:  STRD.W          R6, R6, [SP,#0xC0+var_B8]; int
2FB4DE:  STRD.W          R4, R6, [SP,#0xC0+var_B0]; int
2FB4E2:  STR             R6, [SP,#0xC0+var_A8]; int
2FB4E4:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2FB4E8:  CMP             R0, #1
2FB4EA:  BNE             loc_2FB512
2FB4EC:  VLDR            S2, [SP,#0xC0+var_68]
2FB4F0:  VLDR            S0, [SP,#0xC0+var_58]
2FB4F4:  VSUB.F32        S4, S16, S2
2FB4F8:  VSUB.F32        S2, S0, S2
2FB4FC:  VABS.F32        S4, S4
2FB500:  VABS.F32        S2, S2
2FB504:  VCMPE.F32       S2, S4
2FB508:  VMRS            APSR_nzcv, FPSCR
2FB50C:  IT LT
2FB50E:  VMOVLT.F32      S16, S0
2FB512:  VCMP.F32        S16, S18
2FB516:  VMRS            APSR_nzcv, FPSCR
2FB51A:  BNE             loc_2FB528
2FB51C:  LDR             R0, [R5]
2FB51E:  LDR             R1, [R0,#4]
2FB520:  MOV             R0, R5
2FB522:  BLX             R1
2FB524:  MOVS            R5, #0
2FB526:  B               loc_2FB5B2
2FB528:  MOV             R0, R5; this
2FB52A:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
2FB52E:  VMOV            S0, R0
2FB532:  LDRD.W          R1, R0, [SP,#0xC0+var_70]
2FB536:  VADD.F32        S0, S16, S0
2FB53A:  VSTR            S0, [SP,#0xC0+var_68]
2FB53E:  LDR             R2, [R5,#0x14]
2FB540:  CBZ             R2, loc_2FB54E
2FB542:  STR             R1, [R2,#0x30]
2FB544:  LDR             R1, [R5,#0x14]
2FB546:  STR             R0, [R1,#0x34]
2FB548:  LDR             R0, [R5,#0x14]
2FB54A:  ADDS            R0, #0x38 ; '8'
2FB54C:  B               loc_2FB556
2FB54E:  STRD.W          R1, R0, [R5,#4]
2FB552:  ADD.W           R0, R5, #0xC
2FB556:  VSTR            S0, [R0]
2FB55A:  MOVS            R0, #0
2FB55C:  STRD.W          R0, R0, [R5,#0x48]
2FB560:  STR             R0, [R5,#0x50]
2FB562:  MOV             R0, R5; this
2FB564:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
2FB568:  MOV             R0, R5; this
2FB56A:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2FB56E:  MOVW            R0, #0x20A
2FB572:  CMP             R11, R0
2FB574:  BGT             loc_2FB58E
2FB576:  MOVW            R0, #0x197
2FB57A:  CMP             R11, R0
2FB57C:  BEQ             loc_2FB5C2
2FB57E:  CMP.W           R11, #0x1A0
2FB582:  BEQ             loc_2FB5E2
2FB584:  MOVW            R0, #0x1AB
2FB588:  CMP             R11, R0
2FB58A:  BEQ             loc_2FB59E
2FB58C:  B               loc_2FB5B2
2FB58E:  SUB.W           R0, R11, #0x254
2FB592:  CMP             R0, #4
2FB594:  BCC             loc_2FB59E
2FB596:  MOVW            R0, #0x20B
2FB59A:  CMP             R11, R0
2FB59C:  BNE             loc_2FB5B2
2FB59E:  MOV             R0, R5; this
2FB5A0:  MOVS            R1, #0; CVehicle *
2FB5A2:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
2FB5A6:  ADDW            R0, R5, #0x42C
2FB5AA:  LDR             R1, [R0,#4]
2FB5AC:  ORR.W           R1, R1, #0x8000
2FB5B0:  STR             R1, [R0,#4]
2FB5B2:  MOV             R0, R5
2FB5B4:  ADD             SP, SP, #0x90
2FB5B6:  VPOP            {D8-D9}
2FB5BA:  ADD             SP, SP, #4
2FB5BC:  POP.W           {R8-R11}
2FB5C0:  POP             {R4-R7,PC}
2FB5C2:  LDR             R0, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x2FB5CC)
2FB5C4:  LDR.W           R1, [R5,#0x42C]
2FB5C8:  ADD             R0, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
2FB5CA:  ORR.W           R1, R1, #4
2FB5CE:  STR.W           R1, [R5,#0x42C]
2FB5D2:  LDR             R0, [R0]; CCarCtrl::NumFireTrucksOnDuty ...
2FB5D4:  LDR             R1, [R0]; CCarCtrl::NumFireTrucksOnDuty
2FB5D6:  ADDS            R1, #1; CVehicle *
2FB5D8:  STR             R1, [R0]; CCarCtrl::NumFireTrucksOnDuty
2FB5DA:  MOV             R0, R5; this
2FB5DC:  BLX             j__ZN6CCarAI21AddFiretruckOccupantsEP8CVehicle; CCarAI::AddFiretruckOccupants(CVehicle *)
2FB5E0:  B               loc_2FB5A6
2FB5E2:  LDR             R0, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x2FB5EC)
2FB5E4:  LDR.W           R1, [R5,#0x42C]
2FB5E8:  ADD             R0, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
2FB5EA:  ORR.W           R1, R1, #2
2FB5EE:  STR.W           R1, [R5,#0x42C]
2FB5F2:  LDR             R0, [R0]; CCarCtrl::NumAmbulancesOnDuty ...
2FB5F4:  LDR             R1, [R0]; CCarCtrl::NumAmbulancesOnDuty
2FB5F6:  ADDS            R1, #1; CVehicle *
2FB5F8:  STR             R1, [R0]; CCarCtrl::NumAmbulancesOnDuty
2FB5FA:  MOV             R0, R5; this
2FB5FC:  BLX             j__ZN6CCarAI21AddAmbulanceOccupantsEP8CVehicle; CCarAI::AddAmbulanceOccupants(CVehicle *)
2FB600:  B               loc_2FB5A6
