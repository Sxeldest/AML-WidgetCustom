; =========================================================
; Game Engine Function: _ZN8CRestart4LoadEv
; Address            : 0x48D4A4 - 0x48D5F0
; =========================================================

48D4A4:  PUSH            {R4-R7,LR}
48D4A6:  ADD             R7, SP, #0xC
48D4A8:  PUSH.W          {R8-R10}
48D4AC:  BLX             j__ZN8CRestart10InitialiseEv; CRestart::Initialise(void)
48D4B0:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x48D4B8)
48D4B2:  MOVS            R1, #(stderr+2); void *
48D4B4:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
48D4B6:  LDR             R4, [R0]; CRestart::NumberOfHospitalRestarts ...
48D4B8:  MOV             R0, R4; this
48D4BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D4BE:  LDRH            R0, [R4]; CRestart::NumberOfHospitalRestarts
48D4C0:  CBZ             R0, loc_48D510
48D4C2:  LDR             R0, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x48D4CC)
48D4C4:  MOVS            R6, #0
48D4C6:  MOVS            R4, #0
48D4C8:  ADD             R0, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
48D4CA:  LDR.W           R8, [R0]; CRestart::HospitalRestartPoints ...
48D4CE:  LDR             R0, =(_ZN8CRestart23HospitalRestartHeadingsE_ptr - 0x48D4D4)
48D4D0:  ADD             R0, PC; _ZN8CRestart23HospitalRestartHeadingsE_ptr
48D4D2:  LDR.W           R9, [R0]; CRestart::HospitalRestartHeadings ...
48D4D6:  LDR             R0, =(_ZN8CRestart24HospitalRestartWhenToUseE_ptr - 0x48D4DC)
48D4D8:  ADD             R0, PC; _ZN8CRestart24HospitalRestartWhenToUseE_ptr
48D4DA:  LDR.W           R10, [R0]; CRestart::HospitalRestartWhenToUse ...
48D4DE:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x48D4E4)
48D4E0:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
48D4E2:  LDR             R5, [R0]; CRestart::NumberOfHospitalRestarts ...
48D4E4:  ADD.W           R0, R6, R6,LSL#1
48D4E8:  MOVS            R1, #(byte_9+3); void *
48D4EA:  ADD.W           R0, R8, R0,LSL#2; this
48D4EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D4F2:  ADD.W           R0, R9, R6,LSL#2; this
48D4F6:  MOVS            R1, #byte_4; void *
48D4F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D4FC:  ADD.W           R0, R10, R6,LSL#2; this
48D500:  MOVS            R1, #byte_4; void *
48D502:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D506:  ADDS            R4, #1
48D508:  LDRH            R0, [R5]; CRestart::NumberOfHospitalRestarts
48D50A:  UXTH            R6, R4
48D50C:  CMP             R6, R0
48D50E:  BCC             loc_48D4E4
48D510:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x48D518)
48D512:  MOVS            R1, #(stderr+2); void *
48D514:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
48D516:  LDR             R4, [R0]; CRestart::NumberOfPoliceRestarts ...
48D518:  MOV             R0, R4; this
48D51A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D51E:  LDRH            R0, [R4]; CRestart::NumberOfPoliceRestarts
48D520:  CBZ             R0, loc_48D570
48D522:  LDR             R0, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x48D52C)
48D524:  MOVS            R6, #0
48D526:  MOVS            R4, #0
48D528:  ADD             R0, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
48D52A:  LDR.W           R8, [R0]; CRestart::PoliceRestartPoints ...
48D52E:  LDR             R0, =(_ZN8CRestart21PoliceRestartHeadingsE_ptr - 0x48D534)
48D530:  ADD             R0, PC; _ZN8CRestart21PoliceRestartHeadingsE_ptr
48D532:  LDR.W           R9, [R0]; CRestart::PoliceRestartHeadings ...
48D536:  LDR             R0, =(_ZN8CRestart22PoliceRestartWhenToUseE_ptr - 0x48D53C)
48D538:  ADD             R0, PC; _ZN8CRestart22PoliceRestartWhenToUseE_ptr
48D53A:  LDR.W           R10, [R0]; CRestart::PoliceRestartWhenToUse ...
48D53E:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x48D544)
48D540:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
48D542:  LDR             R5, [R0]; CRestart::NumberOfPoliceRestarts ...
48D544:  ADD.W           R0, R6, R6,LSL#1
48D548:  MOVS            R1, #(byte_9+3); void *
48D54A:  ADD.W           R0, R8, R0,LSL#2; this
48D54E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D552:  ADD.W           R0, R9, R6,LSL#2; this
48D556:  MOVS            R1, #byte_4; void *
48D558:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D55C:  ADD.W           R0, R10, R6,LSL#2; this
48D560:  MOVS            R1, #byte_4; void *
48D562:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D566:  ADDS            R4, #1
48D568:  LDRH            R0, [R5]; CRestart::NumberOfPoliceRestarts
48D56A:  UXTH            R6, R4
48D56C:  CMP             R6, R0
48D56E:  BCC             loc_48D544
48D570:  LDR             R0, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x48D578)
48D572:  MOVS            R1, #(stderr+1); void *
48D574:  ADD             R0, PC; _ZN8CRestart16bOverrideRestartE_ptr
48D576:  LDR             R0, [R0]; this
48D578:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D57C:  LDR             R0, =(_ZN8CRestart16OverridePositionE_ptr - 0x48D584)
48D57E:  MOVS            R1, #(byte_9+3); void *
48D580:  ADD             R0, PC; _ZN8CRestart16OverridePositionE_ptr
48D582:  LDR             R0, [R0]; this
48D584:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D588:  LDR             R0, =(_ZN8CRestart21bFadeInAfterNextDeathE_ptr - 0x48D590)
48D58A:  MOVS            R1, #(stderr+1); void *
48D58C:  ADD             R0, PC; _ZN8CRestart21bFadeInAfterNextDeathE_ptr
48D58E:  LDR             R0, [R0]; this
48D590:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D594:  LDR             R0, =(_ZN8CRestart22bFadeInAfterNextArrestE_ptr - 0x48D59C)
48D596:  MOVS            R1, #(stderr+1); void *
48D598:  ADD             R0, PC; _ZN8CRestart22bFadeInAfterNextArrestE_ptr
48D59A:  LDR             R0, [R0]; this
48D59C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5A0:  LDR             R0, =(_ZN8CRestart25ExtraHospitalRestartCoorsE_ptr - 0x48D5A8)
48D5A2:  MOVS            R1, #(byte_9+3); void *
48D5A4:  ADD             R0, PC; _ZN8CRestart25ExtraHospitalRestartCoorsE_ptr
48D5A6:  LDR             R0, [R0]; this
48D5A8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5AC:  LDR             R0, =(_ZN8CRestart26ExtraHospitalRestartRadiusE_ptr - 0x48D5B4)
48D5AE:  MOVS            R1, #byte_4; void *
48D5B0:  ADD             R0, PC; _ZN8CRestart26ExtraHospitalRestartRadiusE_ptr
48D5B2:  LDR             R0, [R0]; this
48D5B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5B8:  LDR             R0, =(_ZN8CRestart27ExtraHospitalRestartHeadingE_ptr - 0x48D5C0)
48D5BA:  MOVS            R1, #byte_4; void *
48D5BC:  ADD             R0, PC; _ZN8CRestart27ExtraHospitalRestartHeadingE_ptr
48D5BE:  LDR             R0, [R0]; this
48D5C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5C4:  LDR             R0, =(_ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr - 0x48D5CC)
48D5C6:  MOVS            R1, #(byte_9+3); void *
48D5C8:  ADD             R0, PC; _ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr
48D5CA:  LDR             R0, [R0]; this
48D5CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5D0:  LDR             R0, =(_ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr - 0x48D5D8)
48D5D2:  MOVS            R1, #byte_4; void *
48D5D4:  ADD             R0, PC; _ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr
48D5D6:  LDR             R0, [R0]; this
48D5D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5DC:  LDR             R0, =(_ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr - 0x48D5E4)
48D5DE:  MOVS            R1, #byte_4; void *
48D5E0:  ADD             R0, PC; _ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr
48D5E2:  LDR             R0, [R0]; this
48D5E4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D5E8:  MOVS            R0, #1
48D5EA:  POP.W           {R8-R10}
48D5EE:  POP             {R4-R7,PC}
