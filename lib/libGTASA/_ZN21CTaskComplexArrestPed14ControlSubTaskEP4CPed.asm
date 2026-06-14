; =========================================================
; Game Engine Function: _ZN21CTaskComplexArrestPed14ControlSubTaskEP4CPed
; Address            : 0x53D2D8 - 0x53D718
; =========================================================

53D2D8:  PUSH            {R4-R7,LR}
53D2DA:  ADD             R7, SP, #0xC
53D2DC:  PUSH.W          {R8-R10}
53D2E0:  SUB             SP, SP, #0x10
53D2E2:  MOV             R5, R0
53D2E4:  MOV             R8, R1
53D2E6:  LDR             R0, [R5,#0x10]
53D2E8:  LDR.W           R10, [R5,#8]
53D2EC:  CBZ             R0, loc_53D32A
53D2EE:  ADDW            R1, R0, #0x544
53D2F2:  VLDR            S0, [R1]
53D2F6:  VCMPE.F32       S0, #0.0
53D2FA:  VMRS            APSR_nzcv, FPSCR
53D2FE:  BLE             loc_53D332
53D300:  LDRB            R1, [R5,#0xC]
53D302:  CBZ             R1, loc_53D338
53D304:  LDR.W           R0, [R10]
53D308:  MOV             R1, R8
53D30A:  MOVS            R2, #1
53D30C:  MOVS            R3, #0
53D30E:  LDR             R4, [R0,#0x1C]
53D310:  MOV             R0, R10
53D312:  BLX             R4
53D314:  CMP             R0, #1
53D316:  BNE.W           loc_53D62E
53D31A:  LDR             R0, [R5]
53D31C:  MOV             R1, R8
53D31E:  LDR             R2, [R0,#0x2C]
53D320:  MOV             R0, R5
53D322:  BLX             R2
53D324:  MOV             R10, R0
53D326:  MOVS            R4, #0xC8
53D328:  B               loc_53D630
53D32A:  MOVW            R4, #0x516
53D32E:  MOV             R0, R10
53D330:  B               loc_53D674
53D332:  MOVW            R4, #0x516
53D336:  B               loc_53D630
53D338:  LDRB.W          R0, [R0,#0x48C]
53D33C:  LSLS            R0, R0, #0x19
53D33E:  BPL             loc_53D364
53D340:  LDR.W           R0, [R10]
53D344:  LDR             R1, [R0,#0x14]
53D346:  MOV             R0, R10
53D348:  BLX             R1
53D34A:  MOVW            R1, #0x44C
53D34E:  CMP             R0, R1
53D350:  BEQ             loc_53D364
53D352:  LDR             R0, [R5,#8]
53D354:  LDR             R1, [R0]
53D356:  LDR             R1, [R1,#0x14]
53D358:  BLX             R1
53D35A:  MOVW            R4, #0x38B
53D35E:  CMP             R0, R4
53D360:  BNE.W           loc_53D630
53D364:  LDR             R0, [R5,#8]
53D366:  LDR             R1, [R0]
53D368:  LDR             R1, [R1,#0x14]
53D36A:  BLX             R1
53D36C:  MOVS            R4, #0xC8
53D36E:  CMP.W           R0, #0x2D8
53D372:  BLT             loc_53D430
53D374:  BEQ.W           loc_53D4D0
53D378:  MOVW            R1, #0x3EB
53D37C:  CMP             R0, R1
53D37E:  BEQ.W           loc_53D4BE
53D382:  CMP.W           R0, #0x3E8
53D386:  BNE.W           loc_53D630
53D38A:  LDR             R0, [R5,#0x10]
53D38C:  MOVS            R1, #0xD0; int
53D38E:  LDR.W           R0, [R0,#0x440]
53D392:  ADDS            R0, #4; this
53D394:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53D398:  MOV             R9, R0
53D39A:  CMP.W           R9, #0
53D39E:  BEQ.W           loc_53D54E
53D3A2:  MOV             R0, R9; this
53D3A4:  BLX             j__ZNK24CTaskComplexFallAndGetUp9IsFallingEv; CTaskComplexFallAndGetUp::IsFalling(void)
53D3A8:  CMP             R0, #1
53D3AA:  BNE.W           loc_53D54E
53D3AE:  LDR             R0, [R5,#0x10]
53D3B0:  MOVW            R4, #0x38B
53D3B4:  LDR.W           R1, [R8,#0x14]
53D3B8:  LDR             R2, [R0,#0x14]
53D3BA:  ADD.W           R3, R1, #0x30 ; '0'
53D3BE:  CMP             R1, #0
53D3C0:  IT EQ
53D3C2:  ADDEQ.W         R3, R8, #4
53D3C6:  ADD.W           R1, R2, #0x30 ; '0'
53D3CA:  CMP             R2, #0
53D3CC:  VLD1.32         {D16}, [R3]!
53D3D0:  IT EQ
53D3D2:  ADDEQ           R1, R0, #4
53D3D4:  VLD1.32         {D17}, [R1]!
53D3D8:  VLDR            S0, [R3]
53D3DC:  VLDR            S2, [R1]
53D3E0:  VSUB.F32        S0, S0, S2
53D3E4:  VMOV.F32        S2, #2.0
53D3E8:  VABS.F32        S0, S0
53D3EC:  VCMPE.F32       S0, S2
53D3F0:  VMRS            APSR_nzcv, FPSCR
53D3F4:  BGT.W           loc_53D630
53D3F8:  VSUB.F32        D16, D16, D17
53D3FC:  VLDR            S2, =0.0
53D400:  VMUL.F32        D0, D16, D16
53D404:  VADD.F32        S0, S0, S1
53D408:  VADD.F32        S0, S0, S2
53D40C:  VMOV.F32        S2, #9.0
53D410:  VCMPE.F32       S0, S2
53D414:  VMRS            APSR_nzcv, FPSCR
53D418:  BGT.W           loc_53D630
53D41C:  MOVW            R1, #:lower16:(elf_hash_chain+0x8538)
53D420:  MOV             R0, R9; this
53D422:  MOVT            R1, #:upper16:(elf_hash_chain+0x8538); int
53D426:  BLX             j__ZN24CTaskComplexFallAndGetUp11SetDownTimeEi; CTaskComplexFallAndGetUp::SetDownTime(int)
53D42A:  MOVW            R4, #0x44C
53D42E:  B               loc_53D630
53D430:  MOVW            R1, #0x2BF
53D434:  CMP             R0, R1
53D436:  BEQ             loc_53D4BE
53D438:  MOVW            R1, #0x2D2
53D43C:  CMP             R0, R1
53D43E:  BNE.W           loc_53D630
53D442:  LDR             R0, [R5,#0x10]
53D444:  MOV.W           R1, #0x2C0; int
53D448:  LDR.W           R0, [R0,#0x440]
53D44C:  ADDS            R0, #4; this
53D44E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53D452:  LDR             R1, [R5,#0x10]
53D454:  LDR.W           R3, [R8,#0x14]
53D458:  LDR             R4, [R1,#0x14]
53D45A:  ADD.W           R2, R3, #0x30 ; '0'
53D45E:  CMP             R3, #0
53D460:  IT EQ
53D462:  ADDEQ.W         R2, R8, #4
53D466:  ADD.W           R3, R4, #0x30 ; '0'
53D46A:  CMP             R4, #0
53D46C:  IT EQ
53D46E:  ADDEQ           R3, R1, #4; CVector *
53D470:  CMP             R0, #0
53D472:  BEQ.W           loc_53D5DE
53D476:  VLDR            S0, [R2]
53D47A:  VMOV.F32        S4, #25.0
53D47E:  VLDR            S2, [R3]
53D482:  ADDW            R0, R1, #0x484
53D486:  VLDR            D16, [R2,#4]
53D48A:  VSUB.F32        S0, S2, S0
53D48E:  VLDR            D17, [R3,#4]
53D492:  VSUB.F32        D16, D17, D16
53D496:  VMUL.F32        D1, D16, D16
53D49A:  VMUL.F32        S0, S0, S0
53D49E:  VADD.F32        S0, S0, S2
53D4A2:  VADD.F32        S0, S0, S3
53D4A6:  VCMPE.F32       S0, S4
53D4AA:  VMRS            APSR_nzcv, FPSCR
53D4AE:  BGE.W           loc_53D5E2
53D4B2:  LDR.W           R2, [R1,#0x484]
53D4B6:  ANDS.W          R2, R2, #0x100
53D4BA:  BNE             loc_53D548
53D4BC:  B               loc_53D5E2
53D4BE:  LDR             R0, [R5,#0x10]
53D4C0:  MOVS            R4, #0xC8
53D4C2:  LDRB.W          R0, [R0,#0x485]
53D4C6:  LSLS            R0, R0, #0x1F
53D4C8:  IT EQ
53D4CA:  MOVEQ.W         R4, #0x3E8
53D4CE:  B               loc_53D630
53D4D0:  LDR             R0, [R5,#0x10]
53D4D2:  MOV.W           R1, #0x2C0; int
53D4D6:  LDR.W           R0, [R0,#0x440]
53D4DA:  ADDS            R0, #4; this
53D4DC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53D4E0:  LDR             R1, [R5,#0x10]
53D4E2:  LDR.W           R3, [R8,#0x14]
53D4E6:  LDR             R4, [R1,#0x14]
53D4E8:  ADD.W           R2, R3, #0x30 ; '0'
53D4EC:  CMP             R3, #0
53D4EE:  IT EQ
53D4F0:  ADDEQ.W         R2, R8, #4
53D4F4:  ADD.W           R3, R4, #0x30 ; '0'
53D4F8:  CMP             R4, #0
53D4FA:  IT EQ
53D4FC:  ADDEQ           R3, R1, #4; CVector *
53D4FE:  CMP             R0, #0
53D500:  BEQ.W           loc_53D610
53D504:  VLDR            S0, [R2]
53D508:  VMOV.F32        S4, #25.0
53D50C:  VLDR            S2, [R3]
53D510:  ADDW            R0, R1, #0x484
53D514:  VLDR            D16, [R2,#4]
53D518:  VSUB.F32        S0, S2, S0
53D51C:  VLDR            D17, [R3,#4]
53D520:  VSUB.F32        D16, D17, D16
53D524:  VMUL.F32        D1, D16, D16
53D528:  VMUL.F32        S0, S0, S0
53D52C:  VADD.F32        S0, S0, S2
53D530:  VADD.F32        S0, S0, S3
53D534:  VCMPE.F32       S0, S4
53D538:  VMRS            APSR_nzcv, FPSCR
53D53C:  BGE             loc_53D614
53D53E:  LDR.W           R2, [R1,#0x484]
53D542:  ANDS.W          R2, R2, #0x100
53D546:  BEQ             loc_53D614
53D548:  MOVW            R4, #0x33D
53D54C:  B               loc_53D630
53D54E:  LDR             R0, [R5,#0x10]
53D550:  LDRB.W          R1, [R0,#0x485]
53D554:  LSLS            R1, R1, #0x1F
53D556:  BEQ             loc_53D62E
53D558:  LDR.W           R0, [R0,#0x590]
53D55C:  CMP             R0, #0
53D55E:  BEQ             loc_53D62E
53D560:  LDR.W           R1, [R0,#0x5A0]
53D564:  CMP             R1, #5
53D566:  BEQ.W           loc_53D6B6
53D56A:  LDR.W           R0, [R0,#0x5A4]
53D56E:  SUBS            R0, #3
53D570:  CMP             R0, #1
53D572:  BLS.W           loc_53D6B6
53D576:  LDRSB.W         R0, [R8,#0x71C]
53D57A:  RSB.W           R0, R0, R0,LSL#3
53D57E:  ADD.W           R0, R8, R0,LSL#2
53D582:  ADDW            R0, R0, #0x5A4; this
53D586:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
53D58A:  CBNZ            R0, loc_53D5A2
53D58C:  MOV.W           R0, #0xFFFFFFFF; int
53D590:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53D594:  MOV             R1, R8; CPed *
53D596:  MOVS            R2, #2; int
53D598:  BLX             j__ZNK7CWanted12IsClosestCopEP4CPedi; CWanted::IsClosestCop(CPed *,int)
53D59C:  CMP             R0, #1
53D59E:  BNE.W           loc_53D6EA
53D5A2:  LDR             R0, [R5,#0x10]
53D5A4:  LDR             R1, [R5,#0x20]
53D5A6:  LDR.W           R2, [R0,#0x590]
53D5AA:  CMP             R1, R2
53D5AC:  BEQ.W           loc_53D6F0
53D5B0:  LDR.W           R0, [R0,#0x440]
53D5B4:  MOV.W           R1, #0x2C0; int
53D5B8:  ADDS            R0, #4; this
53D5BA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53D5BE:  CBNZ            R0, loc_53D62E
53D5C0:  LDR             R0, [R5,#0x10]
53D5C2:  LDR.W           R0, [R0,#0x590]; this
53D5C6:  LDR.W           R1, [R0,#0x5A0]
53D5CA:  CMP             R1, #9
53D5CC:  BEQ             loc_53D5D8
53D5CE:  LDR.W           R1, [R0,#0x5A4]
53D5D2:  CMP             R1, #2
53D5D4:  BNE.W           loc_53D6F8
53D5D8:  MOVW            R4, #0x2BF
53D5DC:  B               loc_53D630
53D5DE:  ADDW            R0, R1, #0x484
53D5E2:  LDRB            R0, [R0,#1]
53D5E4:  LSLS            R0, R0, #0x1F
53D5E6:  BEQ             loc_53D61A
53D5E8:  LDR.W           R0, [R1,#0x590]; this
53D5EC:  MOVS            R1, #(byte_9+1); CVehicle *
53D5EE:  MOVS            R2, #0; int
53D5F0:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
53D5F4:  MOVS            R4, #0xC8
53D5F6:  CBNZ            R0, loc_53D630
53D5F8:  LDR             R0, [R5,#0x10]
53D5FA:  MOVS            R1, #byte_8; CVehicle *
53D5FC:  MOVS            R2, #0; int
53D5FE:  LDR.W           R0, [R0,#0x590]; this
53D602:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
53D606:  CMP             R0, #0
53D608:  IT NE
53D60A:  MOVNE.W         R4, #0x2D8
53D60E:  B               loc_53D630
53D610:  ADDW            R0, R1, #0x484
53D614:  LDRB            R0, [R0,#1]
53D616:  LSLS            R0, R0, #0x1F
53D618:  BNE             loc_53D620
53D61A:  MOV.W           R4, #0x3E8
53D61E:  B               loc_53D630
53D620:  LDR.W           R0, [R1,#0x590]; this
53D624:  MOVS            R1, #byte_8; CVehicle *
53D626:  MOVS            R2, #0; int
53D628:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
53D62C:  CBZ             R0, loc_53D6A0
53D62E:  MOVS            R4, #0xC8
53D630:  LDR             R0, [R5,#0x10]; this
53D632:  CBZ             R0, loc_53D66E
53D634:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53D638:  CMP             R0, #1
53D63A:  BNE             loc_53D66E
53D63C:  MOV.W           R0, #0xFFFFFFFF; int
53D640:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53D644:  LDRB            R0, [R0,#0x18]
53D646:  CMP             R0, #1
53D648:  BNE             loc_53D666
53D64A:  MOVS            R0, #0
53D64C:  MOVS            R1, #0xC7; unsigned __int16
53D64E:  STRD.W          R0, R0, [SP,#0x28+var_28]; unsigned __int8
53D652:  MOVS            R2, #0; unsigned int
53D654:  STR             R0, [SP,#0x28+var_20]; unsigned __int8
53D656:  MOV             R0, R8; this
53D658:  MOV.W           R3, #0x3F800000; float
53D65C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
53D660:  CMP             R4, #0xC8
53D662:  BNE             loc_53D672
53D664:  B               loc_53D696
53D666:  MOV.W           R0, #0xFFFFFFFF; int
53D66A:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53D66E:  CMP             R4, #0xC8
53D670:  BEQ             loc_53D696
53D672:  LDR             R0, [R5,#8]
53D674:  LDR             R1, [R0]
53D676:  MOVS            R2, #1
53D678:  MOVS            R3, #0
53D67A:  LDR             R6, [R1,#0x1C]
53D67C:  MOV             R1, R8
53D67E:  BLX             R6
53D680:  CMP             R0, #1
53D682:  BNE             loc_53D696
53D684:  MOV             R0, R5; this
53D686:  MOV             R1, R4; int
53D688:  MOV             R2, R8; CPed *
53D68A:  ADD             SP, SP, #0x10
53D68C:  POP.W           {R8-R10}
53D690:  POP.W           {R4-R7,LR}
53D694:  B               _ZN21CTaskComplexArrestPed13CreateSubTaskEiP4CPed; CTaskComplexArrestPed::CreateSubTask(int,CPed *)
53D696:  MOV             R0, R10
53D698:  ADD             SP, SP, #0x10
53D69A:  POP.W           {R8-R10}
53D69E:  POP             {R4-R7,PC}
53D6A0:  LDR             R0, [R5,#0x10]
53D6A2:  MOVS            R1, #(byte_9+1); CVehicle *
53D6A4:  MOVS            R2, #0; int
53D6A6:  LDR.W           R0, [R0,#0x590]; this
53D6AA:  BLX             j__ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector; CCarEnterExit::IsRoomForPedToLeaveCar(CVehicle const&,int,CVector *)
53D6AE:  CBZ             R0, loc_53D6B6
53D6B0:  MOVW            R4, #0x2D2
53D6B4:  B               loc_53D630
53D6B6:  LDRSB.W         R0, [R8,#0x71C]
53D6BA:  RSB.W           R0, R0, R0,LSL#3
53D6BE:  ADD.W           R0, R8, R0,LSL#2
53D6C2:  ADDW            R0, R0, #0x5A4; this
53D6C6:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
53D6CA:  CMP             R0, #1
53D6CC:  BNE             loc_53D6EA
53D6CE:  MOV             R0, R8
53D6D0:  MOVS            R1, #0x19
53D6D2:  BLX             j__ZN4CPed23DoWeHaveWeaponAvailableE11eWeaponType; CPed::DoWeHaveWeaponAvailable(eWeaponType)
53D6D6:  CMP             R0, #1
53D6D8:  MOV             R0, R8
53D6DA:  ITE EQ
53D6DC:  MOVEQ           R1, #0x19
53D6DE:  MOVNE           R1, #0x16
53D6E0:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53D6E4:  MOVW            R4, #0x3EB
53D6E8:  B               loc_53D630
53D6EA:  MOVW            R4, #0x3EB
53D6EE:  B               loc_53D630
53D6F0:  MOVS            R4, #0xC8
53D6F2:  CMP             R0, #0
53D6F4:  BNE             loc_53D634
53D6F6:  B               loc_53D66E
53D6F8:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
53D6FC:  MOVW            R4, #0x3EB
53D700:  CMP             R0, #0
53D702:  BNE             loc_53D630
53D704:  LDR             R0, [R5,#0x10]
53D706:  LDR.W           R0, [R0,#0x590]; this
53D70A:  BLX             j__ZNK8CVehicle11IsOnItsSideEv; CVehicle::IsOnItsSide(void)
53D70E:  CMP             R0, #0
53D710:  IT EQ
53D712:  MOVWEQ          R4, #0x2D2
53D716:  B               loc_53D630
