; =========================================================
; Game Engine Function: _ZN5CBike15ProcessBuoyancyEv
; Address            : 0x5614FC - 0x561A02
; =========================================================

5614FC:  PUSH            {R4-R7,LR}
5614FE:  ADD             R7, SP, #0xC
561500:  PUSH.W          {R8-R11}
561504:  SUB             SP, SP, #4
561506:  VPUSH           {D8-D9}
56150A:  SUB             SP, SP, #0xB0
56150C:  MOV             R11, R0
56150E:  LDR.W           R0, =(mod_Buoyancy_ptr - 0x56151C)
561512:  LDR.W           R2, [R11,#0xA4]; float
561516:  ADD             R1, SP, #0xE0+var_48
561518:  ADD             R0, PC; mod_Buoyancy_ptr
56151A:  ADD             R3, SP, #0xE0+var_3C; CVector *
56151C:  STR             R1, [SP,#0xE0+var_E0]; CVector *
56151E:  MOV             R1, R11; CPhysical *
561520:  LDR             R0, [R0]; mod_Buoyancy ; this
561522:  BLX             j__ZN9cBuoyancy15ProcessBuoyancyEP9CPhysicalfP7CVectorS3_; cBuoyancy::ProcessBuoyancy(CPhysical *,float,CVector *,CVector *)
561526:  LDR.W           R1, [R11,#0x44]
56152A:  CMP             R0, #1
56152C:  BNE.W           loc_561794
561530:  ADD             R3, SP, #0xE0+var_48
561532:  ORR.W           R0, R1, #0x8000000
561536:  STR.W           R0, [R11,#0x44]
56153A:  MOV             R0, R11
56153C:  LDM             R3, {R1-R3}
56153E:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
561542:  ADD             R3, SP, #0xE0+var_48
561544:  LDM             R3, {R1-R3}
561546:  LDRD.W          R0, R6, [SP,#0xE0+var_3C]
56154A:  LDR             R5, [SP,#0xE0+var_34]
56154C:  STRD.W          R0, R6, [SP,#0xE0+var_E0]; float
561550:  MOV             R0, R11
561552:  STR             R5, [SP,#0xE0+var_D8]; int
561554:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
561558:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x561564)
56155C:  VLDR            S0, =0.008
561560:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
561562:  VLDR            S2, [R11,#0x90]
561566:  VLDR            S8, [SP,#0xE0+var_40]
56156A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56156C:  VMUL.F32        S6, S2, S0
561570:  VLDR            S2, =0.01
561574:  VLDR            S4, [R11,#0xA4]
561578:  VLDR            S0, [R0]
56157C:  VMAX.F32        D1, D0, D1
561580:  VCMPE.F32       S4, S6
561584:  VMRS            APSR_nzcv, FPSCR
561588:  VMUL.F32        S2, S6, S2
56158C:  VDIV.F32        S2, S8, S2
561590:  BGE             loc_5615A2
561592:  VLDR            S8, =1.05
561596:  VMUL.F32        S6, S6, S8
56159A:  VDIV.F32        S4, S6, S4
56159E:  VMUL.F32        S2, S2, S4
5615A2:  VMOV.F32        S4, #1.5
5615A6:  LDR.W           R5, [R11,#0x44]
5615AA:  VMOV.F32        S16, #1.0
5615AE:  TST.W           R5, #1
5615B2:  VMOV            R1, S0; y
5615B6:  VMUL.F32        S18, S2, S4
5615BA:  IT EQ
5615BC:  VMOVEQ.F32      S18, S2
5615C0:  VLDR            S2, =-0.05
5615C4:  VMOV.F32        S4, #0.5
5615C8:  VMUL.F32        S2, S18, S2
5615CC:  VADD.F32        S2, S2, S16
5615D0:  VMAX.F32        D1, D1, D2
5615D4:  VMOV            R0, S2; x
5615D8:  BLX             powf
5615DC:  ADD.W           R1, R11, #0x48 ; 'H'
5615E0:  VMOV            S4, R0
5615E4:  VLDR            S6, [R11,#0x58]
5615E8:  VLDR            S8, [R11,#0x5C]
5615EC:  VLD1.32         {D16-D17}, [R1]
5615F0:  VMUL.F32        S6, S4, S6
5615F4:  VMUL.F32        Q0, Q8, D2[0]
5615F8:  STR             R1, [SP,#0xE0+var_B8]
5615FA:  VMUL.F32        S4, S4, S8
5615FE:  VLDR            S8, =0.8
561602:  VCMPE.F32       S18, S8
561606:  VMRS            APSR_nzcv, FPSCR
56160A:  VST1.32         {D0-D1}, [R1]
56160E:  VSTR            S6, [R11,#0x58]
561612:  VSTR            S4, [R11,#0x5C]
561616:  BGT             loc_561672
561618:  VLDR            S4, =0.4
56161C:  VCMPE.F32       S18, S4
561620:  VMRS            APSR_nzcv, FPSCR
561624:  BLE.W           loc_5617B6
561628:  ADDW            R0, R11, #0x724
56162C:  VLDR            S4, [R0]
561630:  VCMP.F32        S4, S16
561634:  VMRS            APSR_nzcv, FPSCR
561638:  BEQ             loc_561672
56163A:  ADD.W           R0, R11, #0x728
56163E:  VLDR            S4, [R0]
561642:  VCMP.F32        S4, S16
561646:  VMRS            APSR_nzcv, FPSCR
56164A:  BEQ             loc_561672
56164C:  ADDW            R0, R11, #0x72C
561650:  VLDR            S4, [R0]
561654:  VCMP.F32        S4, S16
561658:  VMRS            APSR_nzcv, FPSCR
56165C:  BEQ             loc_561672
56165E:  ADD.W           R0, R11, #0x730
561662:  VLDR            S4, [R0]
561666:  VCMP.F32        S4, S16
56166A:  VMRS            APSR_nzcv, FPSCR
56166E:  BNE.W           loc_5617B6
561672:  VLDR            S4, =-0.1
561676:  ORR.W           R2, R5, #0x100
56167A:  LDR.W           R1, [R11,#0x42C]
56167E:  ADDW            R6, R11, #0x42C
561682:  VCMPE.F32       S2, S4
561686:  LDR.W           R0, [R11,#0x430]
56168A:  VMRS            APSR_nzcv, FPSCR
56168E:  STR.W           R2, [R11,#0x44]
561692:  ORR.W           R1, R1, #0x40000000
561696:  STR.W           R1, [R11,#0x42C]
56169A:  ITTT LT
56169C:  MOVWLT          R2, #0xCCCD
5616A0:  MOVTLT          R2, #0xBDCC
5616A4:  STRLT.W         R2, [R11,#0x50]
5616A8:  LDR.W           R2, [R11,#0x464]
5616AC:  CMP             R2, #0
5616AE:  BEQ             loc_5617AC
5616B0:  LDR             R0, [R2,#0x44]
5616B2:  ORR.W           R0, R0, #0x8000000
5616B6:  STR             R0, [R2,#0x44]
5616B8:  LDR.W           R0, [R11,#0x464]; this
5616BC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5616C0:  CBNZ            R0, loc_5616CC
5616C2:  LDRB.W          R0, [R11,#0x628]
5616C6:  LSLS            R0, R0, #0x1D
5616C8:  BMI.W           loc_5617F0
5616CC:  LDR.W           R0, [R11,#0x464]; this
5616D0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5616D4:  CMP             R0, #1
5616D6:  BNE             loc_5616E6
5616D8:  LDR.W           R0, [R11,#0x464]; this
5616DC:  MOVS            R1, #1; bool
5616DE:  MOV.W           R2, #0x3F800000; float
5616E2:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
5616E6:  ADDW            R0, R11, #0x724
5616EA:  VLDR            S0, [R0]
5616EE:  VCMPE.F32       S0, S16
5616F2:  VMRS            APSR_nzcv, FPSCR
5616F6:  BLT             loc_561730
5616F8:  ADD.W           R0, R11, #0x728
5616FC:  VLDR            S0, [R0]
561700:  VCMPE.F32       S0, S16
561704:  VMRS            APSR_nzcv, FPSCR
561708:  BLT             loc_561730
56170A:  ADDW            R0, R11, #0x72C
56170E:  VLDR            S0, [R0]
561712:  VCMPE.F32       S0, S16
561716:  VMRS            APSR_nzcv, FPSCR
56171A:  BLT             loc_561730
56171C:  ADD.W           R0, R11, #0x730
561720:  VLDR            S0, [R0]
561724:  VCMPE.F32       S0, S16
561728:  VMRS            APSR_nzcv, FPSCR
56172C:  BGE.W           loc_5619B4
561730:  LDR.W           R0, [R11,#0x464]; this
561734:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
561738:  CMP             R0, #0
56173A:  BNE             loc_5617F0
56173C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x561748)
56173E:  MOVS            R5, #0
561740:  MOVS            R6, #3
561742:  MOV             R1, R11
561744:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
561746:  MOVS            R3, #0x35 ; '5'
561748:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
56174A:  LDR             R2, [R0]; CTimer::ms_fTimeStep
56174C:  ADD             R0, SP, #0xE0+var_5C
56174E:  STRD.W          R6, R5, [SP,#0xE0+var_E0]
561752:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
561756:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x561764)
561758:  MOV.W           R8, #1
56175C:  MOV             R1, R11; this
56175E:  MOVS            R3, #0x35 ; '5'; int
561760:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
561762:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
561764:  LDR             R2, [R0]; int
561766:  STRD.W          R6, R5, [SP,#0xE0+var_E0]; float
56176A:  STRD.W          R5, R8, [SP,#0xE0+var_D8]; int
56176E:  ADD             R5, SP, #0xE0+var_9C
561770:  MOV             R0, R5; int
561772:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
561776:  LDR.W           R1, [R11,#0x464]; CPed *
56177A:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
56177E:  CMP             R0, #1
561780:  BNE             loc_5617CC
561782:  LDR.W           R1, [R11,#0x464]; this
561786:  ADD.W           R2, R5, #0x34 ; '4'
56178A:  ADD             R0, SP, #0xE0+var_5C; int
56178C:  MOVS            R3, #1
56178E:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
561792:  B               loc_5617D0
561794:  MOVW            R0, #0xFEFF
561798:  LDR.W           R2, [R11,#0x42C]
56179C:  MOVT            R0, #0xF7FF
5617A0:  ANDS            R0, R1
5617A2:  STR.W           R0, [R11,#0x44]
5617A6:  BIC.W           R0, R2, #0x40000000
5617AA:  B               loc_5617C6
5617AC:  BIC.W           R1, R1, #0x10
5617B0:  STRD.W          R1, R0, [R6]
5617B4:  B               loc_5617F0
5617B6:  LDR.W           R0, [R11,#0x42C]
5617BA:  BIC.W           R1, R5, #0x100
5617BE:  STR.W           R1, [R11,#0x44]
5617C2:  BIC.W           R0, R0, #0x40000000
5617C6:  STR.W           R0, [R11,#0x42C]
5617CA:  B               loc_5619A6
5617CC:  STRB.W          R8, [SP,#0xE0+var_5E]
5617D0:  LDR.W           R0, [R11,#0x464]
5617D4:  ADD             R5, SP, #0xE0+var_9C
5617D6:  MOVS            R2, #0; bool
5617D8:  MOV             R1, R5; CEvent *
5617DA:  LDR.W           R0, [R0,#0x440]
5617DE:  ADDS            R0, #0x68 ; 'h'; this
5617E0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5617E4:  MOV             R0, R5; this
5617E6:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
5617EA:  ADD             R0, SP, #0xE0+var_5C; this
5617EC:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
5617F0:  LDRB.W          R0, [R11,#0x48C]
5617F4:  CMP             R0, #0
5617F6:  BEQ.W           loc_5619A6
5617FA:  ADD.W           R0, R11, #0xE4
5617FE:  STR             R0, [SP,#0xE0+var_C0]
561800:  ADD.W           R0, R11, #0x730
561804:  STR             R0, [SP,#0xE0+var_BC]
561806:  ADDW            R0, R11, #0x72C
56180A:  STR             R0, [SP,#0xE0+var_B0]
56180C:  ADD.W           R0, R11, #0x728
561810:  ADD             R4, SP, #0xE0+var_9C
561812:  STR             R0, [SP,#0xE0+var_A0]
561814:  ADD.W           R0, R4, #0x34 ; '4'
561818:  STR             R0, [SP,#0xE0+var_B4]
56181A:  ADDW            R6, R11, #0x724
56181E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x561830)
561820:  ADD.W           R5, R11, #0x468
561824:  ADD.W           R8, SP, #0xE0+var_5C
561828:  MOV.W           R9, #0
56182C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56182E:  MOV.W           R10, #0
561832:  STR             R6, [SP,#0xE0+var_A8]
561834:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
561836:  STR             R0, [SP,#0xE0+var_A4]
561838:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56183E)
56183A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56183C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56183E:  STR             R0, [SP,#0xE0+var_AC]
561840:  B               loc_56189C
561842:  MOVS            R0, #0
561844:  MOVS            R1, #0x35 ; '5'
561846:  VLDR            S0, [R11,#0xDC]
56184A:  STR             R0, [SP,#0xE0+var_DC]; float
56184C:  STRD.W          R1, R0, [SP,#0xE0+var_D8]; int
561850:  MOV             R1, R11; this
561852:  STRD.W          R0, R0, [SP,#0xE0+var_D0]; int
561856:  STRD.W          R0, R0, [SP,#0xE0+var_C8]; int
56185A:  MOV             R0, R4; int
56185C:  LDR             R2, [SP,#0xE0+var_B8]; int
56185E:  LDR             R3, [SP,#0xE0+var_C0]; int
561860:  VSTR            S0, [SP,#0xE0+var_E0]
561864:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
561868:  LDR.W           R0, [R5,R9,LSL#2]
56186C:  MOV             R1, R4; CEvent *
56186E:  MOVS            R2, #0; bool
561870:  LDR.W           R0, [R0,#0x440]
561874:  ADDS            R0, #0x68 ; 'h'; this
561876:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
56187A:  MOV             R0, R4; this
56187C:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
561880:  B               loc_561998
561882:  ALIGN 4
561884:  DCFS 0.008
561888:  DCFS 0.01
56188C:  DCFS 1.05
561890:  DCFS -0.05
561894:  DCFS 0.8
561898:  DCFS 0.4
56189C:  LDR.W           R0, [R5,R9,LSL#2]
5618A0:  CMP             R0, #0
5618A2:  BEQ             loc_561998
5618A4:  LDR             R1, [R0,#0x44]
5618A6:  ORR.W           R1, R1, #0x8000000
5618AA:  STR             R1, [R0,#0x44]
5618AC:  LDR.W           R0, [R5,R9,LSL#2]; this
5618B0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5618B4:  CMP             R0, #1
5618B6:  BNE             loc_5618C6
5618B8:  LDR.W           R0, [R5,R9,LSL#2]; this
5618BC:  MOVS            R1, #1; bool
5618BE:  MOV.W           R2, #0x3F800000; float
5618C2:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
5618C6:  LDR.W           R0, [R5,R9,LSL#2]; this
5618CA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5618CE:  CBNZ            R0, loc_5618D8
5618D0:  LDRB.W          R0, [R11,#0x628]
5618D4:  LSLS            R0, R0, #0x1D
5618D6:  BMI             loc_561998
5618D8:  VLDR            S0, [R6]
5618DC:  VCMPE.F32       S0, S16
5618E0:  VMRS            APSR_nzcv, FPSCR
5618E4:  BLT             loc_561916
5618E6:  LDR             R0, [SP,#0xE0+var_A0]
5618E8:  VLDR            S0, [R0]
5618EC:  VCMPE.F32       S0, S16
5618F0:  VMRS            APSR_nzcv, FPSCR
5618F4:  BLT             loc_561916
5618F6:  LDR             R0, [SP,#0xE0+var_B0]
5618F8:  VLDR            S0, [R0]
5618FC:  VCMPE.F32       S0, S16
561900:  VMRS            APSR_nzcv, FPSCR
561904:  BLT             loc_561916
561906:  LDR             R0, [SP,#0xE0+var_BC]
561908:  VLDR            S0, [R0]
56190C:  VCMPE.F32       S0, S16
561910:  VMRS            APSR_nzcv, FPSCR
561914:  BGE             loc_561842
561916:  LDR.W           R0, [R5,R9,LSL#2]; this
56191A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
56191E:  CBNZ            R0, loc_561998
561920:  LDR             R0, [SP,#0xE0+var_A4]
561922:  MOV             R6, R8
561924:  MOV.W           R8, #3
561928:  MOV             R1, R11
56192A:  MOVS            R3, #0x35 ; '5'
56192C:  LDR             R2, [R0]
56192E:  MOV             R0, R6
561930:  STRD.W          R8, R10, [SP,#0xE0+var_E0]
561934:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
561938:  LDR             R0, [SP,#0xE0+var_AC]
56193A:  MOV             R1, R11; this
56193C:  STR.W           R8, [SP,#0xE0+var_E0]; int
561940:  MOV.W           R8, #1
561944:  MOVS            R3, #0x35 ; '5'; int
561946:  LDR             R2, [R0]; int
561948:  MOV             R0, R4; int
56194A:  STRD.W          R10, R10, [SP,#0xE0+var_DC]; int
56194E:  STR.W           R8, [SP,#0xE0+var_D4]; int
561952:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
561956:  LDR.W           R1, [R5,R9,LSL#2]; CPed *
56195A:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
56195E:  CMP             R0, #1
561960:  BNE             loc_561972
561962:  LDR.W           R1, [R5,R9,LSL#2]; this
561966:  MOV             R0, R6; int
561968:  LDR             R2, [SP,#0xE0+var_B4]
56196A:  MOVS            R3, #1
56196C:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
561970:  B               loc_561976
561972:  STRB.W          R8, [SP,#0xE0+var_5E]
561976:  LDR.W           R0, [R5,R9,LSL#2]
56197A:  MOV             R1, R4; CEvent *
56197C:  MOVS            R2, #0; bool
56197E:  MOV             R8, R6
561980:  LDR.W           R0, [R0,#0x440]
561984:  ADDS            R0, #0x68 ; 'h'; this
561986:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
56198A:  MOV             R0, R4; this
56198C:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
561990:  MOV             R0, R8; this
561992:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
561996:  LDR             R6, [SP,#0xE0+var_A8]
561998:  LDRB.W          R0, [R11,#0x48C]
56199C:  ADD.W           R9, R9, #1
5619A0:  CMP             R9, R0
5619A2:  BLT.W           loc_56189C
5619A6:  ADD             SP, SP, #0xB0
5619A8:  VPOP            {D8-D9}
5619AC:  ADD             SP, SP, #4
5619AE:  POP.W           {R8-R11}
5619B2:  POP             {R4-R7,PC}
5619B4:  MOVS            R0, #0
5619B6:  MOVS            R1, #1
5619B8:  MOVS            R2, #0x35 ; '5'
5619BA:  VLDR            S0, [R11,#0xDC]
5619BE:  STRD.W          R0, R2, [SP,#0xE0+var_DC]; float
5619C2:  ADD             R5, SP, #0xE0+var_9C
5619C4:  STRD.W          R0, R0, [SP,#0xE0+var_D4]; int
5619C8:  ADD.W           R3, R11, #0xE4; int
5619CC:  STRD.W          R0, R1, [SP,#0xE0+var_CC]; int
5619D0:  MOV             R1, R11; this
5619D2:  LDR             R2, [SP,#0xE0+var_B8]; int
5619D4:  STR             R0, [SP,#0xE0+var_C4]; int
5619D6:  MOV             R0, R5; int
5619D8:  VSTR            S0, [SP,#0xE0+var_E0]
5619DC:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
5619E0:  LDR.W           R0, [R11,#0x464]
5619E4:  MOV             R1, R5; CEvent *
5619E6:  MOVS            R2, #0; bool
5619E8:  LDR.W           R0, [R0,#0x440]
5619EC:  ADDS            R0, #0x68 ; 'h'; this
5619EE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5619F2:  LDR             R0, [R6]
5619F4:  BIC.W           R0, R0, #0x10
5619F8:  STR             R0, [R6]
5619FA:  MOV             R0, R5; this
5619FC:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
561A00:  B               loc_5617F0
