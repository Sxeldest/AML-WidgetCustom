; =========================================================
; Game Engine Function: _ZN5CBikeC2Eih
; Address            : 0x5603E4 - 0x5606B0
; =========================================================

5603E4:  PUSH            {R4-R7,LR}; Alternative name is 'CBike::CBike(int, unsigned char)'
5603E6:  ADD             R7, SP, #0xC
5603E8:  PUSH.W          {R8-R11}
5603EC:  SUB             SP, SP, #0xC
5603EE:  MOV             R10, R1
5603F0:  MOV             R1, R2; unsigned __int8
5603F2:  MOV             R4, R0
5603F4:  BLX             j__ZN8CVehicleC2Eh; CVehicle::CVehicle(uchar)
5603F8:  LDR             R0, =(_ZTV5CBike_ptr - 0x560406)
5603FA:  ADDW            R5, R4, #0x654
5603FE:  MOV.W           R11, #0
560402:  ADD             R0, PC; _ZTV5CBike_ptr
560404:  STR.W           R11, [R4,#0x620]
560408:  STR.W           R11, [R4,#0x624]
56040C:  LDR             R0, [R0]; `vtable for'CBike ...
56040E:  ADDS            R0, #8
560410:  STR             R0, [R4]
560412:  MOV             R0, R5; this
560414:  BLX             j__ZN13CRideAnimDataC2Ev; CRideAnimData::CRideAnimData(void)
560418:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56041E)
56041A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56041C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56041E:  LDR.W           R9, [R0,R10,LSL#2]
560422:  LDR.W           R0, [R9,#0x54]
560426:  LDRH.W          R6, [R9,#0x62]
56042A:  CMP             R0, #9
56042C:  BNE             loc_56044E
56042E:  LDR.W           R0, [R9]
560432:  LDR             R1, [R0,#0x3C]
560434:  MOV             R0, R9
560436:  BLX             R1
560438:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x56043E)
56043A:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
56043C:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
56043E:  ADD.W           R0, R1, R0,LSL#5
560442:  LDR             R0, [R0,#0x1C]
560444:  SUBS            R1, R0, #2
560446:  CMP             R1, #4
560448:  IT HI
56044A:  MOVHI           R0, #2
56044C:  STR             R0, [R5]
56044E:  MOVS            R0, #9
560450:  MOV             R1, R10
560452:  STR.W           R0, [R4,#0x5A0]
560456:  ADD.W           R8, R4, #0x5E0
56045A:  STR.W           R0, [R4,#0x5A4]
56045E:  LDR             R0, [R4]
560460:  STR.W           R11, [R4,#0x7D0]
560464:  STRH.W          R11, [R4,#0x7BC]
560468:  STRB.W          R11, [R4,#0x628]
56046C:  LDR             R2, [R0,#0x18]
56046E:  MOV             R0, R4
560470:  BLX             R2
560472:  LDR             R0, =0x11734C
560474:  BL              sub_3F65CC
560478:  ADD             R0, PC
56047A:  LDR             R0, [R0]; this
56047C:  ADD.W           R1, R0, R6,LSL#6
560480:  ADD             R1, R2
560482:  STR.W           R1, [R4,#0x650]
560486:  RSB.W           R1, R6, R6,LSL#3
56048A:  ADD.W           R1, R0, R1,LSL#5
56048E:  ADD.W           R2, R1, #0x14
560492:  STR.W           R2, [R4,#0x388]
560496:  LDR.W           R1, [R1,#0xE4]
56049A:  STR.W           R1, [R4,#0x390]
56049E:  MOV             R1, R6; unsigned __int8
5604A0:  BLX             j__ZN16cHandlingDataMgr16GetFlyingPointerEh; cHandlingDataMgr::GetFlyingPointer(uchar)
5604A4:  STR.W           R0, [R4,#0x38C]
5604A8:  MOVS            R0, #0x41A00000
5604AE:  ADDW            R1, R4, #0x43B
5604B2:  STR.W           R0, [R4,#0x754]
5604B6:  MOVS            R0, #1
5604B8:  STRD.W          R1, R0, [SP,#0x28+var_28]; unsigned __int8 *
5604BC:  ADD.W           R1, R4, #0x438; unsigned __int8 *
5604C0:  ADDW            R2, R4, #0x439; unsigned __int8 *
5604C4:  ADDW            R3, R4, #0x43A; unsigned __int8 *
5604C8:  MOV             R0, R9; this
5604CA:  BLX             j__ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i; CVehicleModelInfo::ChooseVehicleColour(uchar &,uchar &,uchar &,uchar &,int)
5604CE:  STR.W           R11, [R4,#0x7AC]
5604D2:  STR.W           R11, [R4,#0x7B0]
5604D6:  STR.W           R11, [R4,#0x7B4]
5604DA:  VLDR            S0, =3.1416
5604DE:  VLDR            S2, [R9,#0x70]
5604E2:  VMUL.F32        S0, S2, S0
5604E6:  VLDR            S2, =180.0
5604EA:  VDIV.F32        S0, S0, S2
5604EE:  VMOV            R0, S0; x
5604F2:  BLX             tanf
5604F6:  LDR.W           R1, [R4,#0x388]
5604FA:  MOVW            R3, #0xCCCD
5604FE:  STR.W           R0, [R4,#0x7B8]
560502:  MOVT            R3, #0x3DCC
560506:  STRH.W          R11, [R4,#0x7C8]
56050A:  ADD.W           R12, R4, #0xA8
56050E:  LDR             R0, [R1,#4]
560510:  STR.W           R0, [R4,#0x90]
560514:  LDR             R0, [R1,#0xC]
560516:  STR.W           R0, [R4,#0x94]
56051A:  LDRD.W          R0, R2, [R1,#0x14]
56051E:  VLDR            S2, =0.01
560522:  STM.W           R12, {R0,R2,R3}
560526:  VLDR            S0, [R1,#0x10]
56052A:  VCMPE.F32       S0, S2
56052E:  VMRS            APSR_nzcv, FPSCR
560532:  BLE             loc_560544
560534:  VMOV.F32        S2, #0.5
560538:  VMUL.F32        S0, S0, S2
56053C:  VLDR            S2, =1000.0
560540:  VDIV.F32        S0, S0, S2
560544:  MOVW            R0, #0xCCCD
560548:  VMOV.I32        Q8, #0
56054C:  MOVT            R0, #0x3D4C
560550:  MOVS            R5, #0
560552:  STR.W           R0, [R4,#0xA0]
560556:  VSTR            S0, [R4,#0x9C]
56055A:  LDR             R0, [R1,#0x24]
56055C:  ADDW            R1, R4, #0x764
560560:  VST1.32         {D16-D17}, [R1]
560564:  ADD.W           R1, R4, #0x758
560568:  STR.W           R5, [R4,#0x498]
56056C:  STR.W           R0, [R4,#0xA4]
560570:  MOV.W           R0, #0x3F800000
560574:  STR.W           R5, [R4,#0x4A0]
560578:  STR.W           R5, [R4,#0x4A4]
56057C:  STR.W           R5, [R4,#0x814]
560580:  STR.W           R5, [R4,#0x4DC]
560584:  STR.W           R0, [R4,#0x7C0]
560588:  STR.W           R5, [R4,#0x7C4]
56058C:  STR.W           R5, [R4,#0x7CC]
560590:  STR.W           R5, [R4,#0x81C]
560594:  STR.W           R5, [R4,#0x820]
560598:  STR.W           R5, [R4,#0x824]
56059C:  STRH.W          R5, [R4,#0x670]
5605A0:  VST1.32         {D16-D17}, [R1]
5605A4:  ADD.W           R1, R4, #0x7F0
5605A8:  VST1.32         {D16-D17}, [R1]
5605AC:  ADD.W           R1, R4, #0x800; unsigned int
5605B0:  VST1.32         {D16-D17}, [R1]
5605B4:  STR.W           R5, [R4,#0x7D4]
5605B8:  STR.W           R5, [R4,#0x7D8]
5605BC:  STR.W           R5, [R4,#0x7DC]
5605C0:  STR.W           R5, [R4,#0x7E0]
5605C4:  STR.W           R5, [R4,#0x7E4]
5605C8:  STR.W           R5, [R4,#0x7E8]
5605CC:  STR.W           R5, [R4,#0x7EC]
5605D0:  STR.W           R5, [R4,#0x810]
5605D4:  STR.W           R0, [R4,#0x724]
5605D8:  STR.W           R0, [R4,#0x728]
5605DC:  STR.W           R0, [R4,#0x72C]
5605E0:  STR.W           R0, [R4,#0x730]
5605E4:  STR.W           R0, [R4,#0x734]
5605E8:  STR.W           R0, [R4,#0x738]
5605EC:  STR.W           R0, [R4,#0x73C]
5605F0:  STR.W           R0, [R4,#0x740]
5605F4:  STR.W           R5, [R4,#0x744]
5605F8:  STR.W           R5, [R4,#0x748]
5605FC:  STR.W           R5, [R4,#0x74C]
560600:  STR.W           R5, [R4,#0x750]
560604:  STRB.W          R5, [R4,#0x81A]
560608:  STRH.W          R5, [R4,#0x818]
56060C:  STR.W           R5, [R4,#0x7A4]
560610:  STR.W           R0, [R4,#0x7A8]
560614:  LDR.W           R0, [R9,#0x2C]
560618:  LDR             R6, [R0,#0x2C]
56061A:  LDR             R0, [R6,#0x10]
56061C:  CBNZ            R0, loc_560636
56061E:  MOVS            R0, #4
560620:  STRB            R0, [R6,#6]
560622:  MOVS            R0, #0x80; byte_count
560624:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
560628:  MOVW            R1, #0x4FFF
56062C:  STR             R0, [R6,#0x10]
56062E:  MOVT            R1, #0x47C3
560632:  STR             R1, [R0,#0x28]
560634:  LDR             R0, [R6,#0x10]
560636:  MOV             R1, #0x47C34FFF
56063E:  STR             R1, [R0,#8]
560640:  LDR             R0, [R4]
560642:  LDR.W           R1, [R0,#0xC4]
560646:  MOV             R0, R4
560648:  BLX             R1
56064A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x560654)
56064C:  LDRB.W          R2, [R4,#0x3A]
560650:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
560652:  LDR             R1, [R4,#0x14]
560654:  LDR.W           R3, [R4,#0x42C]
560658:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56065A:  LDRH.W          R6, [R4,#0x3DF]
56065E:  STRH.W          R5, [R4,#0x3BE]
560662:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
560664:  STR.W           R0, [R4,#0x3B0]
560668:  BIC.W           R0, R6, #4
56066C:  STRH.W          R0, [R4,#0x3DF]
560670:  BIC.W           R0, R3, #0xF00
560674:  STR.W           R0, [R4,#0x42C]
560678:  MOVS            R0, #2
56067A:  BFI.W           R2, R0, #3, #0x1D
56067E:  MOV             R0, R8
560680:  STRB.W          R2, [R4,#0x3A]
560684:  STRB.W          R5, [R4,#0x488]
560688:  STRB.W          R5, [R4,#0x5DC]
56068C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
560690:  ADD.W           R0, R4, #0x13C; this
560694:  MOV             R1, R4; CEntity *
560696:  STR.W           R5, [R4,#0x644]
56069A:  STR.W           R5, [R4,#0x648]
56069E:  STR.W           R5, [R4,#0x64C]
5606A2:  BLX             j__ZN21CAEVehicleAudioEntity10InitialiseEP7CEntity; CAEVehicleAudioEntity::Initialise(CEntity *)
5606A6:  MOV             R0, R4
5606A8:  ADD             SP, SP, #0xC
5606AA:  POP.W           {R8-R11}
5606AE:  POP             {R4-R7,PC}
