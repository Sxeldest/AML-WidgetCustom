; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBike12SetPedOutCarEP4CPed
; Address            : 0x37576E - 0x3757EE
; =========================================================

37576E:  PUSH            {R4-R7,LR}
375770:  ADD             R7, SP, #0xC
375772:  PUSH.W          {R11}
375776:  SUB             SP, SP, #0x18
375778:  MOV             R4, R1
37577A:  LDR             R1, [R0,#0x38]; CVehicle *
37577C:  MOVS            R2, #0xA
37577E:  STRB.W          R2, [R0,#0x37]
375782:  LDR.W           R3, [R1,#0x464]
375786:  CMP             R3, R4
375788:  BEQ             loc_3757B8
37578A:  LDR.W           R2, [R1,#0x5A0]
37578E:  CMP             R2, #9
375790:  BNE             loc_375796
375792:  MOVS            R2, #0xB
375794:  B               loc_3757B8
375796:  LDR.W           R2, [R1,#0x468]
37579A:  CMP             R2, R4
37579C:  BEQ             loc_3757B2
37579E:  LDR.W           R2, [R1,#0x46C]
3757A2:  CMP             R2, R4
3757A4:  BEQ             loc_375792
3757A6:  LDR.W           R2, [R1,#0x470]
3757AA:  CMP             R2, R4
3757AC:  BEQ             loc_3757B6
3757AE:  MOVS            R2, #0xA
3757B0:  B               loc_3757BC
3757B2:  MOVS            R2, #8
3757B4:  B               loc_3757B8
3757B6:  MOVS            R2, #9; int
3757B8:  STRB.W          R2, [R0,#0x37]
3757BC:  MOV             R5, SP
3757BE:  MOVS            R3, #1; bool
3757C0:  MOV             R0, R5; this
3757C2:  MOVS            R6, #1
3757C4:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
3757C8:  MOVS            R0, #0
3757CA:  MOV             R1, R4; CPed *
3757CC:  STRB.W          R0, [SP,#0x28+var_18]
3757D0:  MOV             R0, R5; this
3757D2:  STRB.W          R6, [SP,#0x28+var_15]
3757D6:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
3757DA:  MOV             R0, R4; this
3757DC:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
3757E0:  MOV             R0, R5; this
3757E2:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
3757E6:  ADD             SP, SP, #0x18
3757E8:  POP.W           {R11}
3757EC:  POP             {R4-R7,PC}
