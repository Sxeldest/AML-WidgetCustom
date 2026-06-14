; =========================================================
; Game Engine Function: _ZN13CCarGenerator20DoInternalProcessingEv
; Address            : 0x56D528 - 0x56DD1E
; =========================================================

56D528:  PUSH            {R4-R7,LR}
56D52A:  ADD             R7, SP, #0xC
56D52C:  PUSH.W          {R8-R11}
56D530:  SUB             SP, SP, #4
56D532:  VPUSH           {D8-D10}
56D536:  SUB             SP, SP, #0x68
56D538:  MOV             R4, R0
56D53A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x56D546)
56D53E:  LDR.W           R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x56D548)
56D542:  ADD             R0, PC; __stack_chk_guard_ptr
56D544:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
56D546:  LDR             R0, [R0]; __stack_chk_guard
56D548:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
56D54A:  LDR             R0, [R0]
56D54C:  STR             R0, [SP,#0xA0+var_3C]
56D54E:  LDRB            R0, [R4,#0xD]
56D550:  LDRB            R1, [R1]; CClock::ms_nGameClockHours
56D552:  SUB.W           R8, R1, #7
56D556:  LSLS            R0, R0, #0x1B
56D558:  BMI             loc_56D576
56D55A:  LDR.W           R0, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x56D568)
56D55E:  UXTB.W          R1, R8
56D562:  CMP             R1, #0xF
56D564:  ADD             R0, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
56D566:  LDR             R0, [R0]; CCarCtrl::NumParkedCars ...
56D568:  LDR             R0, [R0]; CCarCtrl::NumParkedCars
56D56A:  BCC             loc_56D572
56D56C:  CMP             R0, #9
56D56E:  BLE             loc_56D576
56D570:  B               loc_56D594
56D572:  CMP             R0, #4
56D574:  BGT             loc_56D594
56D576:  LDRSH.W         R1, [R4]; int
56D57A:  MOV.W           R9, #0xFFFFFFFF
56D57E:  CMP.W           R1, #0xFFFFFFFF
56D582:  BLE             loc_56D5B8
56D584:  MOV             R0, R4; this
56D586:  BLX             j__ZN13CCarGenerator16CheckForBlockageEi; CCarGenerator::CheckForBlockage(int)
56D58A:  CMP             R0, #0
56D58C:  BEQ             loc_56D648
56D58E:  LDR             R0, [R4,#0x14]
56D590:  ADDS            R0, #4
56D592:  STR             R0, [R4,#0x14]
56D594:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x56D59E)
56D598:  LDR             R1, [SP,#0xA0+var_3C]
56D59A:  ADD             R0, PC; __stack_chk_guard_ptr
56D59C:  LDR             R0, [R0]; __stack_chk_guard
56D59E:  LDR             R0, [R0]
56D5A0:  SUBS            R0, R0, R1
56D5A2:  ITTTT EQ
56D5A4:  ADDEQ           SP, SP, #0x68 ; 'h'
56D5A6:  VPOPEQ          {D8-D10}
56D5AA:  ADDEQ           SP, SP, #4
56D5AC:  POPEQ.W         {R8-R11}
56D5B0:  IT EQ
56D5B2:  POPEQ           {R4-R7,PC}
56D5B4:  BLX             __stack_chk_fail
56D5B8:  CMP             R1, R9
56D5BA:  BEQ             loc_56D5D4
56D5BC:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x56D5CA)
56D5C0:  NEGS            R5, R1
56D5C2:  RSB.W           R1, R1, R5,LSL#2
56D5C6:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
56D5C8:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
56D5CA:  ADD.W           R0, R0, R1,LSL#2
56D5CE:  LDRB            R0, [R0,#0x10]
56D5D0:  CMP             R0, #1
56D5D2:  BEQ             loc_56D63A
56D5D4:  ADD             R5, SP, #0xA0+var_80
56D5D6:  MOV.W           R1, #0xFFFFFFFF
56D5DA:  MOV             R0, R5; int
56D5DC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
56D5E0:  MOV             R0, R5; this
56D5E2:  MOVS            R1, #0; CVector *
56D5E4:  BLX             j__ZN9CTheZones11GetZoneInfoEPK7CVectorPP5CZone; CTheZones::GetZoneInfo(CVector const*,CZone **)
56D5E8:  LDR.W           R0, =(_ZN11CPopulation23m_AppropriateLoadedCarsE_ptr - 0x56D5F4)
56D5EC:  MOVS            R1, #1; bool
56D5EE:  MOVS            R2, #1; bool
56D5F0:  ADD             R0, PC; _ZN11CPopulation23m_AppropriateLoadedCarsE_ptr
56D5F2:  LDR             R0, [R0]; this
56D5F4:  BLX             j__ZN15CLoadedCarGroup13PickRandomCarEbb; CLoadedCarGroup::PickRandomCar(bool,bool)
56D5F8:  MOV             R5, R0
56D5FA:  CMP             R5, #0
56D5FC:  BLT             loc_56D594
56D5FE:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56D606)
56D602:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56D604:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56D606:  LDR.W           R0, [R0,R5,LSL#2]
56D60A:  LDRB.W          R1, [R0,#0x65]
56D60E:  CMP             R1, #5
56D610:  BEQ             loc_56D594
56D612:  LDR             R0, [R0,#0x2C]
56D614:  CBZ             R0, loc_56D630
56D616:  VLDR            S0, [R0,#4]
56D61A:  VMOV.F32        S4, #8.0
56D61E:  VLDR            S2, [R0,#0x10]
56D622:  VSUB.F32        S0, S2, S0
56D626:  VCMPE.F32       S0, S4
56D62A:  VMRS            APSR_nzcv, FPSCR
56D62E:  BGT             loc_56D594
56D630:  NEGS            R0, R5
56D632:  STRH            R0, [R4]
56D634:  MOVW            R0, #0xFFFF
56D638:  STRH            R0, [R4,#2]
56D63A:  MOV             R0, R4; this
56D63C:  MOV             R1, R5; int
56D63E:  BLX             j__ZN13CCarGenerator16CheckForBlockageEi; CCarGenerator::CheckForBlockage(int)
56D642:  CMP             R0, #0
56D644:  BNE             loc_56D58E
56D646:  B               loc_56D664
56D648:  LDRSH.W         R0, [R4]; this
56D64C:  MOVS            R1, #8; int
56D64E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
56D652:  LDRSH.W         R5, [R4]
56D656:  CMP.W           R5, #0x24C
56D65A:  BNE             loc_56D664
56D65C:  MOVS            R0, #dword_A8; this
56D65E:  MOVS            R1, #8; int
56D660:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
56D664:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x56D670)
56D668:  ADD.W           R1, R5, R5,LSL#2; int
56D66C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
56D66E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
56D670:  ADD.W           R0, R0, R1,LSL#2
56D674:  LDRB            R0, [R0,#0x10]
56D676:  CMP             R0, #1
56D678:  BNE             loc_56D594
56D67A:  CMP.W           R5, #0x24C
56D67E:  ITT EQ
56D680:  LDRHEQ          R0, [R4]
56D682:  CMPEQ.W         R0, #0x24C
56D686:  BEQ             loc_56D6C4
56D688:  MOV             R0, R5; this
56D68A:  BLX             j__ZN10CModelInfo11IsBoatModelEi; CModelInfo::IsBoatModel(int)
56D68E:  CBZ             R0, loc_56D6D8
56D690:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56D698)
56D694:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56D696:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56D698:  LDR.W           R0, [R0,R5,LSL#2]
56D69C:  LDR             R0, [R0,#0x54]
56D69E:  CMP             R0, #5
56D6A0:  BEQ.W           loc_56D7FC
56D6A4:  CMP             R0, #4
56D6A6:  BEQ.W           loc_56D810
56D6AA:  CMP             R0, #3
56D6AC:  BNE.W           loc_56D824
56D6B0:  MOVW            R0, #(elf_hash_bucket+0x930); this
56D6B4:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56D6B8:  MOV             R1, R5; int
56D6BA:  MOVS            R2, #3; unsigned __int8
56D6BC:  MOV             R6, R0
56D6BE:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
56D6C2:  B               loc_56D826
56D6C4:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x56D6CC)
56D6C8:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
56D6CA:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
56D6CC:  LDRB.W          R0, [R0,#(byte_713060 - 0x712330)]
56D6D0:  CMP             R0, #1
56D6D2:  BNE.W           loc_56D594
56D6D6:  B               loc_56D688
56D6D8:  MOVW            R0, #0x1A1
56D6DC:  CMP             R5, R0
56D6DE:  IT NE
56D6E0:  CMPNE.W         R5, #0x1CC
56D6E4:  BEQ             loc_56D690
56D6E6:  MOVW            R0, #0x1BF
56D6EA:  CMP             R5, R0
56D6EC:  BEQ             loc_56D690
56D6EE:  MOV             R10, R4
56D6F0:  VMOV.F32        S0, #0.125
56D6F4:  LDRSH.W         R0, [R10,#4]!
56D6F8:  VMOV.F32        S6, #2.0
56D6FC:  VLDR            S8, =-100.0
56D700:  MOV             R11, R4
56D702:  VLDR            S10, =1000.0
56D706:  MOVS            R1, #1
56D708:  VMOV            S2, R0
56D70C:  ADD             R2, SP, #0xA0+var_80; int
56D70E:  ADD             R3, SP, #0xA0+var_84; int
56D710:  VCVT.F32.S32    S2, S2
56D714:  LDRSH.W         R0, [R4,#8]
56D718:  VMOV            S4, R0
56D71C:  VCVT.F32.S32    S4, S4
56D720:  VMUL.F32        S2, S2, S0
56D724:  VMUL.F32        S4, S4, S0
56D728:  VSTR            S2, [SP,#0xA0+var_54]
56D72C:  LDRSH.W         R0, [R11,#6]!
56D730:  VCMPE.F32       S4, S8
56D734:  VMRS            APSR_nzcv, FPSCR
56D738:  VADD.F32        S2, S4, S6
56D73C:  VMOV            S6, R0
56D740:  MOV.W           R0, #0
56D744:  VCVT.F32.S32    S6, S6
56D748:  VMUL.F32        S0, S6, S0
56D74C:  IT LE
56D74E:  VMOVLE.F32      S2, S10
56D752:  VSTR            S2, [SP,#0xA0+var_4C]
56D756:  VSTR            S0, [SP,#0xA0+var_50]
56D75A:  STRD.W          R1, R0, [SP,#0xA0+var_A0]; int
56D75E:  MOVS            R1, #0
56D760:  STRD.W          R0, R0, [SP,#0xA0+var_98]; int
56D764:  MOVT            R1, #0xC47A; int
56D768:  STRD.W          R0, R0, [SP,#0xA0+var_90]; int
56D76C:  STR             R0, [SP,#0xA0+var_88]; int
56D76E:  ADD             R0, SP, #0xA0+var_54; CVector *
56D770:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
56D774:  CMP             R0, #1
56D776:  BNE.W           loc_56D594
56D77A:  LDR.W           R0, =(_ZN17CTheCarGenerators17CarGeneratorArrayE_ptr - 0x56D786)
56D77E:  LDR.W           R1, =(_ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr - 0x56D78C)
56D782:  ADD             R0, PC; _ZN17CTheCarGenerators17CarGeneratorArrayE_ptr
56D784:  VLDR            S16, [SP,#0xA0+var_78]
56D788:  ADD             R1, PC; _ZN17CTheCarGenerators21m_SpecialPlateHandlerE_ptr
56D78A:  LDR             R2, [R0]; CTheCarGenerators::CarGeneratorArray ...
56D78C:  LDR             R0, [R1]; this
56D78E:  SUBS            R1, R4, R2
56D790:  ADD             R2, SP, #0xA0+var_48; char *
56D792:  LSRS            R1, R1, #5; int
56D794:  BLX             j__ZN20CSpecialPlateHandler4FindEiPc; CSpecialPlateHandler::Find(int,char *)
56D798:  LDRB.W          R0, [SP,#0xA0+var_48]
56D79C:  CBZ             R0, loc_56D7B8
56D79E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56D7A6)
56D7A2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56D7A4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56D7A6:  LDR.W           R0, [R0,R5,LSL#2]; this
56D7AA:  LDR             R1, [R0,#0x3C]
56D7AC:  CMP             R1, #0
56D7AE:  ITT NE
56D7B0:  ADDNE.W         R1, SP, #0xA0+var_48; char *
56D7B4:  BLXNE           j__ZN17CVehicleModelInfo21SetCustomCarPlateTextEPc; CVehicleModelInfo::SetCustomCarPlateText(char *)
56D7B8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56D7C0)
56D7BC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56D7BE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56D7C0:  LDR.W           R0, [R0,R5,LSL#2]
56D7C4:  LDR             R0, [R0,#0x54]
56D7C6:  SUBS            R0, #1; switch 11 cases
56D7C8:  CMP             R0, #0xA
56D7CA:  BHI.W           def_56D7CE; jumptable 0056D7CE default case, cases 5,7,8
56D7CE:  TBH.W           [PC,R0,LSL#1]; switch jump
56D7D2:  DCW 0xB; jump table for switch statement
56D7D4:  DCW 0x23B
56D7D6:  DCW 0x245
56D7D8:  DCW 0x24F
56D7DA:  DCW 0x259
56D7DC:  DCW 0x264
56D7DE:  DCW 0x259
56D7E0:  DCW 0x259
56D7E2:  DCW 0x26E
56D7E4:  DCW 0x278
56D7E6:  DCW 0x288
56D7E8:  MOV.W           R0, #(elf_hash_bucket+0x8B4); jumptable 0056D7CE case 1
56D7EC:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56D7F0:  MOV             R1, R5; int
56D7F2:  MOVS            R2, #3; unsigned __int8
56D7F4:  MOV             R6, R0
56D7F6:  BLX             j__ZN13CMonsterTruckC2Eih; CMonsterTruck::CMonsterTruck(int,uchar)
56D7FA:  B               loc_56DCF4
56D7FC:  MOVW            R0, #(elf_hash_bucket+0x700); this
56D800:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56D804:  MOV             R1, R5; int
56D806:  MOVS            R2, #3; unsigned __int8
56D808:  MOV             R6, R0
56D80A:  BLX             j__ZN5CBoatC2Eih; CBoat::CBoat(int,uchar)
56D80E:  B               loc_56D826
56D810:  MOVW            R0, #(elf_hash_bucket+0x91C); this
56D814:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56D818:  MOV             R1, R5; int
56D81A:  MOVS            R2, #3; unsigned __int8
56D81C:  MOV             R6, R0
56D81E:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
56D822:  B               loc_56D826
56D824:  MOVS            R6, #0
56D826:  LDRSH.W         R0, [R4,#8]
56D82A:  VMOV.F32        S0, #0.125
56D82E:  ADD.W           R10, R4, #4
56D832:  VMOV            S2, R0
56D836:  VCVT.F32.S32    S2, S2
56D83A:  VMUL.F32        S16, S2, S0
56D83E:  VLDR            S2, =-100.0
56D842:  VCMPE.F32       S16, S2
56D846:  VMRS            APSR_nzcv, FPSCR
56D84A:  BLE             loc_56D852
56D84C:  ADD.W           R11, R4, #6
56D850:  B               loc_56D884
56D852:  MOV             R11, R4
56D854:  LDRSH.W         R0, [R11,#6]!
56D858:  VMOV            S2, R0
56D85C:  VCVT.F32.S32    S2, S2
56D860:  LDRSH.W         R0, [R11,#-2]
56D864:  VMOV            S4, R0
56D868:  VCVT.F32.S32    S4, S4
56D86C:  VMUL.F32        S2, S2, S0
56D870:  VMUL.F32        S0, S4, S0
56D874:  VMOV            R1, S2; float
56D878:  VMOV            R0, S0; this
56D87C:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
56D880:  VMOV            S16, R0
56D884:  MOVS            R0, #0xFF
56D886:  STRH.W          R0, [R6,#0x4B0]
56D88A:  LDR             R0, [R6]
56D88C:  MOVS            R1, #0
56D88E:  LDR             R2, [R0,#0x14]
56D890:  MOV             R0, R6
56D892:  BLX             R2
56D894:  LDR.W           R0, [R6,#0x42C]
56D898:  BIC.W           R0, R0, #0x10
56D89C:  STR.W           R0, [R6,#0x42C]
56D8A0:  MOV             R0, R6; this
56D8A2:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
56D8A6:  LDRSH.W         R1, [R11]
56D8AA:  VMOV.F32        S4, #0.125
56D8AE:  LDRSH.W         R2, [R10]
56D8B2:  ADDW            R10, R6, #0x42C
56D8B6:  VMOV            S0, R1
56D8BA:  VCVT.F32.S32    S2, S0
56D8BE:  VMOV            S0, R2
56D8C2:  VCVT.F32.S32    S6, S0
56D8C6:  VMOV            S0, R0
56D8CA:  LDR             R0, [R6,#0x14]
56D8CC:  VADD.F32        S0, S16, S0
56D8D0:  CMP             R0, #0
56D8D2:  VMUL.F32        S2, S2, S4
56D8D6:  VMUL.F32        S4, S6, S4
56D8DA:  BEQ             loc_56D8EC
56D8DC:  VSTR            S4, [R0,#0x30]
56D8E0:  LDR             R0, [R6,#0x14]
56D8E2:  VSTR            S2, [R0,#0x34]
56D8E6:  LDR             R0, [R6,#0x14]
56D8E8:  ADDS            R0, #0x38 ; '8'
56D8EA:  B               loc_56D8F8
56D8EC:  ADD.W           R0, R6, #0xC
56D8F0:  VSTR            S4, [R6,#4]
56D8F4:  VSTR            S2, [R6,#8]
56D8F8:  VSTR            S0, [R0]
56D8FC:  LDRB            R0, [R4,#0xA]
56D8FE:  VLDR            S2, =0.024544
56D902:  VMOV            S0, R0
56D906:  VCVT.F32.U32    S0, S0
56D90A:  LDR             R0, [R6,#0x14]; this
56D90C:  CMP             R0, #0
56D90E:  VMUL.F32        S0, S0, S2
56D912:  BEQ             loc_56D954
56D914:  VMOV            R3, S0; float
56D918:  MOVS            R1, #0; x
56D91A:  MOVS            R2, #0; float
56D91C:  VLDR            S16, [R0,#0x30]
56D920:  VLDR            S18, [R0,#0x34]
56D924:  VLDR            S20, [R0,#0x38]
56D928:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
56D92C:  LDR             R0, [R6,#0x14]
56D92E:  VLDR            S0, [R0,#0x30]
56D932:  VLDR            S2, [R0,#0x34]
56D936:  VLDR            S4, [R0,#0x38]
56D93A:  VADD.F32        S0, S16, S0
56D93E:  VADD.F32        S2, S18, S2
56D942:  VADD.F32        S4, S20, S4
56D946:  VSTR            S0, [R0,#0x30]
56D94A:  VSTR            S2, [R0,#0x34]
56D94E:  VSTR            S4, [R0,#0x38]
56D952:  B               loc_56D958
56D954:  VSTR            S0, [R6,#0x10]
56D958:  MOVS            R0, #1
56D95A:  LDRB.W          R1, [R6,#0x3A]
56D95E:  STR.W           R0, [R6,#0x508]
56D962:  MOVS            R0, #4
56D964:  BFI.W           R1, R0, #3, #0x1D
56D968:  STRB.W          R1, [R6,#0x3A]
56D96C:  LDRB            R0, [R4,#0xD]
56D96E:  LDR.W           R1, [R10]
56D972:  UBFX.W          R0, R0, #3, #0xF
56D976:  BFI.W           R1, R0, #0x11, #1; CEntity *
56D97A:  UXTB.W          R0, R8
56D97E:  CMP             R0, #0xE
56D980:  STR.W           R1, [R10]
56D984:  BHI.W           loc_56DA9C
56D988:  LDRSH.W         R0, [R6,#0x26]
56D98C:  SUBW            R0, R0, #0x213
56D990:  CMP             R0, #1
56D992:  BHI.W           loc_56DA9C
56D996:  LDR             R0, [R6,#0x14]
56D998:  MOVW            R8, #0
56D99C:  LDR.W           R12, =(ThePaths_ptr - 0x56D9AE)
56D9A0:  MOV.W           LR, #1
56D9A4:  ADD.W           R3, R0, #0x30 ; '0'
56D9A8:  CMP             R0, #0
56D9AA:  ADD             R12, PC; ThePaths_ptr
56D9AC:  IT EQ
56D9AE:  ADDEQ           R3, R6, #4
56D9B0:  LDM             R3, {R1-R3}
56D9B2:  MOVT            R8, #0x41A0
56D9B6:  LDR.W           R0, [R12]; ThePaths
56D9BA:  MOV.W           R12, #0
56D9BE:  STRD.W          R12, R8, [SP,#0xA0+var_A0]
56D9C2:  STRD.W          R12, R12, [SP,#0xA0+var_98]; int
56D9C6:  STRD.W          R12, R12, [SP,#0xA0+var_90]
56D9CA:  STR.W           LR, [SP,#0xA0+var_88]
56D9CE:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
56D9D2:  MOV             R8, R0
56D9D4:  UXTH.W          R1, R9
56D9D8:  UXTH.W          R0, R8
56D9DC:  CMP             R0, R1
56D9DE:  BEQ             loc_56DA9C
56D9E0:  LDR             R1, =(ThePaths_ptr - 0x56D9EC)
56D9E2:  MOV.W           R2, R8,LSR#16
56D9E6:  LSLS            R3, R2, #3
56D9E8:  ADD             R1, PC; ThePaths_ptr
56D9EA:  SUB.W           R3, R3, R8,LSR#16
56D9EE:  LDR             R1, [R1]; ThePaths
56D9F0:  ADD.W           R1, R1, R0,LSL#2
56D9F4:  LDR.W           R1, [R1,#0x804]
56D9F8:  ADD.W           R3, R1, R3,LSL#2
56D9FC:  LDRH            R3, [R3,#0x18]
56D9FE:  LSLS            R3, R3, #0x1C
56DA00:  BEQ             loc_56DA9C
56DA02:  LDR             R3, =(ThePaths_ptr - 0x56DA0C)
56DA04:  RSB.W           R2, R2, R2,LSL#3
56DA08:  ADD             R3, PC; ThePaths_ptr
56DA0A:  ADD.W           R1, R1, R2,LSL#2
56DA0E:  LDR             R3, [R3]; ThePaths
56DA10:  LDRSH.W         R1, [R1,#0x10]
56DA14:  ADD.W           R0, R3, R0,LSL#2
56DA18:  LDR.W           R0, [R0,#0xA44]
56DA1C:  LDR.W           R11, [R0,R1,LSL#2]
56DA20:  UXTH.W          R0, R11
56DA24:  ADD.W           R0, R3, R0,LSL#2
56DA28:  LDR.W           R0, [R0,#0x804]
56DA2C:  CBZ             R0, loc_56DA9C
56DA2E:  MOV             R0, R6; this
56DA30:  MOVS            R1, #1; int
56DA32:  MOVS            R2, #0; bool
56DA34:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
56DA38:  MOVS            R0, #1
56DA3A:  MOVS            R1, #(stderr+3); CEntity *
56DA3C:  STRB.W          R0, [R6,#0x3BE]
56DA40:  MOVS            R0, #7
56DA42:  STRB.W          R0, [R6,#0x3D4]
56DA46:  STR.W           R8, [R6,#0x394]
56DA4A:  LDRB.W          R0, [R6,#0x3A]
56DA4E:  STR.W           R11, [R6,#0x398]
56DA52:  BFI.W           R0, R1, #3, #0x1D
56DA56:  STRB.W          R0, [R6,#0x3A]
56DA5A:  LDR.W           R0, [R10,#4]
56DA5E:  ORR.W           R0, R0, #0x40 ; '@'
56DA62:  STR.W           R0, [R10,#4]
56DA66:  MOVS            R0, #0xFF
56DA68:  STRH.W          R0, [R6,#0x4B0]
56DA6C:  LDRB            R0, [R4,#0xD]
56DA6E:  ORR.W           R0, R0, #1
56DA72:  STRB            R0, [R4,#0xD]
56DA74:  MOV             R0, R6; this
56DA76:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
56DA7A:  MOVS            R0, #0x63 ; 'c'
56DA7C:  MOVS            R1, #0
56DA7E:  STRD.W          R1, R0, [SP,#0xA0+var_A0]; bool
56DA82:  MOV             R0, R6; this
56DA84:  MOVS            R1, #byte_4; CVehicle *
56DA86:  MOVS            R2, #0; int
56DA88:  MOVS            R3, #0; CPopulation *
56DA8A:  BLX             j__ZN8CCarCtrl34SetUpDriverAndPassengersForVehicleEP8CVehicleiibbi; CCarCtrl::SetUpDriverAndPassengersForVehicle(CVehicle *,int,int,bool,bool,int)
56DA8E:  B               loc_56DAA2
56DA90:  DCFS -100.0
56DA94:  DCFS 1000.0
56DA98:  DCFS 0.024544
56DA9C:  MOV             R0, R6; this
56DA9E:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
56DAA2:  CMP.W           R5, #0x24C
56DAA6:  ITT EQ
56DAA8:  LDRHEQ          R0, [R4]
56DAAA:  CMPEQ.W         R0, #0x24C
56DAAE:  BNE             loc_56DB80
56DAB0:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x56DAB6)
56DAB2:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
56DAB4:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
56DAB6:  LDRB.W          R0, [R0,#(byte_713060 - 0x712330)]
56DABA:  CMP             R0, #1
56DABC:  BNE             loc_56DB80
56DABE:  VMOV.F32        S0, #3.0
56DAC2:  LDR             R0, [R6,#0x14]
56DAC4:  ADD             R2, SP, #0xA0+var_48
56DAC6:  MOVS            R3, #0
56DAC8:  ADD.W           R1, R0, #0x30 ; '0'
56DACC:  CMP             R0, #0
56DACE:  VLDR            S2, [R0]
56DAD2:  VLDR            S4, [R0,#4]
56DAD6:  VLDR            S6, [R0,#8]
56DADA:  IT EQ
56DADC:  ADDEQ           R1, R6, #4
56DADE:  VLDR            S8, [R1,#4]
56DAE2:  MOVS            R0, #4
56DAE4:  VMUL.F32        S4, S4, S0
56DAE8:  VLDR            S10, [R1,#8]
56DAEC:  VMUL.F32        S2, S2, S0
56DAF0:  VMUL.F32        S0, S6, S0
56DAF4:  VLDR            S6, [R1]
56DAF8:  MOVS            R1, #0xA8
56DAFA:  VSUB.F32        S4, S8, S4
56DAFE:  VSUB.F32        S2, S6, S2
56DB02:  VSUB.F32        S0, S10, S0
56DB06:  VSTR            S4, [SP,#0xA0+var_44]
56DB0A:  VSTR            S2, [SP,#0xA0+var_48]
56DB0E:  VSTR            S0, [SP,#0xA0+var_40]
56DB12:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
56DB16:  MOV             R5, R0
56DB18:  CBZ             R5, loc_56DB80
56DB1A:  LDR             R0, =(byte_A065C8 - 0x56DB20)
56DB1C:  ADD             R0, PC; byte_A065C8
56DB1E:  LDRB            R0, [R0]
56DB20:  DMB.W           ISH
56DB24:  TST.W           R0, #1
56DB28:  BNE             loc_56DB50
56DB2A:  LDR             R0, =(byte_A065C8 - 0x56DB30)
56DB2C:  ADD             R0, PC; byte_A065C8 ; __guard *
56DB2E:  BLX             j___cxa_guard_acquire
56DB32:  CBZ             R0, loc_56DB50
56DB34:  LDR             R1, =(dword_A065BC - 0x56DB42)
56DB36:  MOVW            R3, #0x999A
56DB3A:  LDR             R0, =(byte_A065C8 - 0x56DB48)
56DB3C:  MOVS            R2, #0
56DB3E:  ADD             R1, PC; dword_A065BC
56DB40:  MOVT            R3, #0x3F19
56DB44:  ADD             R0, PC; byte_A065C8 ; __guard *
56DB46:  STRD.W          R2, R2, [R1]
56DB4A:  STR             R3, [R1,#(dword_A065C4 - 0xA065BC)]
56DB4C:  BLX             j___cxa_guard_release
56DB50:  LDR             R0, =(dword_A065BC - 0x56DB5C)
56DB52:  MOVS            R1, #0
56DB54:  MOV.W           R12, #3
56DB58:  ADD             R0, PC; dword_A065BC
56DB5A:  LDRD.W          R2, R3, [R0]; int
56DB5E:  LDR             R0, [R0,#(dword_A065C4 - 0xA065BC)]
56DB60:  STRD.W          R0, R12, [SP,#0xA0+var_A0]; int
56DB64:  MOV             R0, R5; int
56DB66:  STRD.W          R1, R1, [SP,#0xA0+var_98]; float
56DB6A:  MOV             R1, R6; this
56DB6C:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
56DB70:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x56DB7C)
56DB72:  MOV             R1, R5
56DB74:  MOVS            R2, #0
56DB76:  MOVS            R3, #0
56DB78:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
56DB7A:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
56DB7C:  BLX             j__ZN17CScriptsForBrains27CheckIfNewEntityNeedsScriptEP7CEntityaP13CPedGenerator; CScriptsForBrains::CheckIfNewEntityNeedsScript(CEntity *,signed char,CPedGenerator *)
56DB80:  BLX             rand
56DB84:  UXTH            R0, R0
56DB86:  VLDR            S16, =0.000015259
56DB8A:  VMOV            S0, R0
56DB8E:  VLDR            S18, =100.0
56DB92:  VCVT.F32.S32    S0, S0
56DB96:  LDRB            R0, [R4,#0xB]
56DB98:  VMUL.F32        S0, S0, S16
56DB9C:  VMUL.F32        S0, S0, S18
56DBA0:  VCVT.S32.F32    S0, S0
56DBA4:  VMOV            R1, S0
56DBA8:  CMP             R1, R0
56DBAA:  IT LT
56DBAC:  STRHLT.W        R9, [R6,#0x460]
56DBB0:  BLX             rand
56DBB4:  UXTH            R0, R0
56DBB6:  VMOV            S0, R0
56DBBA:  VCVT.F32.S32    S0, S0
56DBBE:  LDRB            R0, [R4,#0xC]
56DBC0:  VMUL.F32        S0, S0, S16
56DBC4:  VMUL.F32        S0, S0, S18
56DBC8:  VCVT.S32.F32    S0, S0
56DBCC:  VMOV            R1, S0
56DBD0:  CMP             R1, R0
56DBD2:  ITT LT
56DBD4:  MOVLT           R0, #2
56DBD6:  STRLT.W         R0, [R6,#0x508]
56DBDA:  LDRB            R0, [R4,#2]
56DBDC:  CMP             R0, #0xFF
56DBDE:  ITT NE
56DBE0:  LDRBNE          R1, [R4,#3]
56DBE2:  CMPNE           R1, #0xFF
56DBE4:  BEQ             loc_56DBF2
56DBE6:  STRB.W          R0, [R6,#0x438]
56DBEA:  LDRB            R0, [R4,#3]
56DBEC:  STRB.W          R0, [R6,#0x439]
56DBF0:  B               loc_56DC06
56DBF2:  LDRSH.W         R0, [R4]
56DBF6:  CMP             R0, R9
56DBF8:  ITTTT LT
56DBFA:  LDRBLT.W        R0, [R6,#0x438]
56DBFE:  STRBLT          R0, [R4,#2]
56DC00:  LDRBLT.W        R0, [R6,#0x439]
56DC04:  STRBLT          R0, [R4,#3]
56DC06:  LDR             R0, [R6,#0x18]
56DC08:  MOVS            R1, #0
56DC0A:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
56DC0E:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x56DC1C)
56DC10:  MOV             R2, #0xBFE6D523
56DC18:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
56DC1A:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
56DC1C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
56DC1E:  LDRD.W          R1, R0, [R0]
56DC22:  SUBS            R1, R6, R1
56DC24:  ASRS            R1, R1, #2
56DC26:  MULS            R1, R2
56DC28:  LDRB            R2, [R0,R1]
56DC2A:  LDRH            R0, [R4,#0x1A]
56DC2C:  ORR.W           R1, R2, R1,LSL#8
56DC30:  STRH            R1, [R4,#0x18]
56DC32:  UXTH.W          R1, R9
56DC36:  CMP             R0, R1
56DC38:  ITT NE
56DC3A:  SUBNE           R0, #1
56DC3C:  STRHNE          R0, [R4,#0x1A]
56DC3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56DC44)
56DC40:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56DC42:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56DC44:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
56DC46:  B               loc_56D590
56DC48:  MOV.W           R0, #(elf_hash_bucket+0x8D4); jumptable 0056D7CE case 2
56DC4C:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DC50:  MOV             R1, R5; int
56DC52:  MOVS            R2, #3; unsigned __int8
56DC54:  MOV             R6, R0
56DC56:  BLX             j__ZN9CQuadBikeC2Eih; CQuadBike::CQuadBike(int,uchar)
56DC5A:  B               loc_56DCF4
56DC5C:  MOVW            R0, #(elf_hash_bucket+0x930); jumptable 0056D7CE case 3
56DC60:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DC64:  MOV             R1, R5; int
56DC66:  MOVS            R2, #3; unsigned __int8
56DC68:  MOV             R6, R0
56DC6A:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
56DC6E:  B               loc_56DCF4
56DC70:  MOVW            R0, #(elf_hash_bucket+0x91C); jumptable 0056D7CE case 4
56DC74:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DC78:  MOV             R1, R5; int
56DC7A:  MOVS            R2, #3; unsigned __int8
56DC7C:  MOV             R6, R0
56DC7E:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
56DC82:  B               loc_56DCF4
56DC84:  MOVW            R0, #(elf_hash_bucket+0x8A0); jumptable 0056D7CE default case, cases 5,7,8
56DC88:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DC8C:  MOV             R1, R5; int
56DC8E:  MOVS            R2, #3; unsigned __int8
56DC90:  MOVS            R3, #1; unsigned __int8
56DC92:  MOV             R6, R0
56DC94:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
56DC98:  B               loc_56DCF4
56DC9A:  MOV.W           R0, #(elf_hash_bucket+0x5C4); jumptable 0056D7CE case 6
56DC9E:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DCA2:  MOV             R1, R5; int
56DCA4:  MOVS            R2, #3; unsigned __int8
56DCA6:  MOV             R6, R0
56DCA8:  BLX             j__ZN6CTrainC2Eih; CTrain::CTrain(int,uchar)
56DCAC:  B               loc_56DCF4
56DCAE:  MOVW            R0, #(elf_hash_bucket+0x72C); jumptable 0056D7CE case 9
56DCB2:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DCB6:  MOV             R1, R5; int
56DCB8:  MOVS            R2, #3; unsigned __int8
56DCBA:  MOV             R6, R0
56DCBC:  BLX             j__ZN5CBikeC2Eih_0; CBike::CBike(int,uchar)
56DCC0:  B               loc_56DCD4
56DCC2:  MOVW            R0, #(elf_hash_bucket+0x750); jumptable 0056D7CE case 10
56DCC6:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DCCA:  MOV             R1, R5; int
56DCCC:  MOVS            R2, #3; unsigned __int8
56DCCE:  MOV             R6, R0
56DCD0:  BLX             j__ZN4CBmxC2Eih; CBmx::CBmx(int,uchar)
56DCD4:  LDRB.W          R0, [R6,#0x628]
56DCD8:  ORR.W           R0, R0, #0x10
56DCDC:  STRB.W          R0, [R6,#0x628]
56DCE0:  B               loc_56DCF4
56DCE2:  MOVW            R0, #(elf_hash_bucket+0x90C); jumptable 0056D7CE case 11
56DCE6:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
56DCEA:  MOV             R1, R5; int
56DCEC:  MOVS            R2, #3; unsigned __int8
56DCEE:  MOV             R6, R0
56DCF0:  BLX             j__ZN8CTrailerC2Eih; CTrailer::CTrailer(int,uchar)
56DCF4:  MOV             R0, R6; this
56DCF6:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
56DCFA:  LDRB.W          R0, [R6,#0x4B2]
56DCFE:  LDR.W           R1, [R6,#0x42C]
56DD02:  AND.W           R0, R0, #0xE7
56DD06:  STRB.W          R0, [R6,#0x4B2]
56DD0A:  BIC.W           R0, R1, #0x40 ; '@'
56DD0E:  STR.W           R0, [R6,#0x42C]
56DD12:  LDRB.W          R1, [SP,#0xA0+var_5B]; unsigned __int8
56DD16:  MOV             R0, R6; this
56DD18:  BLX             j__ZN8CVehicle20SetCollisionLightingEh; CVehicle::SetCollisionLighting(uchar)
56DD1C:  B               loc_56D88A
