; =========================================================
; Game Engine Function: _ZN21CTaskComplexWanderCop16LookForCriminalsEP4CPed
; Address            : 0x523E70 - 0x523FFA
; =========================================================

523E70:  PUSH            {R4-R7,LR}
523E72:  ADD             R7, SP, #0xC
523E74:  PUSH.W          {R8-R11}
523E78:  SUB             SP, SP, #4
523E7A:  VPUSH           {D8}
523E7E:  SUB             SP, SP, #0x38
523E80:  MOV             R8, R1
523E82:  MOV             R10, R0
523E84:  LDR.W           R0, [R8,#0x14]
523E88:  LDR.W           R4, [R8,#0x440]
523E8C:  ADD.W           R9, R0, #0x30 ; '0'
523E90:  CMP             R0, #0
523E92:  VLDR            S16, =100.0
523E96:  IT EQ
523E98:  ADDEQ.W         R9, R8, #4
523E9C:  MOVS            R0, #0x4C ; 'L'
523E9E:  MOV             R11, R0
523EA0:  LDR.W           R6, [R4,R11,LSL#2]
523EA4:  CMP             R6, #0
523EA6:  BEQ             loc_523F84
523EA8:  LDR.W           R0, [R6,#0x59C]
523EAC:  CMP             R0, #0x14
523EAE:  ITT NE
523EB0:  SUBNE           R0, #7
523EB2:  CMPNE           R0, #9
523EB4:  BHI             loc_523F84
523EB6:  LDR.W           R0, [R10,#0x40]
523EBA:  CMP             R0, R6
523EBC:  BEQ             loc_523F84
523EBE:  LDR.W           R0, [R6,#0x440]
523EC2:  ADDS            R0, #4; this
523EC4:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523EC8:  CMP             R0, #0
523ECA:  BEQ             loc_523F84
523ECC:  LDR.W           R0, [R6,#0x440]
523ED0:  ADDS            R0, #4; this
523ED2:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523ED6:  LDR             R1, [R0]
523ED8:  LDR             R1, [R1,#0x14]
523EDA:  BLX             R1
523EDC:  MOV             R5, R0
523EDE:  LDR.W           R0, [R10]
523EE2:  LDR             R1, [R0,#0x14]
523EE4:  MOV             R0, R10
523EE6:  BLX             R1
523EE8:  CMP             R5, R0
523EEA:  BNE             loc_523F84
523EEC:  LDR             R0, [R6,#0x14]
523EEE:  VLDR            S0, [R9]
523EF2:  ADD.W           R1, R0, #0x30 ; '0'
523EF6:  CMP             R0, #0
523EF8:  VLDR            S2, [R9,#4]
523EFC:  VLDR            S4, [R9,#8]
523F00:  IT EQ
523F02:  ADDEQ           R1, R6, #4; CVector *
523F04:  VLDR            S6, [R1]
523F08:  VLDR            S8, [R1,#4]
523F0C:  VSUB.F32        S0, S6, S0
523F10:  VLDR            S10, [R1,#8]
523F14:  VSUB.F32        S2, S8, S2
523F18:  VSUB.F32        S4, S10, S4
523F1C:  VMUL.F32        S8, S0, S0
523F20:  VMUL.F32        S6, S2, S2
523F24:  VMUL.F32        S10, S4, S4
523F28:  VADD.F32        S6, S8, S6
523F2C:  VADD.F32        S6, S6, S10
523F30:  VCMPE.F32       S6, S16
523F34:  VMRS            APSR_nzcv, FPSCR
523F38:  BGE             loc_523F84
523F3A:  LDR.W           R0, [R8,#0x14]
523F3E:  VLDR            S6, [R0,#0x10]
523F42:  VLDR            S8, [R0,#0x14]
523F46:  VMUL.F32        S0, S0, S6
523F4A:  VLDR            S10, [R0,#0x18]
523F4E:  VMUL.F32        S2, S2, S8
523F52:  VMUL.F32        S4, S4, S10
523F56:  VADD.F32        S0, S0, S2
523F5A:  VADD.F32        S0, S0, S4
523F5E:  VCMPE.F32       S0, #0.0
523F62:  VMRS            APSR_nzcv, FPSCR
523F66:  BLE             loc_523F84
523F68:  MOVS            R0, #0
523F6A:  MOVS            R2, #1
523F6C:  STR             R0, [SP,#0x60+var_60]; bool
523F6E:  MOVS            R3, #0; bool
523F70:  STRD.W          R2, R0, [SP,#0x60+var_5C]; bool
523F74:  MOVS            R2, #(stderr+1); CVector *
523F76:  STRD.W          R0, R0, [SP,#0x60+var_54]; CColLine *
523F7A:  MOV             R0, R9; this
523F7C:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
523F80:  CMP             R0, #1
523F82:  BEQ             loc_523FA2
523F84:  SUB.W           R1, R11, #0x4C ; 'L'
523F88:  ADD.W           R0, R11, #1
523F8C:  CMP             R1, #0xF
523F8E:  BLT.W           loc_523E9E
523F92:  MOVS            R0, #0
523F94:  ADD             SP, SP, #0x38 ; '8'
523F96:  VPOP            {D8}
523F9A:  ADD             SP, SP, #4
523F9C:  POP.W           {R8-R11}
523FA0:  POP             {R4-R7,PC}
523FA2:  ADD.W           R9, SP, #0x60+var_38
523FA6:  MOV             R1, R6; CPed *
523FA8:  MOV             R0, R9; this
523FAA:  BLX             j__ZN16CEventPedToChaseC2EP4CPed; CEventPedToChase::CEventPedToChase(CPed *)
523FAE:  LDR.W           R0, [R8,#0x440]
523FB2:  MOV             R1, R9; CEvent *
523FB4:  MOVS            R2, #0; bool
523FB6:  ADDS            R0, #0x68 ; 'h'; this
523FB8:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
523FBC:  ADD             R5, SP, #0x60+var_48
523FBE:  MOV             R1, R8; CPed *
523FC0:  MOV             R0, R5; this
523FC2:  BLX             j__ZN15CEventPedToFleeC2EP4CPed; CEventPedToFlee::CEventPedToFlee(CPed *)
523FC6:  LDR.W           R0, [R6,#0x440]
523FCA:  MOV             R1, R5; CEvent *
523FCC:  MOVS            R2, #0; bool
523FCE:  ADDS            R0, #0x68 ; 'h'; this
523FD0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
523FD4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523FDE)
523FD6:  MOVW            R1, #0x7530
523FDA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523FDC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
523FDE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
523FE0:  STR.W           R6, [R10,#0x40]
523FE4:  ADD             R0, R1
523FE6:  STR.W           R0, [R10,#0x38]
523FEA:  MOV             R0, R5; this
523FEC:  BLX             j__ZN15CEventPedToFleeD2Ev; CEventPedToFlee::~CEventPedToFlee()
523FF0:  MOV             R0, R9; this
523FF2:  BLX             j__ZN16CEventPedToChaseD2Ev; CEventPedToChase::~CEventPedToChase()
523FF6:  MOVS            R0, #1
523FF8:  B               loc_523F94
