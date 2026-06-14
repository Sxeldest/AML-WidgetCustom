; =========================================================
; Game Engine Function: _ZN6CCheat27EverybodyAttacksPlayerCheatEv
; Address            : 0x2FD950 - 0x2FDA12
; =========================================================

2FD950:  PUSH            {R4-R7,LR}
2FD952:  ADD             R7, SP, #0xC
2FD954:  PUSH.W          {R8-R11}
2FD958:  SUB             SP, SP, #0x1C
2FD95A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FD962)
2FD95C:  MOVS            R2, #0
2FD95E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FD960:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FD962:  LDRB            R1, [R0,#(byte_79680A - 0x7967F4)]
2FD964:  CMP             R1, #0
2FD966:  IT EQ
2FD968:  MOVEQ           R2, #1
2FD96A:  STRB            R2, [R0,#(byte_79680A - 0x7967F4)]
2FD96C:  BNE             loc_2FDA0A
2FD96E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x2FD974)
2FD970:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
2FD972:  LDR             R0, [R0]; CPools::ms_pPedPool ...
2FD974:  LDR.W           R11, [R0]; CPools::ms_pPedPool
2FD978:  LDR.W           R0, [R11,#8]
2FD97C:  CMP             R0, #0
2FD97E:  BEQ             loc_2FDA0A
2FD980:  MOVW            R1, #0x7CC
2FD984:  SUBS            R5, R0, #1
2FD986:  MULS            R1, R0
2FD988:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x2FD992)
2FD98A:  ADD.W           R8, SP, #0x38+var_30
2FD98E:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
2FD990:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
2FD992:  SUB.W           R4, R1, #0x38C
2FD996:  ADDS            R0, #8
2FD998:  STR             R0, [SP,#0x38+var_34]
2FD99A:  LDR.W           R0, [R11,#4]
2FD99E:  LDRSB           R0, [R0,R5]
2FD9A0:  CMP             R0, #0
2FD9A2:  BLT             loc_2FDA00
2FD9A4:  LDR.W           R10, [R11]
2FD9A8:  ADD.W           R6, R10, R4
2FD9AC:  CMP.W           R6, #0x440
2FD9B0:  BEQ             loc_2FDA00
2FD9B2:  SUB.W           R0, R6, #0x440; this
2FD9B6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
2FD9BA:  CBNZ            R0, loc_2FDA00
2FD9BC:  MOVS            R0, #0; this
2FD9BE:  ADD.W           R9, R6, #0xAC
2FD9C2:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
2FD9C6:  MOV             R2, R0; unsigned int
2FD9C8:  MOV             R0, R9; this
2FD9CA:  MOVS            R1, #4; int
2FD9CC:  BLX             j__ZN13CAcquaintance17SetAsAcquaintanceEij; CAcquaintance::SetAsAcquaintance(int,uint)
2FD9D0:  MOV.W           R0, #0xFFFFFFFF; int
2FD9D4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD9D8:  MOV             R1, R0; CPed *
2FD9DA:  MOV             R0, R8; this
2FD9DC:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
2FD9E0:  MOV.W           R0, #0x3E8
2FD9E4:  MOV             R1, R8; CEvent *
2FD9E6:  STRH.W          R0, [SP,#0x38+var_26]
2FD9EA:  MOVS            R2, #0; bool
2FD9EC:  LDR             R0, [SP,#0x38+var_34]
2FD9EE:  STR             R0, [SP,#0x38+var_30]
2FD9F0:  LDR.W           R0, [R10,R4]
2FD9F4:  ADDS            R0, #0x68 ; 'h'; this
2FD9F6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
2FD9FA:  MOV             R0, R8; this
2FD9FC:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
2FDA00:  SUBS            R5, #1
2FDA02:  SUBW            R4, R4, #0x7CC
2FDA06:  ADDS            R0, R5, #1
2FDA08:  BNE             loc_2FD99A
2FDA0A:  ADD             SP, SP, #0x1C
2FDA0C:  POP.W           {R8-R11}
2FDA10:  POP             {R4-R7,PC}
