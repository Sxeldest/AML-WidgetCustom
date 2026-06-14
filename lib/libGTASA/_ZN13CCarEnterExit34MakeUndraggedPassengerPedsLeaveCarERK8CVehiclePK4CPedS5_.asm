; =========================================================
; Game Engine Function: _ZN13CCarEnterExit34MakeUndraggedPassengerPedsLeaveCarERK8CVehiclePK4CPedS5_
; Address            : 0x508FAC - 0x50906E
; =========================================================

508FAC:  PUSH            {R4-R7,LR}
508FAE:  ADD             R7, SP, #0xC
508FB0:  PUSH.W          {R8-R11}
508FB4:  SUB             SP, SP, #0x1C
508FB6:  MOV             R6, R0
508FB8:  MOV             R8, R2
508FBA:  LDRB.W          R0, [R6,#0x48C]
508FBE:  MOV             R11, R1
508FC0:  CMP             R0, #0
508FC2:  BEQ             loc_509066
508FC4:  MOV.W           R9, #0
508FC8:  MOV             R10, SP
508FCA:  MOVS            R4, #0
508FCC:  ADD.W           R1, R6, R4,LSL#2
508FD0:  LDR.W           R5, [R1,#0x468]
508FD4:  CMP             R5, #0
508FD6:  IT NE
508FD8:  CMPNE           R5, R11
508FDA:  BEQ             loc_50905E
508FDC:  LDRB.W          R1, [R5,#0x48A]
508FE0:  CMP.W           R9, R1,LSR#7
508FE4:  BNE             loc_50905E
508FE6:  LDR.W           R0, [R6,#0x464]
508FEA:  CMP             R0, R5
508FEC:  BEQ             loc_509000
508FEE:  LDR.W           R0, [R6,#0x388]
508FF2:  LDRB.W          R1, [R0,#0xDE]
508FF6:  SUBS            R1, #0xF
508FF8:  CMP             R1, #2
508FFA:  BCS             loc_509004
508FFC:  MOVS            R3, #8
508FFE:  B               loc_50903C
509000:  MOVS            R3, #0xA
509002:  B               loc_50903C
509004:  LDR.W           R1, [R6,#0x468]
509008:  CMP             R1, R5
50900A:  BEQ             loc_509024
50900C:  LDR.W           R0, [R6,#0x46C]
509010:  CMP             R0, R5
509012:  BEQ             loc_50902C
509014:  LDR.W           R0, [R6,#0x470]
509018:  MOV.W           R3, #0xFFFFFFFF
50901C:  CMP             R0, R5
50901E:  IT EQ
509020:  MOVEQ           R3, #9
509022:  B               loc_50903C
509024:  LDR.W           R1, [R6,#0x5A0]
509028:  CMP             R1, #9
50902A:  BNE             loc_509030
50902C:  MOVS            R3, #0xB
50902E:  B               loc_50903C
509030:  LDRB.W          R0, [R0,#0xCD]
509034:  MOVS            R3, #8
509036:  LSLS            R0, R0, #0x1E
509038:  IT MI
50903A:  MOVMI           R3, #0xB; int
50903C:  MOV             R0, R10; this
50903E:  MOV             R1, R8; CPed *
509040:  MOV             R2, R6; CVehicle *
509042:  BLX             j__ZN25CEventPedEnteredMyVehicleC2EPK4CPedPK8CVehiclei; CEventPedEnteredMyVehicle::CEventPedEnteredMyVehicle(CPed const*,CVehicle const*,int)
509046:  LDR.W           R0, [R5,#0x440]
50904A:  MOV             R1, R10; CEvent *
50904C:  MOVS            R2, #0; bool
50904E:  ADDS            R0, #0x68 ; 'h'; this
509050:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
509054:  MOV             R0, R10; this
509056:  BLX             j__ZN25CEventPedEnteredMyVehicleD2Ev; CEventPedEnteredMyVehicle::~CEventPedEnteredMyVehicle()
50905A:  LDRB.W          R0, [R6,#0x48C]
50905E:  ADDS            R4, #1
509060:  UXTB            R1, R0
509062:  CMP             R4, R1
509064:  BLT             loc_508FCC
509066:  ADD             SP, SP, #0x1C
509068:  POP.W           {R8-R11}
50906C:  POP             {R4-R7,PC}
