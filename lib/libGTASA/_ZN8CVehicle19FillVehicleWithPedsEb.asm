; =========================================================
; Game Engine Function: _ZN8CVehicle19FillVehicleWithPedsEb
; Address            : 0x59171C - 0x591816
; =========================================================

59171C:  PUSH            {R4-R7,LR}
59171E:  ADD             R7, SP, #0xC
591720:  PUSH.W          {R8-R11}
591724:  SUB             SP, SP, #4
591726:  MOV             R4, R0
591728:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x591730)
59172A:  CMP             R1, #1
59172C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
59172E:  LDR             R0, [R0]; CWorld::Players ...
591730:  LDR.W           R11, [R0]; CWorld::Players
591734:  BNE             loc_59175E
591736:  MOVS            R1, #0
591738:  MOVS            R0, #0x15
59173A:  MOVT            R1, #0x447A
59173E:  NOP
591740:  NOP
591742:  LDR.W           R0, [R11,#0x444]
591746:  ADR             R1, aAfro_0; "afro"
591748:  MOVS            R2, #1; int
59174A:  LDR             R0, [R0,#4]; this
59174C:  BLX             j__ZN15CPedClothesDesc8SetModelEPKci; CPedClothesDesc::SetModel(char const*,int)
591750:  MOV             R0, R11; this
591752:  MOVS            R1, #0; CPlayerPed *
591754:  MOV.W           R9, #0
591758:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
59175C:  B               loc_591762
59175E:  MOV.W           R9, #0x5F ; '_'
591762:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x59176C)
591764:  ADD.W           R1, R9, R9,LSL#2
591768:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
59176A:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
59176C:  ADD.W           R0, R0, R1,LSL#2
591770:  ADD.W           R10, R0, #0x10
591774:  ADDW            R0, R4, #0x464
591778:  STR             R0, [SP,#0x20+var_20]; bool
59177A:  MOVS            R0, #0
59177C:  MOV             R8, R0
59177E:  CMP.W           R8, #0
591782:  BEQ             loc_5917DA
591784:  LDRB.W          R0, [R10]
591788:  CMP             R0, #1
59178A:  BNE             loc_5917D0
59178C:  LDR             R0, [R4,#0x14]
59178E:  MOV             R1, R9
591790:  MOVS            R3, #0
591792:  ADD.W           R2, R0, #0x30 ; '0'
591796:  CMP             R0, #0
591798:  IT EQ
59179A:  ADDEQ           R2, R4, #4
59179C:  MOVS            R0, #5
59179E:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
5917A2:  MOV             R5, R0
5917A4:  CMP.W           R8, #0
5917A8:  BEQ             loc_5917E8
5917AA:  LDR             R0, [SP,#0x20+var_20]
5917AC:  SUB.W           R6, R8, #1
5917B0:  LDR.W           R0, [R0,R8,LSL#2]
5917B4:  CMP             R0, #0
5917B6:  ITTT NE
5917B8:  LDRNE           R1, [R0]
5917BA:  LDRNE           R1, [R1,#4]
5917BC:  BLXNE           R1
5917BE:  MOV             R0, R4; this
5917C0:  MOV             R1, R6; CVehicle *
5917C2:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
5917C6:  MOV             R2, R0; int
5917C8:  MOV             R0, R5
5917CA:  MOV             R1, R4
5917CC:  MOVS            R3, #0
5917CE:  B               loc_5917FE
5917D0:  MOV             R0, R9; this
5917D2:  MOVS            R1, #8; int
5917D4:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5917D8:  B               loc_591802
5917DA:  LDR.W           R0, [R4,#0x464]
5917DE:  CMP             R0, #0
5917E0:  BEQ             loc_591784
5917E2:  CMP             R0, R11
5917E4:  BEQ             loc_591802
5917E6:  B               loc_591784
5917E8:  LDR.W           R0, [R4,#0x464]
5917EC:  CMP             R0, #0
5917EE:  ITTT NE
5917F0:  LDRNE           R1, [R0]
5917F2:  LDRNE           R1, [R1,#4]
5917F4:  BLXNE           R1
5917F6:  MOV             R0, R5; this
5917F8:  MOV             R1, R4; CPed *
5917FA:  MOVS            R2, #0; CVehicle *
5917FC:  MOVS            R3, #1; int
5917FE:  BLX.W           j__ZN13CCarEnterExit17SetPedInCarDirectEP4CPedP8CVehicleib; CCarEnterExit::SetPedInCarDirect(CPed *,CVehicle *,int,bool)
591802:  LDRB.W          R1, [R4,#0x48C]
591806:  ADD.W           R0, R8, #1
59180A:  CMP             R8, R1
59180C:  BLT             loc_59177C
59180E:  ADD             SP, SP, #4
591810:  POP.W           {R8-R11}
591814:  POP             {R4-R7,PC}
