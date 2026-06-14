; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointShooting10CreateTaskEv
; Address            : 0x494384 - 0x49454A
; =========================================================

494384:  PUSH            {R4-R7,LR}
494386:  ADD             R7, SP, #0xC
494388:  PUSH.W          {R11}
49438C:  SUB             SP, SP, #0x40
49438E:  LDR             R0, =(UseDataFence_ptr - 0x494394)
494390:  ADD             R0, PC; UseDataFence_ptr
494392:  LDR             R0, [R0]; UseDataFence
494394:  LDRB            R4, [R0]
494396:  CBZ             R4, loc_4943AC
494398:  LDR             R0, =(UseDataFence_ptr - 0x4943A0)
49439A:  MOVS            R1, #(stderr+2); void *
49439C:  ADD             R0, PC; UseDataFence_ptr
49439E:  LDR             R5, [R0]; UseDataFence
4943A0:  MOVS            R0, #0
4943A2:  STRB            R0, [R5]
4943A4:  ADD             R0, SP, #0x50+var_20; this
4943A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4943AA:  STRB            R4, [R5]
4943AC:  ADD             R0, SP, #0x50+var_14; this
4943AE:  MOVS            R1, #byte_4; void *
4943B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4943B4:  LDR             R0, =(UseDataFence_ptr - 0x4943BA)
4943B6:  ADD             R0, PC; UseDataFence_ptr
4943B8:  LDR             R0, [R0]; UseDataFence
4943BA:  LDRB            R4, [R0]
4943BC:  CBZ             R4, loc_4943D2
4943BE:  LDR             R0, =(UseDataFence_ptr - 0x4943C6)
4943C0:  MOVS            R1, #(stderr+2); void *
4943C2:  ADD             R0, PC; UseDataFence_ptr
4943C4:  LDR             R5, [R0]; UseDataFence
4943C6:  MOVS            R0, #0
4943C8:  STRB            R0, [R5]
4943CA:  ADD             R0, SP, #0x50+var_20; this
4943CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4943D0:  STRB            R4, [R5]
4943D2:  ADD             R0, SP, #0x50+var_20; this
4943D4:  MOVS            R1, #(byte_9+3); void *
4943D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4943DA:  LDR             R0, =(UseDataFence_ptr - 0x4943E0)
4943DC:  ADD             R0, PC; UseDataFence_ptr
4943DE:  LDR             R0, [R0]; UseDataFence
4943E0:  LDRB            R4, [R0]
4943E2:  CBZ             R4, loc_4943F8
4943E4:  LDR             R0, =(UseDataFence_ptr - 0x4943EC)
4943E6:  MOVS            R1, #(stderr+2); void *
4943E8:  ADD             R0, PC; UseDataFence_ptr
4943EA:  LDR             R5, [R0]; UseDataFence
4943EC:  MOVS            R0, #0
4943EE:  STRB            R0, [R5]
4943F0:  ADD             R0, SP, #0x50+var_30; this
4943F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4943F6:  STRB            R4, [R5]
4943F8:  ADD             R0, SP, #0x50+var_24; this
4943FA:  MOVS            R1, #byte_4; void *
4943FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494400:  LDR             R0, [SP,#0x50+var_24]
494402:  CMP             R0, #2
494404:  BEQ             loc_494440
494406:  CMP             R0, #4
494408:  BEQ             loc_494472
49440A:  CMP             R0, #3
49440C:  BNE             loc_4944A6
49440E:  LDR             R0, =(UseDataFence_ptr - 0x494414)
494410:  ADD             R0, PC; UseDataFence_ptr
494412:  LDR             R0, [R0]; UseDataFence
494414:  LDRB            R4, [R0]
494416:  CBZ             R4, loc_49442C
494418:  LDR             R0, =(UseDataFence_ptr - 0x494420)
49441A:  MOVS            R1, #(stderr+2); void *
49441C:  ADD             R0, PC; UseDataFence_ptr
49441E:  LDR             R5, [R0]; UseDataFence
494420:  MOVS            R0, #0
494422:  STRB            R0, [R5]
494424:  ADD             R0, SP, #0x50+var_30; this
494426:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49442A:  STRB            R4, [R5]
49442C:  ADD             R0, SP, #0x50+var_30; this
49442E:  MOVS            R1, #byte_4; void *
494430:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494434:  LDR             R0, [SP,#0x50+var_30]; this
494436:  ADDS            R1, R0, #1; int
494438:  BEQ             loc_4944A6
49443A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49443E:  B               loc_4944A2
494440:  LDR             R0, =(UseDataFence_ptr - 0x494446)
494442:  ADD             R0, PC; UseDataFence_ptr
494444:  LDR             R0, [R0]; UseDataFence
494446:  LDRB            R4, [R0]
494448:  CBZ             R4, loc_49445E
49444A:  LDR             R0, =(UseDataFence_ptr - 0x494452)
49444C:  MOVS            R1, #(stderr+2); void *
49444E:  ADD             R0, PC; UseDataFence_ptr
494450:  LDR             R5, [R0]; UseDataFence
494452:  MOVS            R0, #0
494454:  STRB            R0, [R5]
494456:  ADD             R0, SP, #0x50+var_30; this
494458:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49445C:  STRB            R4, [R5]
49445E:  ADD             R0, SP, #0x50+var_30; this
494460:  MOVS            R1, #byte_4; void *
494462:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494466:  LDR             R0, [SP,#0x50+var_30]; this
494468:  ADDS            R1, R0, #1; int
49446A:  BEQ             loc_4944A6
49446C:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
494470:  B               loc_4944A2
494472:  LDR             R0, =(UseDataFence_ptr - 0x494478)
494474:  ADD             R0, PC; UseDataFence_ptr
494476:  LDR             R0, [R0]; UseDataFence
494478:  LDRB            R4, [R0]
49447A:  CBZ             R4, loc_494490
49447C:  LDR             R0, =(UseDataFence_ptr - 0x494484)
49447E:  MOVS            R1, #(stderr+2); void *
494480:  ADD             R0, PC; UseDataFence_ptr
494482:  LDR             R5, [R0]; UseDataFence
494484:  MOVS            R0, #0
494486:  STRB            R0, [R5]
494488:  ADD             R0, SP, #0x50+var_30; this
49448A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49448E:  STRB            R4, [R5]
494490:  ADD             R0, SP, #0x50+var_30; this
494492:  MOVS            R1, #byte_4; void *
494494:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494498:  LDR             R0, [SP,#0x50+var_30]; this
49449A:  ADDS            R1, R0, #1; int
49449C:  BEQ             loc_4944A6
49449E:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4944A2:  MOV             R4, R0
4944A4:  B               loc_4944A8
4944A6:  MOVS            R4, #0
4944A8:  LDR             R0, =(UseDataFence_ptr - 0x4944AE)
4944AA:  ADD             R0, PC; UseDataFence_ptr
4944AC:  LDR             R0, [R0]; UseDataFence
4944AE:  LDRB            R5, [R0]
4944B0:  CBZ             R5, loc_4944C6
4944B2:  LDR             R0, =(UseDataFence_ptr - 0x4944BA)
4944B4:  MOVS            R1, #(stderr+2); void *
4944B6:  ADD             R0, PC; UseDataFence_ptr
4944B8:  LDR             R6, [R0]; UseDataFence
4944BA:  MOVS            R0, #0
4944BC:  STRB            R0, [R6]
4944BE:  ADD             R0, SP, #0x50+var_30; this
4944C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4944C4:  STRB            R5, [R6]
4944C6:  ADD             R0, SP, #0x50+var_30; this
4944C8:  MOVS            R1, #(byte_9+3); void *
4944CA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4944CE:  LDR             R0, =(UseDataFence_ptr - 0x4944D4)
4944D0:  ADD             R0, PC; UseDataFence_ptr
4944D2:  LDR             R0, [R0]; UseDataFence
4944D4:  LDRB            R5, [R0]
4944D6:  CBZ             R5, loc_4944EC
4944D8:  LDR             R0, =(UseDataFence_ptr - 0x4944E0)
4944DA:  MOVS            R1, #(stderr+2); void *
4944DC:  ADD             R0, PC; UseDataFence_ptr
4944DE:  LDR             R6, [R0]; UseDataFence
4944E0:  MOVS            R0, #0
4944E2:  STRB            R0, [R6]
4944E4:  ADD             R0, SP, #0x50+var_34; this
4944E6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4944EA:  STRB            R5, [R6]
4944EC:  ADD             R0, SP, #0x50+var_34; this
4944EE:  MOVS            R1, #byte_4; void *
4944F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4944F4:  LDR             R0, =(UseDataFence_ptr - 0x4944FA)
4944F6:  ADD             R0, PC; UseDataFence_ptr
4944F8:  LDR             R0, [R0]; UseDataFence
4944FA:  LDRB            R5, [R0]
4944FC:  CBZ             R5, loc_494512
4944FE:  LDR             R0, =(UseDataFence_ptr - 0x494506)
494500:  MOVS            R1, #(stderr+2); void *
494502:  ADD             R0, PC; UseDataFence_ptr
494504:  LDR             R6, [R0]; UseDataFence
494506:  MOVS            R0, #0
494508:  STRB            R0, [R6]
49450A:  ADD             R0, SP, #0x50+var_38; this
49450C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494510:  STRB            R5, [R6]
494512:  ADD             R0, SP, #0x50+var_38; this
494514:  MOVS            R1, #byte_4; void *
494516:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49451A:  MOVS            R0, #dword_38; this
49451C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494520:  ADD             R6, SP, #0x50+var_30
494522:  LDM             R6, {R2,R3,R6}
494524:  VLDR            S0, [SP,#0x50+var_34]
494528:  VLDR            S2, [SP,#0x50+var_38]
49452C:  LDR             R1, [SP,#0x50+var_14]
49452E:  VSTR            S0, [SP,#0x50+var_44]
494532:  VSTR            S2, [SP,#0x50+var_40]
494536:  STMEA.W         SP, {R2,R3,R6}
49453A:  ADD             R2, SP, #0x50+var_20
49453C:  MOV             R3, R4
49453E:  BLX             j__ZN29CTaskComplexGoToPointShootingC2EiRK7CVectorP7CEntityS0_ff; CTaskComplexGoToPointShooting::CTaskComplexGoToPointShooting(int,CVector const&,CEntity *,CVector,float,float)
494542:  ADD             SP, SP, #0x40 ; '@'
494544:  POP.W           {R11}
494548:  POP             {R4-R7,PC}
