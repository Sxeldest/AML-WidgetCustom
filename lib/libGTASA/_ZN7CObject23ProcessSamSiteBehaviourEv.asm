; =========================================================
; Game Engine Function: _ZN7CObject23ProcessSamSiteBehaviourEv
; Address            : 0x454540 - 0x45481C
; =========================================================

454540:  PUSH            {R4-R7,LR}
454542:  ADD             R7, SP, #0xC
454544:  PUSH.W          {R8}
454548:  VPUSH           {D8-D9}
45454C:  SUB             SP, SP, #0x38
45454E:  MOV             R4, R0
454550:  LDRB.W          R0, [R4,#0x145]
454554:  LSLS            R0, R0, #0x1D
454556:  BMI.W           loc_45476E
45455A:  LDR             R1, [R4,#0x14]
45455C:  ADDS            R5, R4, #4
45455E:  VLDR            S0, =-1000.0
454562:  CMP             R1, #0
454564:  MOV             R0, R5
454566:  IT NE
454568:  ADDNE.W         R0, R1, #0x30 ; '0'
45456C:  VLDR            S2, [R0]
454570:  VCMPE.F32       S2, S0
454574:  VMRS            APSR_nzcv, FPSCR
454578:  BGE             loc_454580
45457A:  LDR             R0, =(_ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr - 0x454580)
45457C:  ADD             R0, PC; _ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr
45457E:  B               loc_454584
454580:  LDR             R0, =(_ZN7CObject22bArea51SamSiteDisabledE_ptr - 0x454586)
454582:  ADD             R0, PC; _ZN7CObject22bArea51SamSiteDisabledE_ptr
454584:  LDR             R0, [R0]; CObject::bAircraftCarrierSamSiteDisabled
454586:  LDRB            R0, [R0]; CObject::bAircraftCarrierSamSiteDisabled
454588:  CMP             R0, #0
45458A:  BNE.W           loc_45476E
45458E:  LDRD.W          R0, R1, [R1,#0x10]; float
454592:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
454596:  MOV             R6, R0
454598:  MOV.W           R0, #0xFFFFFFFF; int
45459C:  MOVS            R1, #0; bool
45459E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4545A2:  VMOV            S16, R6
4545A6:  CBZ             R0, loc_4545CC
4545A8:  MOV.W           R0, #0xFFFFFFFF; int
4545AC:  MOVS            R1, #0; bool
4545AE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4545B2:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
4545B6:  CMP             R0, #2
4545B8:  BEQ             loc_4545CC
4545BA:  MOV.W           R0, #0xFFFFFFFF; int
4545BE:  MOVS            R1, #0; bool
4545C0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4545C4:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
4545C8:  CMP             R0, #1
4545CA:  BNE             loc_4545E8
4545CC:  MOV.W           R0, #0xFFFFFFFF; int
4545D0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4545D4:  LDR.W           R0, [R0,#0x440]; this
4545D8:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
4545DC:  CBZ             R0, loc_454644
4545DE:  MOV.W           R0, #0xFFFFFFFF; int
4545E2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4545E6:  B               loc_4545F2
4545E8:  MOV.W           R0, #0xFFFFFFFF; int
4545EC:  MOVS            R1, #0; bool
4545EE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4545F2:  MOV             R8, R0
4545F4:  CMP.W           R8, #0
4545F8:  BEQ             loc_454644
4545FA:  VMOV.F32        S0, #-2.0
4545FE:  LDR             R1, [R4,#0x14]
454600:  MOV             R0, R5
454602:  CMP             R1, #0
454604:  IT NE
454606:  ADDNE.W         R0, R1, #0x30 ; '0'
45460A:  LDR.W           R2, [R8,#0x14]; float
45460E:  VLDR            S2, [R0,#8]
454612:  ADD.W           R1, R2, #0x30 ; '0'
454616:  CMP             R2, #0
454618:  IT EQ
45461A:  ADDEQ.W         R1, R8, #4
45461E:  VADD.F32        S0, S2, S0
454622:  VLDR            S2, [R1,#8]
454626:  VCMPE.F32       S2, S0
45462A:  VMRS            APSR_nzcv, FPSCR
45462E:  BLT             loc_454644
454630:  VLDR            S2, =2100.0
454634:  VLDR            S0, [R1,#4]
454638:  VCMPE.F32       S0, S2
45463C:  VMRS            APSR_nzcv, FPSCR
454640:  BLE.W           loc_45477A
454644:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x454654)
454646:  MOVS            R6, #0
454648:  VLDR            S0, =0.005
45464C:  MOV.W           R8, #0
454650:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
454652:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
454654:  VLDR            S2, [R0]
454658:  VMUL.F32        S0, S2, S0
45465C:  VADD.F32        S0, S16, S0
454660:  VLDR            S2, =-1.5708
454664:  LDR             R0, [R4,#0x14]; this
454666:  VADD.F32        S0, S0, S2
45466A:  VMOV            R1, S0; x
45466E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
454672:  LDR             R0, [R4,#0x18]
454674:  CBZ             R0, loc_45468A
454676:  LDR             R1, [R0,#4]
454678:  LDR             R0, [R4,#0x14]
45467A:  ADDS            R1, #0x10
45467C:  CBZ             R0, loc_454684
45467E:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
454682:  B               loc_45468A
454684:  MOV             R0, R5
454686:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
45468A:  MOV             R0, R4; this
45468C:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
454690:  CMP             R6, #1
454692:  BNE             loc_45476E
454694:  LDR.W           R0, [R8,#0x14]
454698:  LDR             R1, [R4,#0x14]
45469A:  ADD.W           R2, R0, #0x30 ; '0'
45469E:  CMP             R0, #0
4546A0:  IT EQ
4546A2:  ADDEQ.W         R2, R8, #4
4546A6:  CMP             R1, #0
4546A8:  VLDR            D16, [R2]
4546AC:  IT NE
4546AE:  ADDNE.W         R5, R1, #0x30 ; '0'
4546B2:  VLDR            D17, [R5]
4546B6:  VSUB.F32        D16, D17, D16
4546BA:  VLDR            S2, =120.0
4546BE:  VMUL.F32        D0, D16, D16
4546C2:  VADD.F32        S0, S0, S1
4546C6:  VSQRT.F32       S0, S0
4546CA:  VCMPE.F32       S0, S2
4546CE:  VMRS            APSR_nzcv, FPSCR
4546D2:  BGE             loc_45476E
4546D4:  VABS.F32        S0, S18
4546D8:  VLDR            S2, =0.1
4546DC:  VCMPE.F32       S0, S2
4546E0:  VMRS            APSR_nzcv, FPSCR
4546E4:  BGE             loc_45476E
4546E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4546F6)
4546E8:  MOVW            R3, #0x4DD3
4546EC:  LDR             R2, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x4546F8)
4546EE:  MOVT            R3, #0x1062
4546F2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4546F4:  ADD             R2, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
4546F6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4546F8:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds ...
4546FA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4546FC:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds
4546FE:  UMULL.W         R0, R6, R0, R3
454702:  UMULL.W         R0, R2, R2, R3
454706:  LSRS            R0, R6, #8
454708:  CMP.W           R0, R2,LSR#8
45470C:  BEQ             loc_45476E
45470E:  VLDR            S0, [R1,#0x10]
454712:  MOV.W           R0, #0x40000000
454716:  VLDR            S6, [R1,#0x20]
45471A:  MOVS            R5, #0
45471C:  VLDR            S2, [R1,#0x14]
454720:  ADD             R2, SP, #0x58+var_44
454722:  VLDR            S8, [R1,#0x24]
454726:  VADD.F32        S0, S0, S6
45472A:  VLDR            S4, [R1,#0x18]
45472E:  VLDR            S10, [R1,#0x28]
454732:  VADD.F32        S2, S2, S8
454736:  STR             R0, [SP,#0x58+var_40]
454738:  MOV.W           R0, #0x40800000
45473C:  VADD.F32        S4, S4, S10
454740:  STR             R5, [SP,#0x58+var_44]
454742:  STR             R0, [SP,#0x58+var_3C]
454744:  ADD             R0, SP, #0x58+var_38
454746:  VSTR            S2, [SP,#0x58+var_28]
45474A:  VSTR            S0, [SP,#0x58+var_2C]
45474E:  VSTR            S4, [SP,#0x58+var_24]
454752:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
454756:  LDRD.W          R2, R3, [SP,#0x58+var_38]; int
45475A:  ADD             R1, SP, #0x58+var_2C
45475C:  LDR             R0, [SP,#0x58+var_30]
45475E:  STRD.W          R0, R5, [SP,#0x58+var_58]; int
454762:  MOV             R0, R4; this
454764:  STRD.W          R1, R8, [SP,#0x58+var_50]; int
454768:  MOVS            R1, #0x14; float
45476A:  BLX             j__ZN15CProjectileInfo13AddProjectileEP7CEntity11eWeaponType7CVectorfPS3_S1_; CProjectileInfo::AddProjectile(CEntity *,eWeaponType,CVector,float,CVector*,CEntity *)
45476E:  ADD             SP, SP, #0x38 ; '8'
454770:  VPOP            {D8-D9}
454774:  POP.W           {R8}
454778:  POP             {R4-R7,PC}
45477A:  VLDR            S4, [R0,#4]
45477E:  VLDR            S2, [R0]
454782:  VLDR            S6, [R1]
454786:  VSUB.F32        S0, S0, S4
45478A:  VSUB.F32        S2, S6, S2
45478E:  VMOV            R1, S0; float
454792:  VMOV            R0, S2; this
454796:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
45479A:  VMOV            S0, R0
45479E:  VLDR            S2, =3.1416
4547A2:  VSUB.F32        S18, S0, S16
4547A6:  VCMPE.F32       S18, S2
4547AA:  VMRS            APSR_nzcv, FPSCR
4547AE:  BLE             loc_4547C2
4547B0:  VLDR            S4, =-6.2832
4547B4:  VADD.F32        S18, S18, S4
4547B8:  VCMPE.F32       S18, S2
4547BC:  VMRS            APSR_nzcv, FPSCR
4547C0:  BGT             loc_4547B4
4547C2:  VLDR            S2, =-3.1416
4547C6:  VCMPE.F32       S18, S2
4547CA:  VMRS            APSR_nzcv, FPSCR
4547CE:  BGE             loc_4547E2
4547D0:  VLDR            S4, =6.2832
4547D4:  VADD.F32        S18, S18, S4
4547D8:  VCMPE.F32       S18, S2
4547DC:  VMRS            APSR_nzcv, FPSCR
4547E0:  BLT             loc_4547D4
4547E2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4547F0)
4547E4:  VABS.F32        S6, S18
4547E8:  VLDR            S2, =0.05
4547EC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4547EE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4547F0:  VLDR            S4, [R0]
4547F4:  VMUL.F32        S2, S4, S2
4547F8:  VCMPE.F32       S6, S2
4547FC:  VMRS            APSR_nzcv, FPSCR
454800:  BLE             loc_454818
454802:  VCMPE.F32       S18, #0.0
454806:  MOVS            R6, #1
454808:  VMRS            APSR_nzcv, FPSCR
45480C:  ITE GE
45480E:  VADDGE.F32      S0, S16, S2
454812:  VSUBLT.F32      S0, S16, S2
454816:  B               loc_454660
454818:  MOVS            R6, #1
45481A:  B               loc_454660
