; =========================================================
; Game Engine Function: _ZN8CGarages4LoadEv
; Address            : 0x48B398 - 0x48B5E8
; =========================================================

48B398:  PUSH            {R4-R7,LR}
48B39A:  ADD             R7, SP, #0xC
48B39C:  PUSH.W          {R8-R11}
48B3A0:  SUB             SP, SP, #0x54
48B3A2:  LDR             R0, =(__stack_chk_guard_ptr - 0x48B3A8)
48B3A4:  ADD             R0, PC; __stack_chk_guard_ptr
48B3A6:  LDR             R0, [R0]; __stack_chk_guard
48B3A8:  LDR             R0, [R0]; this
48B3AA:  STR             R0, [SP,#0x70+var_20]
48B3AC:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
48B3B0:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48B3B8)
48B3B2:  MOVS            R1, #byte_4; void *
48B3B4:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48B3B6:  LDR             R0, [R0]; this
48B3B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3BC:  LDR             R0, =(_ZN8CGarages12BombsAreFreeE_ptr - 0x48B3C4)
48B3BE:  MOVS            R1, #(stderr+1); void *
48B3C0:  ADD             R0, PC; _ZN8CGarages12BombsAreFreeE_ptr
48B3C2:  LDR             R0, [R0]; this
48B3C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3C8:  LDR             R0, =(_ZN8CGarages15RespraysAreFreeE_ptr - 0x48B3D0)
48B3CA:  MOVS            R1, #(stderr+1); void *
48B3CC:  ADD             R0, PC; _ZN8CGarages15RespraysAreFreeE_ptr
48B3CE:  LDR             R0, [R0]; this
48B3D0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3D4:  LDR             R0, =(_ZN8CGarages10NoRespraysE_ptr - 0x48B3DC)
48B3D6:  MOVS            R1, #(stderr+1); void *
48B3D8:  ADD             R0, PC; _ZN8CGarages10NoRespraysE_ptr
48B3DA:  LDR             R0, [R0]; this
48B3DC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3E0:  LDR             R0, =(_ZN8CGarages13CarsCollectedE_ptr - 0x48B3E8)
48B3E2:  MOVS            R1, #byte_4; void *
48B3E4:  ADD             R0, PC; _ZN8CGarages13CarsCollectedE_ptr
48B3E6:  LDR             R0, [R0]; this
48B3E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3EC:  LDR             R0, =(_ZN8CGarages17BankVansCollectedE_ptr - 0x48B3F4)
48B3EE:  MOVS            R1, #byte_4; void *
48B3F0:  ADD             R0, PC; _ZN8CGarages17BankVansCollectedE_ptr
48B3F2:  LDR             R0, [R0]; this
48B3F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B3F8:  LDR             R0, =(_ZN8CGarages19PoliceCarsCollectedE_ptr - 0x48B400)
48B3FA:  MOVS            R1, #byte_4; void *
48B3FC:  ADD             R0, PC; _ZN8CGarages19PoliceCarsCollectedE_ptr
48B3FE:  LDR             R0, [R0]; this
48B400:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B404:  LDR             R0, =(_ZN8CGarages17CarTypesCollectedE_ptr - 0x48B40C)
48B406:  MOVS            R1, #byte_4; void *
48B408:  ADD             R0, PC; _ZN8CGarages17CarTypesCollectedE_ptr
48B40A:  LDR             R4, [R0]; CGarages::CarTypesCollected ...
48B40C:  MOV             R0, R4; this
48B40E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B412:  ADDS            R0, R4, #4; this
48B414:  MOVS            R1, #byte_4; void *
48B416:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B41A:  ADD.W           R0, R4, #8; this
48B41E:  MOVS            R1, #byte_4; void *
48B420:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B424:  ADD.W           R0, R4, #0xC; this
48B428:  MOVS            R1, #byte_4; void *
48B42A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B42E:  LDR             R0, =(_ZN8CGarages19LastTimeHelpMessageE_ptr - 0x48B436)
48B430:  MOVS            R1, #byte_4; void *
48B432:  ADD             R0, PC; _ZN8CGarages19LastTimeHelpMessageE_ptr
48B434:  LDR             R0, [R0]; this
48B436:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B43A:  LDR             R0, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x48B442)
48B43C:  MOVS            R5, #0
48B43E:  ADD             R0, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
48B440:  LDR             R6, [R0]; CGarages::aCarsInSafeHouse ...
48B442:  ADDS            R4, R6, R5
48B444:  MOVS            R1, #dword_40; void *
48B446:  MOV             R0, R4; this
48B448:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B44C:  ADD.W           R0, R4, #0x100; this
48B450:  MOVS            R1, #dword_40; void *
48B452:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B456:  ADD.W           R0, R4, #0x200; this
48B45A:  MOVS            R1, #dword_40; void *
48B45C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B460:  ADD.W           R0, R4, #0x300; this
48B464:  MOVS            R1, #dword_40; void *
48B466:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B46A:  ADD.W           R0, R4, #0x400; this
48B46E:  MOVS            R1, #dword_40; void *
48B470:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B474:  ADD.W           R0, R4, #0x500; this
48B478:  MOVS            R1, #dword_40; void *
48B47A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B47E:  ADD.W           R0, R4, #0x600; this
48B482:  MOVS            R1, #dword_40; void *
48B484:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B488:  ADD.W           R0, R4, #0x700; this
48B48C:  MOVS            R1, #dword_40; void *
48B48E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B492:  ADD.W           R0, R4, #0x800; this
48B496:  MOVS            R1, #dword_40; void *
48B498:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B49C:  ADD.W           R0, R4, #0x900; this
48B4A0:  MOVS            R1, #dword_40; void *
48B4A2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4A6:  ADD.W           R0, R4, #0xA00; this
48B4AA:  MOVS            R1, #dword_40; void *
48B4AC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4B0:  ADD.W           R0, R4, #0xB00; this
48B4B4:  MOVS            R1, #dword_40; void *
48B4B6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4BA:  ADD.W           R0, R4, #0xC00; this
48B4BE:  MOVS            R1, #dword_40; void *
48B4C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4C4:  ADD.W           R0, R4, #0xD00; this
48B4C8:  MOVS            R1, #dword_40; void *
48B4CA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4CE:  ADD.W           R0, R4, #0xE00; this
48B4D2:  MOVS            R1, #dword_40; void *
48B4D4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4D8:  ADD.W           R0, R4, #0xF00; this
48B4DC:  MOVS            R1, #dword_40; void *
48B4DE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4E2:  ADD.W           R0, R4, #0x1000; this
48B4E6:  MOVS            R1, #dword_40; void *
48B4E8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4EC:  ADD.W           R0, R4, #0x1100; this
48B4F0:  MOVS            R1, #dword_40; void *
48B4F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B4F6:  ADD.W           R0, R4, #0x1200; this
48B4FA:  MOVS            R1, #dword_40; void *
48B4FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B500:  ADD.W           R0, R4, #0x1300; this
48B504:  MOVS            R1, #dword_40; void *
48B506:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B50A:  ADDS            R5, #0x40 ; '@'
48B50C:  CMP.W           R5, #0x100
48B510:  BNE             loc_48B442
48B512:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48B518)
48B514:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48B516:  LDR             R0, [R0]; CGarages::NumGarages ...
48B518:  LDR             R0, [R0]; CGarages::NumGarages
48B51A:  CMP             R0, #0
48B51C:  BEQ             loc_48B5B2
48B51E:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x48B52E)
48B520:  MOV             R1, SP
48B522:  ADD.W           R9, R1, #0x44 ; 'D'
48B526:  ADD.W           R10, R1, #0x24 ; '$'
48B52A:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
48B52C:  ADD.W           R4, R1, #0x14
48B530:  ADDS            R5, R1, #4
48B532:  MOV.W           R8, #0
48B536:  LDR             R6, [R0]; CGarages::aGarages ...
48B538:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x48B53E)
48B53A:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
48B53C:  LDR.W           R11, [R0]; CGarages::NumGarages ...
48B540:  MOV             R0, SP; this
48B542:  MOVS            R1, #dword_50; void *
48B544:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48B548:  LDRB.W          R0, [SP,#0x70+var_70]
48B54C:  MOVS            R1, #0
48B54E:  STRB.W          R0, [R6,#0x4C]
48B552:  LDRB.W          R0, [SP,#0x70+var_6F]
48B556:  STRB.W          R0, [R6,#0x4D]
48B55A:  LDRB.W          R0, [SP,#0x70+var_6E]
48B55E:  VLD1.32         {D16-D17}, [R5]
48B562:  STRB.W          R0, [R6,#0x4E]
48B566:  MOV             R0, R6
48B568:  VST1.32         {D16-D17}, [R0]!
48B56C:  VLD1.32         {D16-D17}, [R4]
48B570:  VST1.32         {D16-D17}, [R0]
48B574:  ADD.W           R0, R6, #0x20 ; ' '
48B578:  VLD1.32         {D16-D17}, [R10]
48B57C:  VST1.32         {D16-D17}, [R0]
48B580:  LDR             R0, [SP,#0x70+var_3C]
48B582:  STR             R0, [R6,#0x30]
48B584:  LDR             R0, [SP,#0x70+var_38]
48B586:  STR             R0, [R6,#0x34]
48B588:  LDR             R0, [SP,#0x70+var_34]
48B58A:  STR             R0, [R6,#0x38]
48B58C:  LDR             R0, [SP,#0x70+var_30]
48B58E:  STRD.W          R0, R1, [R6,#0x3C]
48B592:  ADD.W           R0, R6, #0x44 ; 'D'; char *
48B596:  MOV             R1, R9; char *
48B598:  BLX             strcpy
48B59C:  LDRB.W          R0, [SP,#0x70+var_24]
48B5A0:  ADD.W           R8, R8, #1
48B5A4:  STRB.W          R0, [R6,#0x4F]
48B5A8:  ADDS            R6, #0xD8
48B5AA:  LDR.W           R0, [R11]; CGarages::NumGarages
48B5AE:  CMP             R8, R0
48B5B0:  BCC             loc_48B540
48B5B2:  LDR             R0, =(_ZN8CGarages16MessageStartTimeE_ptr - 0x48B5BC)
48B5B4:  MOVS            R3, #0
48B5B6:  LDR             R1, =(_ZN8CGarages14MessageEndTimeE_ptr - 0x48B5C0)
48B5B8:  ADD             R0, PC; _ZN8CGarages16MessageStartTimeE_ptr
48B5BA:  LDR             R2, =(_ZN8CGarages19bCamShouldBeOutsideE_ptr - 0x48B5C4)
48B5BC:  ADD             R1, PC; _ZN8CGarages14MessageEndTimeE_ptr
48B5BE:  LDR             R0, [R0]; CGarages::MessageStartTime ...
48B5C0:  ADD             R2, PC; _ZN8CGarages19bCamShouldBeOutsideE_ptr
48B5C2:  LDR             R1, [R1]; CGarages::MessageEndTime ...
48B5C4:  LDR             R2, [R2]; CGarages::bCamShouldBeOutside ...
48B5C6:  STR             R3, [R0]; CGarages::MessageStartTime
48B5C8:  LDR             R0, =(__stack_chk_guard_ptr - 0x48B5D0)
48B5CA:  STR             R3, [R1]; CGarages::MessageEndTime
48B5CC:  ADD             R0, PC; __stack_chk_guard_ptr
48B5CE:  STRB            R3, [R2]; CGarages::bCamShouldBeOutside
48B5D0:  LDR             R1, [SP,#0x70+var_20]
48B5D2:  LDR             R0, [R0]; __stack_chk_guard
48B5D4:  LDR             R0, [R0]
48B5D6:  SUBS            R0, R0, R1
48B5D8:  ITTTT EQ
48B5DA:  MOVEQ           R0, #1
48B5DC:  ADDEQ           SP, SP, #0x54 ; 'T'
48B5DE:  POPEQ.W         {R8-R11}
48B5E2:  POPEQ           {R4-R7,PC}
48B5E4:  BLX             __stack_chk_fail
