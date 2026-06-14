; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar17CreateNextSubTaskEP4CPed
; Address            : 0x4F5674 - 0x4F645E
; =========================================================

4F5674:  PUSH            {R4-R7,LR}
4F5676:  ADD             R7, SP, #0xC
4F5678:  PUSH.W          {R8-R11}
4F567C:  SUB             SP, SP, #0x44
4F567E:  MOV             R4, R0
4F5680:  MOV             R5, R1
4F5682:  LDRB.W          R0, [R4,#0x3C]
4F5686:  CMP             R0, #0
4F5688:  BEQ.W           loc_4F57BC
4F568C:  LDR             R0, [R4,#8]
4F568E:  LDR             R1, [R0]
4F5690:  LDR             R1, [R1,#0x14]
4F5692:  BLX             R1
4F5694:  SUB.W           R1, R0, #0x2C0; switch 126 cases
4F5698:  MOVS            R6, #0
4F569A:  CMP             R1, #0x7D ; '}'
4F569C:  BHI.W           def_4F56A0; jumptable 004F56A0 default case
4F56A0:  TBH.W           [PC,R1,LSL#1]; switch jump
4F56A4:  DCW 0x174; jump table for switch statement
4F56A6:  DCW 0x87
4F56A8:  DCW 0x87
4F56AA:  DCW 0x87
4F56AC:  DCW 0x87
4F56AE:  DCW 0x87
4F56B0:  DCW 0x87
4F56B2:  DCW 0x87
4F56B4:  DCW 0x87
4F56B6:  DCW 0x87
4F56B8:  DCW 0x87
4F56BA:  DCW 0x174
4F56BC:  DCW 0x87
4F56BE:  DCW 0x87
4F56C0:  DCW 0x87
4F56C2:  DCW 0x174
4F56C4:  DCW 0x87
4F56C6:  DCW 0x87
4F56C8:  DCW 0x87
4F56CA:  DCW 0x87
4F56CC:  DCW 0x87
4F56CE:  DCW 0x87
4F56D0:  DCW 0x87
4F56D2:  DCW 0x87
4F56D4:  DCW 0x87
4F56D6:  DCW 0x87
4F56D8:  DCW 0x87
4F56DA:  DCW 0x87
4F56DC:  DCW 0x87
4F56DE:  DCW 0x87
4F56E0:  DCW 0x87
4F56E2:  DCW 0x87
4F56E4:  DCW 0x87
4F56E6:  DCW 0x87
4F56E8:  DCW 0x87
4F56EA:  DCW 0x87
4F56EC:  DCW 0x87
4F56EE:  DCW 0x87
4F56F0:  DCW 0x87
4F56F2:  DCW 0x87
4F56F4:  DCW 0x87
4F56F6:  DCW 0x87
4F56F8:  DCW 0x87
4F56FA:  DCW 0x87
4F56FC:  DCW 0x87
4F56FE:  DCW 0x87
4F5700:  DCW 0x87
4F5702:  DCW 0x87
4F5704:  DCW 0x87
4F5706:  DCW 0x87
4F5708:  DCW 0x87
4F570A:  DCW 0x87
4F570C:  DCW 0x87
4F570E:  DCW 0x87
4F5710:  DCW 0x87
4F5712:  DCW 0x87
4F5714:  DCW 0x87
4F5716:  DCW 0x87
4F5718:  DCW 0x87
4F571A:  DCW 0x87
4F571C:  DCW 0x87
4F571E:  DCW 0x87
4F5720:  DCW 0x87
4F5722:  DCW 0x87
4F5724:  DCW 0x87
4F5726:  DCW 0x87
4F5728:  DCW 0x87
4F572A:  DCW 0x87
4F572C:  DCW 0x87
4F572E:  DCW 0x87
4F5730:  DCW 0x87
4F5732:  DCW 0x87
4F5734:  DCW 0x87
4F5736:  DCW 0x87
4F5738:  DCW 0x87
4F573A:  DCW 0x87
4F573C:  DCW 0x87
4F573E:  DCW 0x87
4F5740:  DCW 0x87
4F5742:  DCW 0x87
4F5744:  DCW 0x87
4F5746:  DCW 0x87
4F5748:  DCW 0x87
4F574A:  DCW 0x87
4F574C:  DCW 0x87
4F574E:  DCW 0x87
4F5750:  DCW 0x87
4F5752:  DCW 0x87
4F5754:  DCW 0x87
4F5756:  DCW 0x87
4F5758:  DCW 0x87
4F575A:  DCW 0x87
4F575C:  DCW 0x87
4F575E:  DCW 0x87
4F5760:  DCW 0x87
4F5762:  DCW 0x87
4F5764:  DCW 0x174
4F5766:  DCW 0x174
4F5768:  DCW 0x174
4F576A:  DCW 0x174
4F576C:  DCW 0x174
4F576E:  DCW 0x174
4F5770:  DCW 0x174
4F5772:  DCW 0x174
4F5774:  DCW 0x174
4F5776:  DCW 0x87
4F5778:  DCW 0x174
4F577A:  DCW 0x7E
4F577C:  DCW 0x7E
4F577E:  DCW 0x87
4F5780:  DCW 0x87
4F5782:  DCW 0x87
4F5784:  DCW 0x174
4F5786:  DCW 0x174
4F5788:  DCW 0x87
4F578A:  DCW 0x87
4F578C:  DCW 0x174
4F578E:  DCW 0x87
4F5790:  DCW 0x87
4F5792:  DCW 0x87
4F5794:  DCW 0x87
4F5796:  DCW 0x87
4F5798:  DCW 0x87
4F579A:  DCW 0x87
4F579C:  DCW 0x87
4F579E:  DCW 0x174
4F57A0:  MOVS            R0, #off_18; jumptable 004F56A0 cases 811,812
4F57A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F57A6:  LDR             R1, [R4,#0xC]; CVehicle *
4F57A8:  MOVS            R3, #1; bool
4F57AA:  LDR             R2, [R4,#0x14]; int
4F57AC:  MOV             R6, R0
4F57AE:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4F57B2:  MOV             R0, R6; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F57B4:  ADD             SP, SP, #0x44 ; 'D'
4F57B6:  POP.W           {R8-R11}
4F57BA:  POP             {R4-R7,PC}
4F57BC:  LDR             R0, [R4,#0xC]; this
4F57BE:  CMP             R0, #0
4F57C0:  BEQ.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F57C4:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4F57C8:  CMP             R0, #0
4F57CA:  BEQ.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F57CE:  LDR             R0, [R4,#8]
4F57D0:  LDR             R1, [R0]
4F57D2:  LDR             R1, [R1,#0x14]
4F57D4:  BLX             R1
4F57D6:  MOVS            R6, #0
4F57D8:  CMP.W           R0, #0x2C0
4F57DC:  BLT.W           loc_4F59A2
4F57E0:  SUB.W           R0, R0, #0x2C0; switch 126 cases
4F57E4:  CMP             R0, #0x7D ; '}'
4F57E6:  BHI             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F57E8:  TBH.W           [PC,R0,LSL#1]; switch jump
4F57EC:  DCW 0x123; jump table for switch statement
4F57EE:  DCW 0x7E
4F57F0:  DCW 0x7E
4F57F2:  DCW 0x7E
4F57F4:  DCW 0x7E
4F57F6:  DCW 0x7E
4F57F8:  DCW 0x7E
4F57FA:  DCW 0x7E
4F57FC:  DCW 0x7E
4F57FE:  DCW 0x7E
4F5800:  DCW 0x7E
4F5802:  DCW 0xD0
4F5804:  DCW 0x7E
4F5806:  DCW 0x7E
4F5808:  DCW 0x7E
4F580A:  DCW 0xD0
4F580C:  DCW 0x7E
4F580E:  DCW 0x7E
4F5810:  DCW 0x7E
4F5812:  DCW 0x7E
4F5814:  DCW 0x7E
4F5816:  DCW 0x7E
4F5818:  DCW 0x7E
4F581A:  DCW 0x7E
4F581C:  DCW 0x7E
4F581E:  DCW 0x7E
4F5820:  DCW 0x7E
4F5822:  DCW 0x7E
4F5824:  DCW 0x7E
4F5826:  DCW 0x7E
4F5828:  DCW 0x7E
4F582A:  DCW 0x7E
4F582C:  DCW 0x7E
4F582E:  DCW 0x7E
4F5830:  DCW 0x7E
4F5832:  DCW 0x7E
4F5834:  DCW 0x7E
4F5836:  DCW 0x7E
4F5838:  DCW 0x7E
4F583A:  DCW 0x7E
4F583C:  DCW 0x7E
4F583E:  DCW 0x7E
4F5840:  DCW 0x7E
4F5842:  DCW 0x7E
4F5844:  DCW 0x7E
4F5846:  DCW 0x7E
4F5848:  DCW 0x7E
4F584A:  DCW 0x7E
4F584C:  DCW 0x7E
4F584E:  DCW 0x7E
4F5850:  DCW 0x7E
4F5852:  DCW 0x7E
4F5854:  DCW 0x7E
4F5856:  DCW 0x7E
4F5858:  DCW 0x7E
4F585A:  DCW 0x7E
4F585C:  DCW 0x7E
4F585E:  DCW 0x7E
4F5860:  DCW 0x7E
4F5862:  DCW 0x7E
4F5864:  DCW 0x7E
4F5866:  DCW 0x7E
4F5868:  DCW 0x7E
4F586A:  DCW 0x7E
4F586C:  DCW 0x7E
4F586E:  DCW 0x7E
4F5870:  DCW 0x7E
4F5872:  DCW 0x7E
4F5874:  DCW 0x7E
4F5876:  DCW 0x7E
4F5878:  DCW 0x7E
4F587A:  DCW 0x7E
4F587C:  DCW 0x7E
4F587E:  DCW 0x7E
4F5880:  DCW 0x7E
4F5882:  DCW 0x7E
4F5884:  DCW 0x7E
4F5886:  DCW 0x7E
4F5888:  DCW 0x7E
4F588A:  DCW 0x7E
4F588C:  DCW 0x7E
4F588E:  DCW 0x7E
4F5890:  DCW 0x7E
4F5892:  DCW 0x7E
4F5894:  DCW 0x7E
4F5896:  DCW 0x7E
4F5898:  DCW 0x7E
4F589A:  DCW 0x7E
4F589C:  DCW 0x7E
4F589E:  DCW 0x7E
4F58A0:  DCW 0x7E
4F58A2:  DCW 0x7E
4F58A4:  DCW 0x7E
4F58A6:  DCW 0x7E
4F58A8:  DCW 0x7E
4F58AA:  DCW 0x7E
4F58AC:  DCW 0x149
4F58AE:  DCW 0x45C
4F58B0:  DCW 0x7F
4F58B2:  DCW 0x17B
4F58B4:  DCW 0x7F
4F58B6:  DCW 0x198
4F58B8:  DCW 0xD0
4F58BA:  DCW 0x1B5
4F58BC:  DCW 0x210
4F58BE:  DCW 0x7E
4F58C0:  DCW 0x1DA
4F58C2:  DCW 0xD0
4F58C4:  DCW 0xD0
4F58C6:  DCW 0x7E
4F58C8:  DCW 0x7E
4F58CA:  DCW 0x7E
4F58CC:  DCW 0x7E
4F58CE:  DCW 0x20B
4F58D0:  DCW 0x7E
4F58D2:  DCW 0x7E
4F58D4:  DCW 0x21A
4F58D6:  DCW 0x7E
4F58D8:  DCW 0x7E
4F58DA:  DCW 0x7E
4F58DC:  DCW 0x7E
4F58DE:  DCW 0x7E
4F58E0:  DCW 0x7E
4F58E2:  DCW 0x7E
4F58E4:  DCW 0x7E
4F58E6:  DCW 0xD0
4F58E8:  B               def_4F57E8; jumptable 004F57E8 cases 705-714,716-718,720-799,809,813-816,818,819,821-828
4F58EA:  MOV             R0, R5; jumptable 004F57E8 cases 802,804
4F58EC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F58F0:  CBNZ            R0, loc_4F5922
4F58F2:  LDR             R0, [R4,#0xC]
4F58F4:  VLDR            S0, [R0,#0x48]
4F58F8:  VLDR            S2, [R0,#0x4C]
4F58FC:  VMUL.F32        S0, S0, S0
4F5900:  LDR.W           R0, =(_ZN13CCarEnterExit26ms_fMaxSpeed_CanDragPedOutE_ptr - 0x4F590C)
4F5904:  VMUL.F32        S2, S2, S2
4F5908:  ADD             R0, PC; _ZN13CCarEnterExit26ms_fMaxSpeed_CanDragPedOutE_ptr
4F590A:  LDR             R0, [R0]; CCarEnterExit::ms_fMaxSpeed_CanDragPedOut ...
4F590C:  VADD.F32        S0, S0, S2
4F5910:  VLDR            S2, [R0]
4F5914:  VSQRT.F32       S0, S0
4F5918:  VCMPE.F32       S0, S2
4F591C:  VMRS            APSR_nzcv, FPSCR
4F5920:  BGT             loc_4F595C
4F5922:  MOV             R0, R5; this
4F5924:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5928:  CMP             R0, #1
4F592A:  BNE             loc_4F5A0A
4F592C:  LDR             R0, [R4,#0xC]
4F592E:  VLDR            S0, [R0,#0x48]
4F5932:  VLDR            S2, [R0,#0x4C]
4F5936:  VMUL.F32        S0, S0, S0
4F593A:  LDR.W           R0, =(_ZN13CCarEnterExit32ms_fMaxSpeed_PlayerCanDragPedOutE_ptr - 0x4F5946)
4F593E:  VMUL.F32        S2, S2, S2
4F5942:  ADD             R0, PC; _ZN13CCarEnterExit32ms_fMaxSpeed_PlayerCanDragPedOutE_ptr
4F5944:  LDR             R0, [R0]; CCarEnterExit::ms_fMaxSpeed_PlayerCanDragPedOut ...
4F5946:  VADD.F32        S0, S0, S2
4F594A:  VLDR            S2, [R0]
4F594E:  VSQRT.F32       S0, S0
4F5952:  VCMPE.F32       S0, S2
4F5956:  VMRS            APSR_nzcv, FPSCR
4F595A:  BLE             loc_4F5A0A
4F595C:  LDR             R0, [R5,#0x1C]
4F595E:  ORR.W           R0, R0, #1
4F5962:  STR             R0, [R5,#0x1C]
4F5964:  MOV             R0, R5; this
4F5966:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F596A:  CMP             R0, #1
4F596C:  BEQ             loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F596E:  MOV             R0, R4
4F5970:  MOVS            R1, #0xD0
4F5972:  B               loc_4F5992
4F5974:  SUBS            R0, #0xC8; jumptable 004F56A0 default case
4F5976:  CMP             R0, #8
4F5978:  BHI.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F597C:  MOVS            R1, #1
4F597E:  LSL.W           R0, R1, R0
4F5982:  MOVW            R1, #0x109
4F5986:  TST             R0, R1
4F5988:  BEQ.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F598C:  MOV             R0, R4; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F598E:  MOVW            R1, #0x516; int
4F5992:  MOV             R2, R5; CPed *
4F5994:  ADD             SP, SP, #0x44 ; 'D'
4F5996:  POP.W           {R8-R11}
4F599A:  POP.W           {R4-R7,LR}
4F599E:  B.W             _ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F59A2:  CMP             R0, #0xC8
4F59A4:  IT NE
4F59A6:  CMPNE           R0, #0xCB
4F59A8:  BEQ             loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F59AA:  CMP             R0, #0xD0
4F59AC:  BNE.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F59B0:  MOV.W           R0, #0xFFFFFFFF; int
4F59B4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4F59B8:  CMP             R0, R5
4F59BA:  BNE             loc_4F59DC
4F59BC:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4F59CC)
4F59C0:  MOV.W           R2, #0x194
4F59C4:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4F59CE)
4F59C8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4F59CA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4F59CC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4F59CE:  LDR             R1, [R1]; CWorld::Players ...
4F59D0:  LDR             R0, [R0]; CWorld::PlayerInFocus
4F59D2:  SMLABB.W        R0, R0, R2, R1; this
4F59D6:  MOVS            R1, #0; CVehicle *
4F59D8:  BLX             j__ZN11CPlayerInfo20SetLastTargetVehicleEP8CVehicle; CPlayerInfo::SetLastTargetVehicle(CVehicle *)
4F59DC:  MOV             R0, R4; this
4F59DE:  MOVW            R1, #0x516; int
4F59E2:  MOV             R2, R5; CPed *
4F59E4:  LDRB.W          R8, [R4,#0x10]
4F59E8:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F59EC:  MOV             R6, R0
4F59EE:  TST.W           R8, #8
4F59F2:  BEQ.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F59F6:  LDR             R0, [R4]
4F59F8:  MOV             R1, R5
4F59FA:  LDR             R2, [R0,#0x2C]
4F59FC:  MOV             R0, R4
4F59FE:  ADD             SP, SP, #0x44 ; 'D'
4F5A00:  POP.W           {R8-R11}
4F5A04:  POP.W           {R4-R7,LR}
4F5A08:  BX              R2
4F5A0A:  LDRB            R0, [R4,#0x10]
4F5A0C:  TST.W           R0, #2
4F5A10:  BNE.W           loc_4F5C3C
4F5A14:  LSLS            R0, R0, #0x1D
4F5A16:  BMI.W           loc_4F5E2A
4F5A1A:  MOV             R9, R4
4F5A1C:  MOV             R2, R5; int
4F5A1E:  LDR.W           R1, [R9,#0x14]!; CVehicle *
4F5A22:  LDR.W           R0, [R9,#-8]; this
4F5A26:  BLX             j__ZN13CCarEnterExit21IsCarSlowJackRequiredERK8CVehicleiRK4CPed; CCarEnterExit::IsCarSlowJackRequired(CVehicle const&,int,CPed const&)
4F5A2A:  CMP             R0, #1
4F5A2C:  BNE.W           loc_4F5C28
4F5A30:  B               loc_4F5E2E
4F5A32:  LDRB.W          R0, [R5,#0x485]; jumptable 004F57E8 case 704
4F5A36:  LSLS            R0, R0, #0x1F
4F5A38:  BNE             loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5A3A:  LDRB            R0, [R4,#0x10]
4F5A3C:  LSLS            R0, R0, #0x1F
4F5A3E:  BEQ.W           loc_4F5D68
4F5A42:  LDR             R0, [R4,#0xC]
4F5A44:  LDR.W           R0, [R0,#0x5A0]
4F5A48:  CMP             R0, #5
4F5A4A:  BNE.W           loc_4F5D68
4F5A4E:  MOVS            R0, #word_10; this
4F5A50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5A54:  MOV             R6, R0
4F5A56:  LDR             R4, [R4,#0xC]
4F5A58:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F5A5C:  LDR.W           R0, =(_ZTV29CTaskComplexEnterBoatAsDriver_ptr - 0x4F5A68)
4F5A60:  MOV             R1, R6
4F5A62:  CMP             R4, #0
4F5A64:  ADD             R0, PC; _ZTV29CTaskComplexEnterBoatAsDriver_ptr
4F5A66:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterBoatAsDriver ...
4F5A68:  ADD.W           R0, R0, #8
4F5A6C:  STR.W           R0, [R1],#0xC; CEntity **
4F5A70:  STR             R4, [R1]
4F5A72:  BEQ.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5A76:  MOV             R0, R4; this
4F5A78:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F5A7C:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5A7E:  LDR             R2, [R4,#8]; jumptable 004F57E8 case 800
4F5A80:  LDRB.W          R0, [R2,#0x49]
4F5A84:  CMP             R0, #0
4F5A86:  BEQ.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5A8A:  LDR             R1, [R2,#0x34]; CVehicle *
4F5A8C:  LDRB            R3, [R4,#0x10]
4F5A8E:  STR             R1, [R4,#0x14]
4F5A90:  CMP             R1, #8
4F5A92:  VLDR            D16, [R2,#0x38]
4F5A96:  AND.W           R3, R3, #1
4F5A9A:  LDR             R2, [R2,#0x40]
4F5A9C:  RSB.W           R3, R3, #0; int
4F5AA0:  LDR             R0, [R4,#0xC]; this
4F5AA2:  STR             R2, [R4,#0x34]
4F5AA4:  MOV.W           R2, #0
4F5AA8:  IT EQ
4F5AAA:  MOVEQ           R2, #0xA
4F5AAC:  ANDS            R2, R3; int
4F5AAE:  STR             R2, [R4,#0x18]
4F5AB0:  VSTR            D16, [R4,#0x2C]
4F5AB4:  BLX             j__ZN13CCarEnterExit14IsCarDoorInUseERK8CVehicleii; CCarEnterExit::IsCarDoorInUse(CVehicle const&,int,int)
4F5AB8:  CMP             R0, #1
4F5ABA:  BNE.W           loc_4F5DC4
4F5ABE:  MOV             R0, R5; this
4F5AC0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5AC4:  CMP             R0, #1
4F5AC6:  BNE.W           loc_4F60B4
4F5ACA:  LDR.W           R0, [R5,#0x444]
4F5ACE:  MOVS            R1, #0
4F5AD0:  STR             R1, [R0,#0x14]
4F5AD2:  MOV             R0, R5
4F5AD4:  MOVS            R1, #1
4F5AD6:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4F5ADA:  MOV             R0, R5; this
4F5ADC:  BLX             j__ZN10CPlayerPed15SetRealMoveAnimEv; CPlayerPed::SetRealMoveAnim(void)
4F5AE0:  B               loc_4F60C4
4F5AE2:  LDR             R0, [R4,#0xC]; jumptable 004F57E8 case 803
4F5AE4:  CBZ             R0, loc_4F5B00
4F5AE6:  VLDR            S0, [R4,#0x48]
4F5AEA:  VCMPE.F32       S0, #0.0
4F5AEE:  VMRS            APSR_nzcv, FPSCR
4F5AF2:  ITTT GE
4F5AF4:  VCVTGE.U32.F32  S0, S0
4F5AF8:  VMOVGE          R1, S0; unsigned int
4F5AFC:  STRBGE.W        R1, [R0,#0x3D4]
4F5B00:  MOVS            R0, #dword_20; this
4F5B02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5B06:  MOV             R6, R0
4F5B08:  MOV.W           R0, #0x41000000
4F5B0C:  STR             R0, [SP,#0x60+var_60]; float
4F5B0E:  MOV             R0, R6; this
4F5B10:  MOVS            R1, #0; int
4F5B12:  MOVS            R2, #0; bool
4F5B14:  MOVS            R3, #0; bool
4F5B16:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4F5B1A:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5B1C:  LDR             R0, [R4,#0xC]; jumptable 004F57E8 case 805
4F5B1E:  CMP             R0, #0
4F5B20:  BEQ.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5B24:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4F5B28:  CMP             R0, #1
4F5B2A:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5B2E:  MOV             R0, R5; this
4F5B30:  BLX             j__ZN13CCarEnterExit12IsPedHealthyERK4CPed; CCarEnterExit::IsPedHealthy(CPed const&)
4F5B34:  CMP             R0, #1
4F5B36:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5B3A:  LDRB            R0, [R4,#0x10]
4F5B3C:  LSLS            R0, R0, #0x1F
4F5B3E:  BNE.W           loc_4F6142
4F5B42:  MOVS            R0, #dword_20; this
4F5B44:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5B48:  LDR             R1, [R4,#0xC]; CVehicle *
4F5B4A:  MOV             R6, R0
4F5B4C:  LDR             R2, [R4,#0x14]; int
4F5B4E:  LDR             R3, [R4,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5B50:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F5B54:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5B56:  LDR             R0, [R4,#0xC]; jumptable 004F57E8 case 807
4F5B58:  MOV             R2, R5; CPed *
4F5B5A:  LDR             R1, [R4,#0x40]; CVehicle *
4F5B5C:  BLX             j__ZN13CCarEnterExit34MakeUndraggedPassengerPedsLeaveCarERK8CVehiclePK4CPedS5_; CCarEnterExit::MakeUndraggedPassengerPedsLeaveCar(CVehicle const&,CPed const*,CPed const*)
4F5B60:  LDRB            R0, [R4,#0x10]
4F5B62:  LSLS            R0, R0, #0x1F
4F5B64:  BEQ             loc_4F5B84
4F5B66:  MOV             R0, R5; this
4F5B68:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5B6C:  CMP             R0, #1
4F5B6E:  BNE             loc_4F5B84
4F5B70:  LDR             R0, [R4,#0xC]
4F5B72:  LDR.W           R1, [R0,#0x5A0]
4F5B76:  CBNZ            R1, loc_4F5B84
4F5B78:  LDR.W           R0, [R0,#0x5A4]
4F5B7C:  SUBS            R0, #3
4F5B7E:  CMP             R0, #2
4F5B80:  BCS.W           loc_4F62F4
4F5B84:  MOVS            R6, #0
4F5B86:  LDR             R0, [R4,#0xC]; this
4F5B88:  LDR             R1, [R4,#0x14]; CVehicle *
4F5B8A:  BLX             j__ZN13CCarEnterExit17CarHasDoorToCloseERK8CVehiclei; CCarEnterExit::CarHasDoorToClose(CVehicle const&,int)
4F5B8E:  CMP             R6, #0
4F5B90:  BNE.W           loc_4F5CFC
4F5B94:  CMP             R0, #0
4F5B96:  BEQ.W           loc_4F5CFC
4F5B9A:  MOVW            R1, #0x325
4F5B9E:  B               loc_4F5FF0
4F5BA0:  LDR             R0, [R4,#0xC]; jumptable 004F57E8 case 810
4F5BA2:  LDR             R1, [R4,#0x14]; CVehicle *
4F5BA4:  BLX             j__ZN13CCarEnterExit14IsCarDoorReadyERK8CVehiclei; CCarEnterExit::IsCarDoorReady(CVehicle const&,int)
4F5BA8:  CBNZ            R0, loc_4F5BB8
4F5BAA:  LDR             R0, [R4,#0xC]; this
4F5BAC:  LDR             R1, [R4,#0x14]; CVehicle *
4F5BAE:  BLX             j__ZN13CCarEnterExit23CarHasPartiallyOpenDoorERK8CVehiclei; CCarEnterExit::CarHasPartiallyOpenDoor(CVehicle const&,int)
4F5BB2:  CMP             R0, #1
4F5BB4:  BNE.W           loc_4F5EFC
4F5BB8:  MOV             R0, R4; this
4F5BBA:  BLX             j__ZN20CTaskComplexEnterCar15SetVehicleFlagsEP4CPed; CTaskComplexEnterCar::SetVehicleFlags(CPed *)
4F5BBE:  LDR             R0, [R4,#0xC]
4F5BC0:  LDRB.W          R0, [R0,#0x3D4]
4F5BC4:  CMP             R0, #0
4F5BC6:  ITTT NE
4F5BC8:  VMOVNE          S0, R0
4F5BCC:  VCVTNE.F32.U32  S0, S0
4F5BD0:  VSTRNE          S0, [R4,#0x48]
4F5BD4:  MOV             R0, R5; this
4F5BD6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5BDA:  CMP             R0, #1
4F5BDC:  BNE             loc_4F5C44
4F5BDE:  LDR             R0, [R4,#0xC]; this
4F5BE0:  LDR             R1, [R4,#0x14]; CVehicle *
4F5BE2:  BLX             j__ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei; CCarEnterExit::CarHasDoorToOpen(CVehicle const&,int)
4F5BE6:  CMP             R0, #1
4F5BE8:  BNE             loc_4F5C44
4F5BEA:  LDR             R0, [R4,#0xC]; this
4F5BEC:  MOV             R2, R5; CPed *
4F5BEE:  LDR             R1, [R4,#0x14]; CVehicle *
4F5BF0:  BLX             j__ZN13CCarEnterExit18CarHasOpenableDoorERK8CVehicleiRK4CPed; CCarEnterExit::CarHasOpenableDoor(CVehicle const&,int,CPed const&)
4F5BF4:  CMP             R0, #0
4F5BF6:  ITTE EQ
4F5BF8:  LDREQ           R0, [R4,#0xC]
4F5BFA:  LDRBEQ.W        R0, [R0,#0x3D4]
4F5BFE:  MOVNE           R0, #0
4F5C00:  B               loc_4F5C46
4F5C02:  LDR             R0, [R4,#0xC]; jumptable 004F57E8 case 817
4F5C04:  MOV             R2, R5; CPed *
4F5C06:  LDR             R1, [R4,#0x40]; CVehicle *
4F5C08:  BLX             j__ZN13CCarEnterExit34MakeUndraggedPassengerPedsLeaveCarERK8CVehiclePK4CPedS5_; CCarEnterExit::MakeUndraggedPassengerPedsLeaveCar(CVehicle const&,CPed const*,CPed const*)
4F5C0C:  MOVS            R0, #dword_1C; jumptable 004F57E8 case 808
4F5C0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5C12:  MOV             R6, R0
4F5C14:  LDR             R1, [R4,#0xC]; CVehicle *
4F5C16:  MOV             R0, R6; this
4F5C18:  LDR             R2, [R4,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5C1A:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
4F5C1E:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5C20:  LDRB            R0, [R4,#0x10]; jumptable 004F57E8 case 820
4F5C22:  TST.W           R0, #4
4F5C26:  BNE             loc_4F5D0A
4F5C28:  MOVS            R0, #dword_24; this
4F5C2A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5C2E:  LDR             R1, [R4,#0xC]; CVehicle *
4F5C30:  MOV             R6, R0
4F5C32:  LDR             R2, [R4,#0x14]; int
4F5C34:  LDR             R3, [R4,#0x38]; CTaskUtilityLineUpPedWithCar *
4F5C36:  BLX             j__ZN19CTaskSimpleCarGetInC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarGetIn::CTaskSimpleCarGetIn(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F5C3A:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5C3C:  AND.W           R0, R0, #0xFD
4F5C40:  STRB            R0, [R4,#0x10]
4F5C42:  B               loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5C44:  MOVS            R0, #0
4F5C46:  LDR             R1, [R4,#0xC]
4F5C48:  STRB.W          R0, [R1,#0x3D4]
4F5C4C:  LDR             R1, [R5,#0x1C]
4F5C4E:  LDR.W           R0, [R5,#0x440]; this
4F5C52:  BIC.W           R1, R1, #1
4F5C56:  STR             R1, [R5,#0x1C]
4F5C58:  MOVS            R1, #1; bool
4F5C5A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4F5C5E:  CBZ             R0, loc_4F5C76
4F5C60:  LDR.W           R0, [R5,#0x440]; this
4F5C64:  MOVS            R1, #1; bool
4F5C66:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4F5C6A:  LDR             R1, [R0]
4F5C6C:  MOVS            R2, #1
4F5C6E:  MOVS            R3, #0
4F5C70:  LDR             R6, [R1,#0x1C]
4F5C72:  MOV             R1, R5
4F5C74:  BLX             R6
4F5C76:  LDR             R1, [R4,#0xC]; CVehicle *
4F5C78:  ADD             R0, SP, #0x60+var_4C; this
4F5C7A:  LDR             R2, [R4,#0x14]; int
4F5C7C:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4F5C80:  LDR             R0, [R5,#0x14]
4F5C82:  VLDR            S0, [SP,#0x60+var_4C]
4F5C86:  ADD.W           R1, R0, #0x30 ; '0'
4F5C8A:  CMP             R0, #0
4F5C8C:  VLDR            S2, [SP,#0x60+var_48]
4F5C90:  MOV.W           R0, #0x1C; unsigned int
4F5C94:  VLDR            S4, [SP,#0x60+var_44]
4F5C98:  IT EQ
4F5C9A:  ADDEQ           R1, R5, #4
4F5C9C:  VLDR            S6, [R1]
4F5CA0:  VLDR            S8, [R1,#4]
4F5CA4:  VSUB.F32        S0, S0, S6
4F5CA8:  VLDR            S10, [R1,#8]
4F5CAC:  VSTR            S0, [SP,#0x60+var_38]
4F5CB0:  VSUB.F32        S0, S2, S8
4F5CB4:  VSTR            S0, [SP,#0x60+var_38+4]
4F5CB8:  VSUB.F32        S0, S4, S10
4F5CBC:  VSTR            S0, [SP,#0x60+var_30]
4F5CC0:  BLX             _Znwj; operator new(uint)
4F5CC4:  LDR             R1, [R4,#0x14]
4F5CC6:  MOV.W           R2, #0x258; int
4F5CCA:  STR             R1, [SP,#0x60+var_60]; int
4F5CCC:  ADD             R1, SP, #0x60+var_38; CVector *
4F5CCE:  MOVS            R3, #0; int
4F5CD0:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
4F5CD4:  STR             R0, [R4,#0x38]
4F5CD6:  LDR             R0, [R4,#0xC]
4F5CD8:  LDR.W           R1, [R0,#0x5A0]; unsigned int
4F5CDC:  CMP             R1, #9
4F5CDE:  ITT NE
4F5CE0:  LDRNE.W         R0, [R0,#0x5A4]
4F5CE4:  CMPNE           R0, #2
4F5CE6:  BEQ.W           loc_4F60A4; jumptable 004F57E8 case 801
4F5CEA:  MOVS            R0, #word_28; this
4F5CEC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5CF0:  LDR             R1, [R4,#0xC]
4F5CF2:  MOV             R6, R0
4F5CF4:  LDR             R3, [R4,#0x14]
4F5CF6:  ADD.W           R2, R4, #0x2C ; ','
4F5CFA:  B               loc_4F621C
4F5CFC:  LDRB            R0, [R4,#0x10]
4F5CFE:  LSLS            R0, R0, #0x1F
4F5D00:  BNE.W           loc_4F5F02
4F5D04:  MOVW            R1, #0x32B
4F5D08:  B               loc_4F5FF0
4F5D0A:  LDR             R1, [R4,#0x40]; unsigned int
4F5D0C:  AND.W           R0, R0, #0xFB
4F5D10:  STRB            R0, [R4,#0x10]
4F5D12:  CMP             R1, #0
4F5D14:  BEQ.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5D18:  LDR             R0, [R4,#0xC]
4F5D1A:  LDR             R0, [R0,#0x14]
4F5D1C:  VLDR            D16, [R0]
4F5D20:  LDR             R0, [R0,#8]
4F5D22:  STR             R0, [SP,#0x60+var_30]
4F5D24:  VSTR            D16, [SP,#0x60+var_38]
4F5D28:  LDR             R0, [R4,#0x14]
4F5D2A:  BIC.W           R0, R0, #1
4F5D2E:  CMP             R0, #0xA
4F5D30:  BNE             loc_4F5D56
4F5D32:  VLDR            S0, [SP,#0x60+var_38]
4F5D36:  VLDR            S2, [SP,#0x60+var_38+4]
4F5D3A:  VLDR            S4, [SP,#0x60+var_30]
4F5D3E:  VNEG.F32        S0, S0
4F5D42:  VNEG.F32        S2, S2
4F5D46:  VNEG.F32        S4, S4
4F5D4A:  VSTR            S0, [SP,#0x60+var_38]
4F5D4E:  VSTR            S2, [SP,#0x60+var_38+4]
4F5D52:  VSTR            S4, [SP,#0x60+var_30]
4F5D56:  MOVS            R0, #dword_1C; this
4F5D58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5D5C:  LDR             R1, [R4,#0x40]; CPed *
4F5D5E:  ADD             R2, SP, #0x60+var_38; CVector *
4F5D60:  MOV             R6, R0
4F5D62:  BLX             j__ZN31CTaskSimpleWaitUntilPedIsOutCarC2EP4CPedRK7CVector; CTaskSimpleWaitUntilPedIsOutCar::CTaskSimpleWaitUntilPedIsOutCar(CPed *,CVector const&)
4F5D66:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5D68:  MOVS            R0, #dword_50; this
4F5D6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5D6E:  LDR.W           R5, =(_ZN36CTaskComplexGoToCarDoorAndStandStill16ms_fTargetRadiusE_ptr - 0x4F5D7C)
4F5D72:  MOV             R6, R0
4F5D74:  LDR.W           R0, =(_ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr - 0x4F5D82)
4F5D78:  ADD             R5, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill16ms_fTargetRadiusE_ptr
4F5D7A:  LDR.W           R1, =(_ZN36CTaskComplexGoToCarDoorAndStandStill19ms_fMaxSeekDistanceE_ptr - 0x4F5D8A)
4F5D7E:  ADD             R0, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill15ms_iMaxSeekTimeE_ptr
4F5D80:  LDRB.W          R12, [R4,#0x10]
4F5D84:  LDR             R5, [R5]; CTaskComplexGoToCarDoorAndStandStill::ms_fTargetRadius ...
4F5D86:  ADD             R1, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill19ms_fMaxSeekDistanceE_ptr
4F5D88:  LDR             R0, [R0]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime ...
4F5D8A:  LDR             R3, [R1]; CTaskComplexGoToCarDoorAndStandStill::ms_fMaxSeekDistance ...
4F5D8C:  VLDR            S0, [R5]
4F5D90:  LDR.W           R5, =(_ZN36CTaskComplexGoToCarDoorAndStandStill20ms_fSlowDownDistanceE_ptr - 0x4F5D9A)
4F5D94:  LDR             R2, [R4,#0x24]; int
4F5D96:  ADD             R5, PC; _ZN36CTaskComplexGoToCarDoorAndStandStill20ms_fSlowDownDistanceE_ptr
4F5D98:  LDR             R1, [R4,#0xC]; CVehicle *
4F5D9A:  LDR             R4, [R4,#0x1C]
4F5D9C:  LDR             R5, [R5]; CTaskComplexGoToCarDoorAndStandStill::ms_fSlowDownDistance ...
4F5D9E:  VLDR            S4, [R3]
4F5DA2:  AND.W           R3, R12, #1; bool
4F5DA6:  LDR             R0, [R0]; CTaskComplexGoToCarDoorAndStandStill::ms_iMaxSeekTime
4F5DA8:  VLDR            S2, [R5]
4F5DAC:  STR             R4, [SP,#0x60+var_60]; int
4F5DAE:  STR             R0, [SP,#0x60+var_50]; int
4F5DB0:  MOV             R0, R6; this
4F5DB2:  VSTR            S0, [SP,#0x60+var_5C]
4F5DB6:  VSTR            S2, [SP,#0x60+var_58]
4F5DBA:  VSTR            S4, [SP,#0x60+var_54]
4F5DBE:  BLX             j__ZN36CTaskComplexGoToCarDoorAndStandStillC2EP8CVehicleibifffi; CTaskComplexGoToCarDoorAndStandStill::CTaskComplexGoToCarDoorAndStandStill(CVehicle *,int,bool,int,float,float,float,int)
4F5DC2:  B               def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5DC4:  LDR             R0, [R4,#0xC]; this
4F5DC6:  LDR             R1, [R4,#0x14]; CVehicle *
4F5DC8:  BLX             j__ZN13CCarEnterExit14IsCarDoorReadyERK8CVehiclei; CCarEnterExit::IsCarDoorReady(CVehicle const&,int)
4F5DCC:  CBNZ            R0, loc_4F5DDC
4F5DCE:  LDR             R0, [R4,#0xC]; this
4F5DD0:  LDR             R1, [R4,#0x14]; CVehicle *
4F5DD2:  BLX             j__ZN13CCarEnterExit23CarHasPartiallyOpenDoorERK8CVehiclei; CCarEnterExit::CarHasPartiallyOpenDoor(CVehicle const&,int)
4F5DD6:  CMP             R0, #1
4F5DD8:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F5DDC:  MOV             R0, R4; this
4F5DDE:  BLX             j__ZN20CTaskComplexEnterCar15SetVehicleFlagsEP4CPed; CTaskComplexEnterCar::SetVehicleFlags(CPed *)
4F5DE2:  LDR             R0, [R4,#0xC]
4F5DE4:  LDRB.W          R0, [R0,#0x3D4]
4F5DE8:  CMP             R0, #0
4F5DEA:  ITTT NE
4F5DEC:  VMOVNE          S0, R0
4F5DF0:  VCVTNE.F32.U32  S0, S0
4F5DF4:  VSTRNE          S0, [R4,#0x48]
4F5DF8:  MOV             R0, R5; this
4F5DFA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5DFE:  CMP             R0, #1
4F5E00:  BNE.W           loc_4F5FFE
4F5E04:  LDR             R0, [R4,#0xC]; this
4F5E06:  LDR             R1, [R4,#0x14]; CVehicle *
4F5E08:  BLX             j__ZN13CCarEnterExit16CarHasDoorToOpenERK8CVehiclei; CCarEnterExit::CarHasDoorToOpen(CVehicle const&,int)
4F5E0C:  CMP             R0, #1
4F5E0E:  BNE.W           loc_4F5FFE
4F5E12:  LDR             R0, [R4,#0xC]; this
4F5E14:  MOV             R2, R5; CPed *
4F5E16:  LDR             R1, [R4,#0x14]; CVehicle *
4F5E18:  BLX             j__ZN13CCarEnterExit18CarHasOpenableDoorERK8CVehicleiRK4CPed; CCarEnterExit::CarHasOpenableDoor(CVehicle const&,int,CPed const&)
4F5E1C:  CMP             R0, #0
4F5E1E:  ITTE EQ
4F5E20:  LDREQ           R0, [R4,#0xC]
4F5E22:  LDRBEQ.W        R0, [R0,#0x3D4]
4F5E26:  MOVNE           R0, #0
4F5E28:  B               loc_4F6000
4F5E2A:  ADD.W           R9, R4, #0x14
4F5E2E:  LDR             R0, [R4,#0xC]; this
4F5E30:  LDR             R1, [R4,#0x14]; CVehicle *
4F5E32:  BLX             j__ZN13CCarEnterExit20ComputeSlowJackedPedERK8CVehiclei; CCarEnterExit::ComputeSlowJackedPed(CVehicle const&,int)
4F5E36:  ADD.W           R8, R4, #0x40 ; '@'
4F5E3A:  CMP             R0, #0
4F5E3C:  STR             R0, [R4,#0x40]
4F5E3E:  ITT NE
4F5E40:  MOVNE           R1, R8; CEntity **
4F5E42:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F5E46:  LDRB            R0, [R4,#0x10]
4F5E48:  LDR             R6, [R4,#0x40]
4F5E4A:  LSLS            R0, R0, #0x1D
4F5E4C:  BMI             loc_4F5E70
4F5E4E:  CMP             R6, #0
4F5E50:  BEQ.W           loc_4F5C28
4F5E54:  MOV             R0, R6; this
4F5E56:  MOV             R1, R5; CPed *
4F5E58:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
4F5E5C:  LDR.W           R6, [R8]
4F5E60:  CMP             R0, #0
4F5E62:  BNE.W           loc_4F60DA
4F5E66:  LDRB.W          R0, [R6,#0x487]
4F5E6A:  LSLS            R0, R0, #0x1A
4F5E6C:  BMI.W           loc_4F60DA
4F5E70:  CMP             R6, #0
4F5E72:  BEQ.W           loc_4F62A2
4F5E76:  MOV             R0, R6; this
4F5E78:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F5E7C:  CMP             R0, #1
4F5E7E:  BNE.W           loc_4F622A
4F5E82:  LDR.W           R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x4F5E8A)
4F5E86:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
4F5E88:  LDR             R0, [R0]; CGameLogic::SkipState ...
4F5E8A:  LDR             R0, [R0]; CGameLogic::SkipState
4F5E8C:  CMP             R0, #2
4F5E8E:  BNE.W           loc_4F622A
4F5E92:  MOV             R0, R4; this
4F5E94:  MOVW            R1, #0x516; int
4F5E98:  MOV             R2, R5; CPed *
4F5E9A:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F5E9E:  MOV             R6, R0
4F5EA0:  LDR             R0, [R4,#0x40]; this
4F5EA2:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F5EA6:  MOV             R4, R0
4F5EA8:  CMP             R4, #0
4F5EAA:  BEQ.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5EAE:  LDR.W           R1, [R8]; CPed *
4F5EB2:  ADD.W           R0, R4, #8; this
4F5EB6:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F5EBA:  CMP             R0, #1
4F5EBC:  BNE.W           def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5EC0:  MOVS            R0, #(byte_9+3); this
4F5EC2:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F5EC6:  MOV             R5, R0
4F5EC8:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4F5ECC:  LDR.W           R0, =(_ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr - 0x4F5ED6)
4F5ED0:  MOV             R2, R5; CEvent *
4F5ED2:  ADD             R0, PC; _ZTV35CEventLeaderQuitEnteringCarAsDriver_ptr
4F5ED4:  LDR             R0, [R0]; `vtable for'CEventLeaderQuitEnteringCarAsDriver ...
4F5ED6:  ADDS            R0, #8
4F5ED8:  STR             R0, [R5]
4F5EDA:  LDR.W           R1, [R8]; CPed *
4F5EDE:  ADD.W           R8, SP, #0x60+var_38
4F5EE2:  MOV             R0, R8; this
4F5EE4:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F5EE8:  ADD.W           R0, R4, #0x30 ; '0'; this
4F5EEC:  MOV             R1, R8; CEvent *
4F5EEE:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F5EF2:  MOV             R0, R8; this
4F5EF4:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F5EF8:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5EFC:  MOVS            R6, #0
4F5EFE:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5F02:  LDR             R0, [R4,#0x14]
4F5F04:  CMP             R0, #8
4F5F06:  BNE             loc_4F5FEC
4F5F08:  LDR             R1, [R4,#0xC]; CVehicle *
4F5F0A:  LDR.W           R0, [R1,#0x5A0]
4F5F0E:  CMP             R0, #0
4F5F10:  BNE             loc_4F5FEC
4F5F12:  LDR.W           R0, [R1,#0x388]
4F5F16:  LDRB.W          R0, [R0,#0xCD]
4F5F1A:  LSLS            R0, R0, #0x1E
4F5F1C:  BMI             loc_4F5FEC
4F5F1E:  LDR.W           R0, [R1,#0x464]
4F5F22:  CMP             R0, #0
4F5F24:  BEQ             loc_4F5FE6
4F5F26:  ADD             R6, SP, #0x60+var_38
4F5F28:  MOV             R2, R5; CPed *
4F5F2A:  MOVS            R3, #1; bool
4F5F2C:  MOV             R0, R6; this
4F5F2E:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
4F5F32:  LDR             R0, [R4,#0xC]
4F5F34:  MOV             R1, R6; CEvent *
4F5F36:  MOVS            R2, #1; bool
4F5F38:  LDR.W           R0, [R0,#0x464]
4F5F3C:  LDR.W           R0, [R0,#0x440]
4F5F40:  ADDS            R0, #0x68 ; 'h'; this
4F5F42:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4F5F46:  LDR             R0, [R4,#0xC]
4F5F48:  LDR.W           R0, [R0,#0x464]; this
4F5F4C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4F5F50:  MOV             R9, R0
4F5F52:  LDR             R0, [R4,#0xC]
4F5F54:  LDR.W           R0, [R0,#0x464]
4F5F58:  LDR.W           R8, [R0,#0x440]
4F5F5C:  MOVS            R0, #dword_34; this
4F5F5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F5F62:  LDR.W           R10, [R4,#0xC]
4F5F66:  MOV             R6, R0
4F5F68:  LDR.W           R1, [R10,#0x464]; CVehicle *
4F5F6C:  MOV             R0, R10; this
4F5F6E:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4F5F72:  MOV             R11, R0
4F5F74:  MOV             R0, R6; this
4F5F76:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F5F7A:  LDR.W           R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F5F8E)
4F5F7E:  MOV.W           R1, #0x100
4F5F82:  MOV.W           R2, #0x40800000
4F5F86:  MOV.W           R3, #0x3F800000
4F5F8A:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F5F8C:  ADD.W           R12, R6, #0x24 ; '$'
4F5F90:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F5F92:  ADDS            R0, #8
4F5F94:  STR             R0, [R6]
4F5F96:  MOVS            R0, #0
4F5F98:  STRD.W          R11, R0, [R6,#0x10]
4F5F9C:  STRH            R1, [R6,#0x18]
4F5F9E:  MOVS            R1, #0xF
4F5FA0:  STRB            R0, [R6,#0x1A]
4F5FA2:  STR             R0, [R6,#0x1C]
4F5FA4:  STRB.W          R0, [R6,#0x20]
4F5FA8:  STRB.W          R0, [R6,#0x21]
4F5FAC:  STM.W           R12, {R1-R3}
4F5FB0:  MOV             R1, R6
4F5FB2:  STRB.W          R0, [R6,#0x30]
4F5FB6:  MOV             R0, R10; this
4F5FB8:  STR.W           R10, [R1,#0xC]!; CEntity **
4F5FBC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F5FC0:  CMP.W           R9, #1
4F5FC4:  BNE             loc_4F5FD6
4F5FC6:  LDR.W           R0, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x4F5FD2)
4F5FCA:  MOVS            R1, #1
4F5FCC:  STRB            R1, [R6,#0x1A]
4F5FCE:  ADD             R0, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
4F5FD0:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndDie ...
4F5FD2:  ADDS            R0, #8
4F5FD4:  STR             R0, [R6]
4F5FD6:  MOV             R0, R8; this
4F5FD8:  MOV             R1, R6; CTask *
4F5FDA:  MOVS            R2, #1; bool
4F5FDC:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F5FE0:  ADD             R0, SP, #0x60+var_38; this
4F5FE2:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
4F5FE6:  MOV.W           R1, #0x328
4F5FEA:  B               loc_4F5FF0
4F5FEC:  MOV.W           R1, #0x32C; int
4F5FF0:  MOV             R0, R4; this
4F5FF2:  MOV             R2, R5; CPed *
4F5FF4:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F5FF8:  MOV             R6, R0
4F5FFA:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F5FFE:  MOVS            R0, #0
4F6000:  LDR             R1, [R4,#0xC]
4F6002:  STRB.W          R0, [R1,#0x3D4]
4F6006:  LDR             R1, [R5,#0x1C]
4F6008:  LDR.W           R0, [R5,#0x440]; this
4F600C:  BIC.W           R1, R1, #1
4F6010:  STR             R1, [R5,#0x1C]
4F6012:  MOVS            R1, #1; bool
4F6014:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4F6018:  CBZ             R0, loc_4F6030
4F601A:  LDR.W           R0, [R5,#0x440]; this
4F601E:  MOVS            R1, #1; bool
4F6020:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4F6024:  LDR             R1, [R0]
4F6026:  MOVS            R2, #1
4F6028:  MOVS            R3, #0
4F602A:  LDR             R6, [R1,#0x1C]
4F602C:  MOV             R1, R5
4F602E:  BLX             R6
4F6030:  LDR             R1, [R4,#0xC]; CVehicle *
4F6032:  ADD             R0, SP, #0x60+var_4C; this
4F6034:  LDR             R2, [R4,#0x14]; int
4F6036:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4F603A:  LDR             R0, [R5,#0x14]
4F603C:  VLDR            S0, [SP,#0x60+var_4C]
4F6040:  ADD.W           R1, R0, #0x30 ; '0'
4F6044:  CMP             R0, #0
4F6046:  VLDR            S2, [SP,#0x60+var_48]
4F604A:  MOV.W           R0, #0x1C; unsigned int
4F604E:  VLDR            S4, [SP,#0x60+var_44]
4F6052:  IT EQ
4F6054:  ADDEQ           R1, R5, #4
4F6056:  VLDR            S6, [R1]
4F605A:  VLDR            S8, [R1,#4]
4F605E:  VSUB.F32        S0, S0, S6
4F6062:  VLDR            S10, [R1,#8]
4F6066:  VSTR            S0, [SP,#0x60+var_38]
4F606A:  VSUB.F32        S0, S2, S8
4F606E:  VSTR            S0, [SP,#0x60+var_38+4]
4F6072:  VSUB.F32        S0, S4, S10
4F6076:  VSTR            S0, [SP,#0x60+var_30]
4F607A:  BLX             _Znwj; operator new(uint)
4F607E:  LDR             R1, [R4,#0x14]
4F6080:  MOV.W           R2, #0x258; int
4F6084:  STR             R1, [SP,#0x60+var_60]; int
4F6086:  ADD             R1, SP, #0x60+var_38; CVector *
4F6088:  MOVS            R3, #0; int
4F608A:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
4F608E:  STR             R0, [R4,#0x38]
4F6090:  LDR             R0, [R4,#0xC]
4F6092:  LDR.W           R1, [R0,#0x5A0]; unsigned int
4F6096:  CMP             R1, #9
4F6098:  ITT NE
4F609A:  LDRNE.W         R0, [R0,#0x5A4]
4F609E:  CMPNE           R0, #2
4F60A0:  BNE.W           loc_4F620A
4F60A4:  LDR             R0, [R4]; jumptable 004F57E8 case 801
4F60A6:  MOV             R1, R5
4F60A8:  LDR             R2, [R0,#0x34]
4F60AA:  MOV             R0, R4
4F60AC:  BLX             R2
4F60AE:  MOV             R6, R0
4F60B0:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F60B4:  MOV             R0, R5
4F60B6:  MOVS            R1, #1
4F60B8:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4F60BC:  LDR             R0, [R5]
4F60BE:  LDR             R1, [R0,#0x60]
4F60C0:  MOV             R0, R5
4F60C2:  BLX             R1
4F60C4:  MOVS            R0, #dword_14; this
4F60C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F60CA:  LDR             R1, [R4,#0xC]; CVehicle *
4F60CC:  MOV             R6, R0
4F60CE:  LDRD.W          R2, R3, [R4,#0x14]; int
4F60D2:  BLX             j__ZN37CTaskSimpleCarWaitForDoorNotToBeInUseC2EP8CVehicleii; CTaskSimpleCarWaitForDoorNotToBeInUse::CTaskSimpleCarWaitForDoorNotToBeInUse(CVehicle *,int,int)
4F60D6:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F60DA:  CMP             R6, #0
4F60DC:  BEQ.W           loc_4F5C28
4F60E0:  LDRB            R0, [R4,#0x10]
4F60E2:  LSLS            R0, R0, #0x1F
4F60E4:  BEQ             loc_4F60FC
4F60E6:  LDR             R0, [R4,#0xC]; this
4F60E8:  MOV             R1, R6; CPed *
4F60EA:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
4F60EE:  CMP             R0, #1
4F60F0:  BEQ             loc_4F611E
4F60F2:  LDR.W           R6, [R8]
4F60F6:  CMP             R6, #0
4F60F8:  BEQ.W           loc_4F5C28
4F60FC:  LDRB            R0, [R4,#0x10]
4F60FE:  LSLS            R0, R0, #0x1F
4F6100:  BNE.W           loc_4F5C28
4F6104:  LDR.W           R8, [R4,#0xC]
4F6108:  LDR             R1, [R4,#0x14]; CVehicle *
4F610A:  MOV             R0, R8; this
4F610C:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
4F6110:  ADD.W           R0, R8, R0,LSL#2
4F6114:  LDR.W           R0, [R0,#0x468]
4F6118:  CMP             R6, R0
4F611A:  BNE.W           loc_4F5C28
4F611E:  LDR             R0, [R4,#0xC]; this
4F6120:  LDR             R1, [R4,#0x14]; CVehicle *
4F6122:  BLX             j__ZN13CCarEnterExit17CarHasDoorToCloseERK8CVehiclei; CCarEnterExit::CarHasDoorToClose(CVehicle const&,int)
4F6126:  CMP             R0, #1
4F6128:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F612C:  MOVS            R0, #dword_1C; this
4F612E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6132:  LDR             R1, [R4,#0xC]; CVehicle *
4F6134:  MOV             R6, R0
4F6136:  LDR             R2, [R4,#0x14]; int
4F6138:  LDR             R3, [R4,#0x38]; CTaskUtilityLineUpPedWithCar *
4F613A:  BLX             j__ZN34CTaskSimpleCarCloseDoorFromOutsideC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarCloseDoorFromOutside::CTaskSimpleCarCloseDoorFromOutside(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F613E:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F6142:  LDR             R0, [R4,#0x14]
4F6144:  CMP             R0, #8
4F6146:  BNE.W           loc_4F5C0C; jumptable 004F57E8 case 808
4F614A:  LDR             R1, [R4,#0xC]; CVehicle *
4F614C:  LDR.W           R0, [R1,#0x464]
4F6150:  CMP             R0, #0
4F6152:  BEQ.W           loc_4F63E0
4F6156:  ADD             R6, SP, #0x60+var_38
4F6158:  MOV             R2, R5; CPed *
4F615A:  MOVS            R3, #1; bool
4F615C:  MOV.W           R10, #1
4F6160:  MOV             R0, R6; this
4F6162:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
4F6166:  LDR             R0, [R4,#0xC]
4F6168:  MOV             R1, R6; CEvent *
4F616A:  MOVS            R2, #1; bool
4F616C:  LDR.W           R0, [R0,#0x464]
4F6170:  LDR.W           R0, [R0,#0x440]
4F6174:  ADDS            R0, #0x68 ; 'h'; this
4F6176:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4F617A:  LDR             R0, [R4,#0xC]
4F617C:  LDR.W           R0, [R0,#0x464]; this
4F6180:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4F6184:  LDR             R1, [R4,#0xC]
4F6186:  CMP             R0, #1
4F6188:  LDR.W           R1, [R1,#0x464]; unsigned int
4F618C:  BNE.W           loc_4F635C
4F6190:  ADDW            R0, R1, #0x544
4F6194:  VLDR            S0, [R0]
4F6198:  VCMPE.F32       S0, #0.0
4F619C:  VMRS            APSR_nzcv, FPSCR
4F61A0:  BLE.W           loc_4F635C
4F61A4:  MOVS            R0, #dword_34; this
4F61A6:  LDR.W           R8, [R1,#0x440]
4F61AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F61AE:  LDR             R5, [R4,#0xC]
4F61B0:  MOV             R6, R0
4F61B2:  LDR.W           R1, [R5,#0x464]; CVehicle *
4F61B6:  MOV             R0, R5; this
4F61B8:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4F61BC:  MOV             R9, R0
4F61BE:  MOV             R0, R6; this
4F61C0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F61C4:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F61D6)
4F61C6:  MOV.W           R1, #0x100
4F61CA:  MOV.W           R2, #0x40800000
4F61CE:  MOV.W           R3, #0x3F800000
4F61D2:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F61D4:  ADD.W           R12, R6, #0x24 ; '$'
4F61D8:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F61DA:  ADDS            R0, #8
4F61DC:  STR             R0, [R6]
4F61DE:  MOVS            R0, #0
4F61E0:  STRD.W          R9, R0, [R6,#0x10]
4F61E4:  STRH            R1, [R6,#0x18]
4F61E6:  MOVS            R1, #0xF
4F61E8:  STRB            R0, [R6,#0x1A]
4F61EA:  STR             R0, [R6,#0x1C]
4F61EC:  STRB.W          R0, [R6,#0x20]
4F61F0:  STRB.W          R0, [R6,#0x21]
4F61F4:  STM.W           R12, {R1-R3}
4F61F8:  MOV             R1, R6
4F61FA:  STRB.W          R0, [R6,#0x30]
4F61FE:  MOV             R0, R5; this
4F6200:  STR.W           R5, [R1,#0xC]!; CEntity **
4F6204:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F6208:  B               loc_4F63CE
4F620A:  MOVS            R0, #word_28; this
4F620C:  ADD.W           R5, R4, #0x2C ; ','
4F6210:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6214:  LDR             R1, [R4,#0xC]; CVehicle *
4F6216:  MOV             R6, R0
4F6218:  LDR             R3, [R4,#0x14]; int
4F621A:  MOV             R2, R5; CVector *
4F621C:  LDR             R0, [R4,#0x38]
4F621E:  STR             R0, [SP,#0x60+var_60]; CTaskUtilityLineUpPedWithCar *
4F6220:  MOV             R0, R6; this
4F6222:  BLX             j__ZN19CTaskSimpleCarAlignC2EP8CVehicleRK7CVectoriP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarAlign::CTaskSimpleCarAlign(CVehicle *,CVector const&,int,CTaskUtilityLineUpPedWithCar *)
4F6226:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F622A:  LDR.W           R0, [R8]
4F622E:  CBZ             R0, loc_4F62A2
4F6230:  MOV             R0, R4; this
4F6232:  MOV.W           R1, #0x334; int
4F6236:  MOV             R2, R5; CPed *
4F6238:  BLX             j__ZN20CTaskComplexEnterCar13CreateSubTaskEiP4CPed; CTaskComplexEnterCar::CreateSubTask(int,CPed *)
4F623C:  MOV             R6, R0
4F623E:  LDR             R0, [R4,#0x40]
4F6240:  LDR.W           R9, [R0,#0x440]
4F6244:  MOVS            R0, #dword_14; this
4F6246:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F624A:  LDR             R1, [R4,#0xC]; CVehicle *
4F624C:  MOV             R10, R0
4F624E:  LDR             R2, [R4,#0x14]; int
4F6250:  BLX             j__ZN41CTaskComplexCarSlowBeDraggedOutAndStandUpC2EP8CVehiclei; CTaskComplexCarSlowBeDraggedOutAndStandUp::CTaskComplexCarSlowBeDraggedOutAndStandUp(CVehicle *,int)
4F6254:  MOV             R0, R9; this
4F6256:  MOV             R1, R10; CTask *
4F6258:  MOVS            R2, #1; bool
4F625A:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F625E:  LDR             R1, [R4,#0xC]; CVehicle *
4F6260:  ADD.W           R9, SP, #0x60+var_38
4F6264:  LDR             R0, [R4,#0x40]
4F6266:  MOVS            R3, #0
4F6268:  LDR.W           R2, [R1,#0x464]
4F626C:  CMP             R2, R0
4F626E:  MOV             R0, R9; this
4F6270:  IT EQ
4F6272:  MOVEQ           R3, #1; bool
4F6274:  MOV             R2, R5; CPed *
4F6276:  BLX             j__ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb; CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*,CPed const*,bool)
4F627A:  LDR             R0, [R4,#0x40]
4F627C:  MOV             R1, R9; CEvent *
4F627E:  MOVS            R2, #1; bool
4F6280:  LDR.W           R0, [R0,#0x440]
4F6284:  ADDS            R0, #0x68 ; 'h'; this
4F6286:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4F628A:  LDR             R0, [R4,#0xC]
4F628C:  LDR             R1, [R4,#0x40]; CPed *
4F628E:  LDR.W           R0, [R0,#0x464]; this
4F6292:  CMP             R0, R1
4F6294:  BEQ.W           loc_4F6408
4F6298:  ADD             R0, SP, #0x60+var_38; this
4F629A:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
4F629E:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F62A2:  LDRB            R0, [R4,#0x10]
4F62A4:  LSLS            R0, R0, #0x1D
4F62A6:  BPL.W           loc_4F5C28
4F62AA:  LDR             R0, [R4,#0xC]
4F62AC:  LDR.W           R1, [R0,#0x5A0]
4F62B0:  CMP             R1, #0
4F62B2:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F62B6:  LDR.W           R1, [R9]; int
4F62BA:  ADDW            R0, R0, #0x5B4; this
4F62BE:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F62C2:  CBZ             R0, loc_4F62D6
4F62C4:  LDR             R0, [R4,#0xC]
4F62C6:  LDR             R1, [R4,#0x14]; int
4F62C8:  ADDW            R0, R0, #0x5B4; this
4F62CC:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F62D0:  CMP             R0, #2
4F62D2:  BNE.W           loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F62D6:  LDR             R0, [R4,#0xC]
4F62D8:  LDR             R1, [R4,#0x14]; int
4F62DA:  ADDW            R0, R0, #0x5B4; this
4F62DE:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F62E2:  LDR             R3, [R4,#0xC]
4F62E4:  ADDS            R2, R0, #1; unsigned int
4F62E6:  LDR             R1, [R4,#0x14]; int
4F62E8:  ADDW            R0, R3, #0x5B4; this
4F62EC:  BLX             j__ZN14CDamageManager13SetDoorStatusEij; CDamageManager::SetDoorStatus(int,uint)
4F62F0:  B.W             loc_4F598C; jumptable 004F56A0 cases 704,715,719,800-808,810,816,817,820,829
4F62F4:  LDR             R0, =(Pads_ptr - 0x4F62FA)
4F62F6:  ADD             R0, PC; Pads_ptr
4F62F8:  LDR             R0, [R0]; Pads ; this
4F62FA:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
4F62FE:  CMP             R0, #0xFE
4F6300:  BGT             loc_4F6312
4F6302:  LDR             R0, =(Pads_ptr - 0x4F6308)
4F6304:  ADD             R0, PC; Pads_ptr
4F6306:  LDR             R0, [R0]; Pads ; this
4F6308:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
4F630C:  CMP             R0, #0xFF
4F630E:  BLT.W           loc_4F5B84
4F6312:  LDR             R0, [R4,#0xC]
4F6314:  LDR             R1, [R4,#0x14]; int
4F6316:  ADDW            R0, R0, #0x5B4; this
4F631A:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F631E:  CBZ             R0, loc_4F6330
4F6320:  LDR             R0, [R4,#0xC]
4F6322:  LDR             R1, [R4,#0x14]; int
4F6324:  ADDW            R0, R0, #0x5B4; this
4F6328:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F632C:  CMP             R0, #2
4F632E:  BNE             loc_4F6356
4F6330:  LDR             R0, [R4,#0xC]; this
4F6332:  LDR             R1, [R4,#0x14]; CVehicle *
4F6334:  BLX             j__ZN13CCarEnterExit17CarHasDoorToCloseERK8CVehiclei; CCarEnterExit::CarHasDoorToClose(CVehicle const&,int)
4F6338:  CMP             R0, #1
4F633A:  BNE             loc_4F6356
4F633C:  LDR             R0, [R4,#0xC]
4F633E:  LDR             R1, [R4,#0x14]; int
4F6340:  ADDW            R0, R0, #0x5B4; this
4F6344:  BLX             j__ZNK14CDamageManager13GetDoorStatusEi; CDamageManager::GetDoorStatus(int)
4F6348:  LDR             R3, [R4,#0xC]
4F634A:  ADDS            R2, R0, #1; unsigned int
4F634C:  LDR             R1, [R4,#0x14]; int
4F634E:  ADDW            R0, R3, #0x5B4; this
4F6352:  BLX             j__ZN14CDamageManager13SetDoorStatusEij; CDamageManager::SetDoorStatus(int,uint)
4F6356:  MOVS            R6, #1
4F6358:  B.W             loc_4F5B86
4F635C:  MOVS            R0, #dword_34; this
4F635E:  LDR.W           R8, [R1,#0x440]
4F6362:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F6366:  LDR             R5, [R4,#0xC]
4F6368:  MOV             R6, R0
4F636A:  LDR.W           R1, [R5,#0x464]; CVehicle *
4F636E:  MOV             R0, R5; this
4F6370:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4F6374:  MOV             R9, R0
4F6376:  MOV             R0, R6; this
4F6378:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F637C:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F638E)
4F637E:  MOV.W           R1, #0x100
4F6382:  MOV.W           R2, #0x40800000
4F6386:  MOV.W           R3, #0x3F800000
4F638A:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F638C:  ADD.W           R12, R6, #0x24 ; '$'
4F6390:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F6392:  ADDS            R0, #8
4F6394:  STR             R0, [R6]
4F6396:  MOVS            R0, #0
4F6398:  STRD.W          R9, R0, [R6,#0x10]
4F639C:  STRH            R1, [R6,#0x18]
4F639E:  MOVS            R1, #0xF
4F63A0:  STRB            R0, [R6,#0x1A]
4F63A2:  STR             R0, [R6,#0x1C]
4F63A4:  STRB.W          R0, [R6,#0x20]
4F63A8:  STRB.W          R0, [R6,#0x21]
4F63AC:  STM.W           R12, {R1-R3}
4F63B0:  MOV             R1, R6
4F63B2:  STRB.W          R0, [R6,#0x30]
4F63B6:  MOV             R0, R5; this
4F63B8:  STR.W           R5, [R1,#0xC]!; CEntity **
4F63BC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F63C0:  LDR             R0, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x4F63CA)
4F63C2:  STRB.W          R10, [R6,#0x1A]
4F63C6:  ADD             R0, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
4F63C8:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndDie ...
4F63CA:  ADDS            R0, #8
4F63CC:  STR             R0, [R6]
4F63CE:  MOV             R0, R8; this
4F63D0:  MOV             R1, R6; CTask *
4F63D2:  MOVS            R2, #1; bool
4F63D4:  BLX             j__ZN16CPedIntelligence26AddTaskPrimaryMaybeInGroupEP5CTaskb; CPedIntelligence::AddTaskPrimaryMaybeInGroup(CTask *,bool)
4F63D8:  ADD             R0, SP, #0x60+var_38; this
4F63DA:  BLX             j__ZN19CEventDraggedOutCarD2Ev; CEventDraggedOutCar::~CEventDraggedOutCar()
4F63DE:  LDR             R1, [R4,#0xC]; unsigned int
4F63E0:  LDR.W           R0, [R1,#0x388]
4F63E4:  LDR.W           R5, [R0,#0xCC]
4F63E8:  MOVS            R0, #dword_1C; this
4F63EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F63EE:  MOV             R6, R0
4F63F0:  TST.W           R5, #0x200
4F63F4:  BNE.W           loc_4F5C14
4F63F8:  LDR             R1, [R4,#0xC]; CVehicle *
4F63FA:  MOV             R0, R6; this
4F63FC:  LDR             R2, [R4,#0x14]; int
4F63FE:  LDR             R3, [R4,#0x38]; CTaskUtilityLineUpPedWithCar *
4F6400:  BLX             j__ZN21CTaskSimpleCarShuffleC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarShuffle::CTaskSimpleCarShuffle(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F6404:  B.W             def_4F57E8; jumptable 004F56A0 cases 705-714,716-718,720-799,809,813-815,818,819,821-828
4F6408:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F640C:  MOV             R4, R0
4F640E:  CMP             R4, #0
4F6410:  BEQ.W           loc_4F6298
4F6414:  LDR.W           R1, [R8]; CPed *
4F6418:  ADD.W           R0, R4, #8; this
4F641C:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
4F6420:  CMP             R0, #1
4F6422:  BNE.W           loc_4F6298
4F6426:  MOVS            R0, #word_10; this
4F6428:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4F642C:  MOV             R5, R0
4F642E:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
4F6432:  LDR             R0, =(_ZTV29CEventLeaderExitedCarAsDriver_ptr - 0x4F643A)
4F6434:  MOV             R2, R5; CEvent *
4F6436:  ADD             R0, PC; _ZTV29CEventLeaderExitedCarAsDriver_ptr
4F6438:  LDR             R0, [R0]; `vtable for'CEventLeaderExitedCarAsDriver ...
4F643A:  ADDS            R0, #8
4F643C:  STR             R0, [R5]
4F643E:  LDR.W           R1, [R8]; CPed *
4F6442:  ADD.W           R8, SP, #0x60+var_4C
4F6446:  MOV             R0, R8; this
4F6448:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
4F644C:  ADD.W           R0, R4, #0x30 ; '0'; this
4F6450:  MOV             R1, R8; CEvent *
4F6452:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
4F6456:  MOV             R0, R8; this
4F6458:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
4F645C:  B               loc_4F6298
