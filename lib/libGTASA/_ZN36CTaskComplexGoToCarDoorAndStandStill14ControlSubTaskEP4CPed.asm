; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill14ControlSubTaskEP4CPed
; Address            : 0x5002C0 - 0x5006C0
; =========================================================

5002C0:  PUSH            {R4-R7,LR}
5002C2:  ADD             R7, SP, #0xC
5002C4:  PUSH.W          {R11}
5002C8:  SUB             SP, SP, #0x30
5002CA:  MOV             R5, R0
5002CC:  MOV             R4, R1
5002CE:  LDR             R0, [R5,#0xC]
5002D0:  CBZ             R0, loc_50031E
5002D2:  LDR.W           R1, [R4,#0x59C]
5002D6:  CMP             R1, #6
5002D8:  ITT NE
5002DA:  LDRNE.W         R0, [R0,#0x464]; this
5002DE:  CMPNE           R0, #0
5002E0:  BEQ             loc_5002FA
5002E2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5002E6:  CMP             R0, #1
5002E8:  BNE             loc_5002FA
5002EA:  LDR             R0, [R5,#0xC]
5002EC:  LDR.W           R0, [R0,#0x464]
5002F0:  LDR.W           R0, [R0,#0x44C]
5002F4:  CMP             R0, #0x3F ; '?'
5002F6:  BEQ.W           loc_500528
5002FA:  LDR             R0, [R5,#8]
5002FC:  LDR             R1, [R0]
5002FE:  LDR             R1, [R1,#0x14]
500300:  BLX             R1
500302:  MOV             R1, R0
500304:  MOVS            R0, #0
500306:  CMP.W           R1, #0x33C
50030A:  BGE             loc_500322
50030C:  SUB.W           R2, R1, #0xCA
500310:  CMP             R2, #2
500312:  BCC             loc_500400
500314:  MOVW            R2, #0x32A
500318:  CMP             R1, R2
50031A:  BEQ             loc_500400
50031C:  B               loc_50056E
50031E:  MOVS            R0, #0
500320:  B               loc_50056E
500322:  BEQ             loc_500400
500324:  CMP.W           R1, #0x384
500328:  BEQ             loc_50041C
50032A:  MOVW            R2, #0x389
50032E:  CMP             R1, R2
500330:  BNE.W           loc_50056E
500334:  LDR             R1, [R5,#0xC]; CVehicle *
500336:  ADD             R0, SP, #0x40+var_30; this
500338:  LDR             R2, [R5,#0x34]; int
50033A:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50033E:  VLDR            D16, [SP,#0x40+var_30]
500342:  LDR             R0, [SP,#0x40+var_28]
500344:  STR             R0, [SP,#0x40+var_18]
500346:  VSTR            D16, [SP,#0x40+var_20]
50034A:  LDR             R1, [R5,#0xC]; unsigned int
50034C:  LDR             R0, [R4,#0x14]
50034E:  LDR             R2, [R1,#0x14]
500350:  ADD.W           R3, R0, #0x30 ; '0'
500354:  CMP             R0, #0
500356:  IT EQ
500358:  ADDEQ           R3, R4, #4; CVector *
50035A:  ADD.W           R0, R2, #0x30 ; '0'
50035E:  CMP             R2, #0
500360:  VLDR            S0, [R3]
500364:  IT EQ
500366:  ADDEQ           R0, R1, #4
500368:  VLDR            D16, [R3,#4]
50036C:  VLDR            S2, [R0]
500370:  VLDR            D17, [R0,#4]
500374:  VSUB.F32        S0, S2, S0
500378:  VLDR            S4, [R5,#0x20]
50037C:  VSUB.F32        D16, D17, D16
500380:  VMUL.F32        S4, S4, S4
500384:  VMUL.F32        D1, D16, D16
500388:  VMUL.F32        S0, S0, S0
50038C:  VADD.F32        S0, S0, S2
500390:  VADD.F32        S0, S0, S3
500394:  VCMPE.F32       S0, S4
500398:  VMRS            APSR_nzcv, FPSCR
50039C:  BGE.W           loc_50051C
5003A0:  ADD             R2, SP, #0x40+var_20; CVehicle *
5003A2:  MOV             R0, R4; this
5003A4:  BLX             j__ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector; CCarEnterExit::IsPathToDoorBlockedByVehicleCollisionModel(CPed const&,CVehicle &,CVector const&)
5003A8:  ADD.W           R6, R5, #0x38 ; '8'
5003AC:  CMP             R0, #0
5003AE:  BEQ.W           loc_500576
5003B2:  VLDR            S0, [SP,#0x40+var_20]
5003B6:  VLDR            S2, [R5,#0x38]
5003BA:  VLDR            D16, [SP,#0x40+var_20+4]
5003BE:  VSUB.F32        S0, S2, S0
5003C2:  VLDR            D17, [R5,#0x3C]
5003C6:  VSUB.F32        D16, D17, D16
5003CA:  VMUL.F32        D1, D16, D16
5003CE:  VMUL.F32        S0, S0, S0
5003D2:  VADD.F32        S0, S0, S2
5003D6:  VADD.F32        S0, S0, S3
5003DA:  VLDR            S2, =0.01
5003DE:  VCMPE.F32       S0, S2
5003E2:  VMRS            APSR_nzcv, FPSCR
5003E6:  BLE             loc_500418
5003E8:  VLDR            D16, [SP,#0x40+var_20]
5003EC:  MOV             R1, R4
5003EE:  LDR             R0, [SP,#0x40+var_18]
5003F0:  STR             R0, [R6,#8]
5003F2:  VSTR            D16, [R6]
5003F6:  LDR             R0, [R5]
5003F8:  LDR             R2, [R0,#0x2C]
5003FA:  MOV             R0, R5
5003FC:  BLX             R2
5003FE:  B               loc_50056E
500400:  LDR             R2, [R5,#0x34]; int
500402:  CBZ             R2, loc_500418
500404:  LDR             R1, [R5,#0xC]; CVehicle *
500406:  ADD             R0, SP, #0x40+var_20; this
500408:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50040C:  VLDR            D16, [SP,#0x40+var_20]
500410:  LDR             R0, [SP,#0x40+var_18]
500412:  STR             R0, [R5,#0x40]
500414:  VSTR            D16, [R5,#0x38]
500418:  LDR             R0, [R5,#8]
50041A:  B               loc_50056E
50041C:  LDR             R1, [R5,#0xC]; CVehicle *
50041E:  ADD             R0, SP, #0x40+var_30; this
500420:  LDR             R2, [R5,#0x34]; int
500422:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
500426:  VLDR            D16, [SP,#0x40+var_30]
50042A:  LDR             R0, [SP,#0x40+var_28]
50042C:  STR             R0, [SP,#0x40+var_18]
50042E:  VSTR            D16, [SP,#0x40+var_20]
500432:  LDR             R1, [R5,#0xC]; CPed *
500434:  LDR             R0, [R4,#0x14]
500436:  LDR             R2, [R1,#0x14]
500438:  ADD.W           R3, R0, #0x30 ; '0'
50043C:  CMP             R0, #0
50043E:  IT EQ
500440:  ADDEQ           R3, R4, #4
500442:  ADD.W           R0, R2, #0x30 ; '0'
500446:  CMP             R2, #0
500448:  VLDR            S0, [R3]
50044C:  IT EQ
50044E:  ADDEQ           R0, R1, #4
500450:  VLDR            D16, [R3,#4]
500454:  VLDR            S2, [R0]
500458:  VLDR            D17, [R0,#4]
50045C:  VSUB.F32        S0, S2, S0
500460:  VLDR            S4, [R5,#0x20]
500464:  VSUB.F32        D16, D17, D16
500468:  VMUL.F32        S4, S4, S4
50046C:  VMUL.F32        D1, D16, D16
500470:  VMUL.F32        S0, S0, S0
500474:  VADD.F32        S0, S0, S2
500478:  VADD.F32        S0, S0, S3
50047C:  VCMPE.F32       S0, S4
500480:  VMRS            APSR_nzcv, FPSCR
500484:  BGE             loc_500540
500486:  LDR             R0, [R5,#0x44]
500488:  CMP             R0, #0
50048A:  BEQ.W           loc_5005C0
50048E:  LDR             R2, [R5,#0x34]; int
500490:  ADD             R0, SP, #0x40+var_30; this
500492:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
500496:  VLDR            D16, [SP,#0x40+var_30]
50049A:  LDR             R0, [SP,#0x40+var_28]
50049C:  STR             R0, [SP,#0x40+var_18]
50049E:  VSTR            D16, [SP,#0x40+var_20]
5004A2:  VLDR            D16, [SP,#0x40+var_20]
5004A6:  LDR             R0, [R5,#8]
5004A8:  LDR             R1, [SP,#0x40+var_18]
5004AA:  VLDR            S0, [R5,#0x18]
5004AE:  STR             R1, [R5,#0x40]
5004B0:  VSTR            D16, [R5,#0x38]
5004B4:  VLDR            S2, [R5,#0x38]
5004B8:  VLDR            S4, [R0,#0xC]
5004BC:  VCMP.F32        S4, S2
5004C0:  VMRS            APSR_nzcv, FPSCR
5004C4:  BNE             loc_5004F8
5004C6:  VLDR            S2, [R5,#0x3C]
5004CA:  VLDR            S4, [R0,#0x10]
5004CE:  VCMP.F32        S4, S2
5004D2:  VMRS            APSR_nzcv, FPSCR
5004D6:  BNE             loc_5004F8
5004D8:  VLDR            S2, [R5,#0x40]
5004DC:  VLDR            S4, [R0,#0x14]
5004E0:  VCMP.F32        S4, S2
5004E4:  VMRS            APSR_nzcv, FPSCR
5004E8:  BNE             loc_5004F8
5004EA:  VLDR            S2, [R0,#0x18]
5004EE:  VCMP.F32        S2, S0
5004F2:  VMRS            APSR_nzcv, FPSCR
5004F6:  BEQ             loc_500562
5004F8:  ADD.W           R1, R5, #0x38 ; '8'
5004FC:  LDRB            R2, [R0,#0x1C]
5004FE:  VLDR            D16, [R1]
500502:  LDR             R1, [R1,#8]
500504:  STR             R1, [R0,#0x14]
500506:  AND.W           R1, R2, #0xD0
50050A:  VSTR            S0, [R0,#0x18]
50050E:  ORR.W           R1, R1, #0x20 ; ' '
500512:  VSTR            D16, [R0,#0xC]
500516:  STRB            R1, [R0,#0x1C]
500518:  LDR             R0, [R5,#8]
50051A:  B               loc_500562
50051C:  VLDR            D16, [SP,#0x40+var_20]
500520:  LDR             R0, [SP,#0x40+var_18]
500522:  STR             R0, [R5,#0x40]
500524:  VSTR            D16, [R5,#0x38]
500528:  MOVS            R0, #dword_20; this
50052A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50052E:  MOV.W           R1, #0x41000000
500532:  MOVS            R2, #0; bool
500534:  STR             R1, [SP,#0x40+var_40]; float
500536:  MOVS            R1, #1; int
500538:  MOVS            R3, #0; bool
50053A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50053E:  B               loc_50056E
500540:  VLDR            D16, [SP,#0x40+var_20]
500544:  LDR             R0, [SP,#0x40+var_18]
500546:  STR             R0, [R5,#0x40]
500548:  VSTR            D16, [R5,#0x38]
50054C:  MOVS            R0, #dword_20; this
50054E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
500552:  MOV.W           R1, #0x41000000
500556:  MOVS            R2, #0; bool
500558:  STR             R1, [SP,#0x40+var_40]; float
50055A:  MOVS            R1, #1; int
50055C:  MOVS            R3, #0; bool
50055E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
500562:  LDR.W           R1, [R4,#0x48C]
500566:  ORR.W           R1, R1, #0x80000000
50056A:  STR.W           R1, [R4,#0x48C]
50056E:  ADD             SP, SP, #0x30 ; '0'
500570:  POP.W           {R11}
500574:  POP             {R4-R7,PC}; int *
500576:  VLDR            D16, [SP,#0x40+var_20]
50057A:  LDR             R0, [SP,#0x40+var_18]
50057C:  STR             R0, [R6,#8]
50057E:  VSTR            D16, [R6]
500582:  LDR.W           R2, [R4,#0x48C]
500586:  LDR.W           R0, [R4,#0x484]
50058A:  LDR.W           R1, [R4,#0x488]; unsigned int
50058E:  ORR.W           R2, R2, #8
500592:  LDR.W           R3, [R4,#0x490]
500596:  STR.W           R0, [R4,#0x484]
50059A:  MOVS            R0, #word_2C; this
50059C:  STR.W           R1, [R4,#0x488]
5005A0:  STR.W           R2, [R4,#0x48C]
5005A4:  STR.W           R3, [R4,#0x490]
5005A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5005AC:  LDR             R1, [R5,#0x10]; int
5005AE:  MOVS            R2, #0
5005B0:  LDR             R3, [R5,#0x18]; float
5005B2:  MOVS            R5, #1
5005B4:  STRD.W          R5, R2, [SP,#0x40+var_40]; bool
5005B8:  MOV             R2, R6; CVector *
5005BA:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
5005BE:  B               loc_50056E
5005C0:  MOVS            R0, #0
5005C2:  ADD.W           R6, R5, #0x38 ; '8'
5005C6:  STR             R0, [SP,#0x40+var_30]
5005C8:  LDRB            R0, [R5,#0x14]
5005CA:  CMP             R0, #0
5005CC:  BEQ             loc_500658
5005CE:  ADD             R2, SP, #0x40+var_20; CVehicle *
5005D0:  ADD             R3, SP, #0x40+var_30; CVector *
5005D2:  MOV             R0, R4; this
5005D4:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
5005D8:  CMP             R0, #0
5005DA:  BEQ             loc_50066E
5005DC:  VLDR            D16, [SP,#0x40+var_20]
5005E0:  LDR             R1, [SP,#0x40+var_18]
5005E2:  LDR             R0, [R5,#8]
5005E4:  STR             R1, [R6,#8]
5005E6:  VSTR            D16, [R6]
5005EA:  LDR             R1, [SP,#0x40+var_30]
5005EC:  VLDR            S0, [R5,#0x18]
5005F0:  VLDR            S2, [R5,#0x38]
5005F4:  STR             R1, [R5,#0x34]
5005F6:  VLDR            S4, [R0,#0xC]
5005FA:  VCMP.F32        S4, S2
5005FE:  VMRS            APSR_nzcv, FPSCR
500602:  BNE             loc_500636
500604:  VLDR            S2, [R5,#0x3C]
500608:  VLDR            S4, [R0,#0x10]
50060C:  VCMP.F32        S4, S2
500610:  VMRS            APSR_nzcv, FPSCR
500614:  BNE             loc_500636
500616:  VLDR            S2, [R5,#0x40]
50061A:  VLDR            S4, [R0,#0x14]
50061E:  VCMP.F32        S4, S2
500622:  VMRS            APSR_nzcv, FPSCR
500626:  BNE             loc_500636
500628:  VLDR            S2, [R0,#0x18]
50062C:  VCMP.F32        S2, S0
500630:  VMRS            APSR_nzcv, FPSCR
500634:  BEQ             loc_500562
500636:  ADD.W           R1, R0, #0xC
50063A:  VLDR            D16, [R6]
50063E:  LDR             R2, [R6,#8]
500640:  STR             R2, [R1,#8]
500642:  VSTR            D16, [R1]
500646:  LDRB            R1, [R0,#0x1C]
500648:  VSTR            S0, [R0,#0x18]
50064C:  AND.W           R1, R1, #0xD0
500650:  ORR.W           R1, R1, #0x20 ; ' '
500654:  STRB            R1, [R0,#0x1C]
500656:  B               loc_500562
500658:  MOVS            R0, #(stderr+1)
50065A:  ADD             R2, SP, #0x40+var_20; CVehicle *
50065C:  ADD             R3, SP, #0x40+var_30; CVector *
50065E:  STRD.W          R0, R0, [SP,#0x40+var_40]; int *
500662:  STR             R0, [SP,#0x40+var_38]; bool
500664:  MOV             R0, R4; this
500666:  BLX             j__ZN13CCarEnterExit26GetNearestCarPassengerDoorERK4CPedRK8CVehicleR7CVectorRibbb; CCarEnterExit::GetNearestCarPassengerDoor(CPed const&,CVehicle const&,CVector &,int &,bool,bool,bool)
50066A:  CMP             R0, #1
50066C:  BEQ             loc_5005DC
50066E:  LDRB            R0, [R5,#0x14]
500670:  CBZ             R0, loc_500680
500672:  VLDR            D16, [SP,#0x40+var_20]
500676:  LDR             R0, [SP,#0x40+var_18]
500678:  STR             R0, [R6,#8]
50067A:  VSTR            D16, [R6]
50067E:  B               loc_50054C
500680:  LDR             R1, [R5,#0xC]; CPed *
500682:  MOVS            R0, #(stderr+1)
500684:  MOVS            R2, #0
500686:  ADD             R3, SP, #0x40+var_30; CVector *
500688:  STRD.W          R0, R2, [SP,#0x40+var_40]; int *
50068C:  ADD             R2, SP, #0x40+var_20; CVehicle *
50068E:  STR             R0, [SP,#0x40+var_38]; bool
500690:  MOV             R0, R4; this
500692:  BLX             j__ZN13CCarEnterExit26GetNearestCarPassengerDoorERK4CPedRK8CVehicleR7CVectorRibbb; CCarEnterExit::GetNearestCarPassengerDoor(CPed const&,CVehicle const&,CVector &,int &,bool,bool,bool)
500696:  CMP             R0, #1
500698:  BNE             loc_5006A8
50069A:  LDR             R0, [SP,#0x40+var_30]
50069C:  MOV.W           R1, #0x33C
5006A0:  STR             R0, [R5,#0x34]
5006A2:  VLDR            D16, [SP,#0x40+var_20]
5006A6:  B               loc_5006AE
5006A8:  VLDR            D16, [SP,#0x40+var_20]
5006AC:  MOVS            R1, #0xCB; int
5006AE:  LDR             R0, [SP,#0x40+var_18]
5006B0:  STR             R0, [R6,#8]
5006B2:  VSTR            D16, [R6]
5006B6:  MOV             R0, R5; this
5006B8:  MOV             R2, R4; CPed *
5006BA:  BLX             j__ZNK36CTaskComplexGoToCarDoorAndStandStill13CreateSubTaskEiP4CPed; CTaskComplexGoToCarDoorAndStandStill::CreateSubTask(int,CPed *)
5006BE:  B               loc_500562
