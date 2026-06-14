; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandard15LookForSexyCarsEP4CPed
; Address            : 0x523738 - 0x5238CC
; =========================================================

523738:  PUSH            {R4-R7,LR}
52373A:  ADD             R7, SP, #0xC
52373C:  PUSH.W          {R8-R11}
523740:  SUB             SP, SP, #4
523742:  VPUSH           {D8-D9}
523746:  SUB             SP, SP, #0x28
523748:  VMOV.F32        S18, #25.0
52374C:  MOV             R4, R1
52374E:  STR             R0, [SP,#0x58+var_44]; bool
523750:  MOVW            R10, #0x9C41
523754:  LDR             R0, [R4,#0x14]
523756:  MOV.W           R11, #0
52375A:  LDR.W           R6, [R4,#0x440]
52375E:  MOVS            R2, #1
523760:  ADD.W           R9, R0, #0x30 ; '0'
523764:  CMP             R0, #0
523766:  VLDR            S16, =500.0
52376A:  IT EQ
52376C:  ADDEQ.W         R9, R4, #4
523770:  MOVS            R0, #0x38 ; '8'
523772:  MOV             R8, R0
523774:  LDR.W           R5, [R6,R8,LSL#2]
523778:  CMP             R5, #0
52377A:  ITT NE
52377C:  LDRNE.W         R0, [R4,#0x590]
523780:  CMPNE           R0, R5
523782:  BEQ             loc_523838
523784:  LDR.W           R0, [R5,#0x388]
523788:  LDR.W           R0, [R0,#0xD8]
52378C:  CMP             R0, R10
52378E:  BCC             loc_523838
523790:  ADDW            R0, R5, #0x4CC
523794:  VLDR            S0, [R0]
523798:  VCMPE.F32       S0, S16
52379C:  VMRS            APSR_nzcv, FPSCR
5237A0:  BLE             loc_523838
5237A2:  LDR             R0, [R5,#0x14]
5237A4:  VLDR            S0, [R9]
5237A8:  ADD.W           R1, R0, #0x30 ; '0'
5237AC:  CMP             R0, #0
5237AE:  VLDR            S2, [R9,#4]
5237B2:  VLDR            S4, [R9,#8]
5237B6:  IT EQ
5237B8:  ADDEQ           R1, R5, #4; CVector *
5237BA:  VLDR            S6, [R1]
5237BE:  VLDR            S8, [R1,#4]
5237C2:  VSUB.F32        S0, S6, S0
5237C6:  VLDR            S10, [R1,#8]
5237CA:  VSUB.F32        S2, S8, S2
5237CE:  VSUB.F32        S4, S10, S4
5237D2:  VMUL.F32        S8, S0, S0
5237D6:  VMUL.F32        S6, S2, S2
5237DA:  VMUL.F32        S10, S4, S4
5237DE:  VADD.F32        S6, S8, S6
5237E2:  VADD.F32        S6, S6, S10
5237E6:  VCMPE.F32       S6, S18
5237EA:  VMRS            APSR_nzcv, FPSCR
5237EE:  BGE             loc_523838
5237F0:  LDR             R0, [R4,#0x14]
5237F2:  VLDR            S6, [R0,#0x10]
5237F6:  VLDR            S8, [R0,#0x14]
5237FA:  VMUL.F32        S0, S0, S6
5237FE:  VLDR            S10, [R0,#0x18]
523802:  VMUL.F32        S2, S2, S8
523806:  VMUL.F32        S4, S4, S10
52380A:  VADD.F32        S0, S0, S2
52380E:  VADD.F32        S0, S0, S4
523812:  VCMPE.F32       S0, #0.0
523816:  VMRS            APSR_nzcv, FPSCR
52381A:  BLE             loc_523838
52381C:  STRD.W          R11, R2, [SP,#0x58+var_58]; bool
523820:  MOV             R0, R9; this
523822:  MOVS            R2, #(stderr+1); CVector *
523824:  MOVS            R3, #0; bool
523826:  STRD.W          R11, R11, [SP,#0x58+var_50]; bool
52382A:  STR.W           R11, [SP,#0x58+var_48]; bool
52382E:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
523832:  MOVS            R2, #1
523834:  CMP             R0, #1
523836:  BEQ             loc_523854
523838:  SUB.W           R1, R8, #0x38 ; '8'
52383C:  ADD.W           R0, R8, #1
523840:  CMP             R1, #0xF
523842:  BLT             loc_523772
523844:  MOVS            R0, #0
523846:  ADD             SP, SP, #0x28 ; '('
523848:  VPOP            {D8-D9}
52384C:  ADD             SP, SP, #4
52384E:  POP.W           {R8-R11}
523852:  POP             {R4-R7,PC}
523854:  ADD             R6, SP, #0x58+var_40
523856:  MOV             R1, R5; CVehicle *
523858:  MOV             R0, R6; this
52385A:  BLX             j__ZN17CEventSexyVehicleC2EP8CVehicle; CEventSexyVehicle::CEventSexyVehicle(CVehicle *)
52385E:  LDR.W           R0, [R4,#0x440]
523862:  MOV             R1, R6; CEvent *
523864:  MOVS            R2, #0; bool
523866:  ADDS            R0, #0x68 ; 'h'; this
523868:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52386C:  LDR.W           R0, [R4,#0x440]
523870:  ADDS            R0, #4; this
523872:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523876:  MOV             R5, R0
523878:  CBZ             R5, loc_5238C2
52387A:  LDR             R0, [R5]
52387C:  LDR             R1, [R0,#0x14]
52387E:  MOV             R0, R5
523880:  BLX             R1
523882:  MOV             R6, R0
523884:  LDR             R0, [SP,#0x58+var_44]
523886:  LDR             R1, [R0]
523888:  LDR             R1, [R1,#0x14]
52388A:  BLX             R1
52388C:  CMP             R6, R0
52388E:  BNE             loc_5238C2
523890:  LDR             R0, [R5]
523892:  LDR             R1, [R0,#0x34]
523894:  MOV             R0, R5
523896:  BLX             R1
523898:  MOV             R5, R0
52389A:  LDR             R0, [SP,#0x58+var_44]
52389C:  LDR             R1, [R0]
52389E:  LDR             R1, [R1,#0x34]
5238A0:  BLX             R1
5238A2:  CMP             R5, R0
5238A4:  BNE             loc_5238C2
5238A6:  LDR.W           R0, [R4,#0x440]
5238AA:  ADDS            R0, #4; this
5238AC:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5238B0:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5238B6)
5238B2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5238B4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5238B6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5238B8:  ADD.W           R1, R1, #0x18000
5238BC:  ADD.W           R1, R1, #0x6A0
5238C0:  STR             R1, [R0,#0x34]
5238C2:  ADD             R0, SP, #0x58+var_40; this
5238C4:  BLX             j__ZN17CEventSexyVehicleD2Ev; CEventSexyVehicle::~CEventSexyVehicle()
5238C8:  MOVS            R0, #1
5238CA:  B               loc_523846
