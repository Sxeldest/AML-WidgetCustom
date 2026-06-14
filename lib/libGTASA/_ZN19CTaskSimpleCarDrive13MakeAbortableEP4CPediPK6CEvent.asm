; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4FA174 - 0x4FA20C
; =========================================================

4FA174:  PUSH            {R4-R7,LR}
4FA176:  ADD             R7, SP, #0xC
4FA178:  PUSH.W          {R11}
4FA17C:  SUB             SP, SP, #0x18
4FA17E:  MOV             R5, R3
4FA180:  MOV             R4, R1
4FA182:  MOV             R6, R0
4FA184:  CMP             R2, #2
4FA186:  BNE             loc_4FA1EE
4FA188:  LDRB.W          R0, [R4,#0x485]
4FA18C:  LSLS            R0, R0, #0x1F
4FA18E:  ITT NE
4FA190:  LDRNE.W         R0, [R4,#0x590]; this
4FA194:  CMPNE           R0, #0
4FA196:  BEQ             loc_4FA1CE
4FA198:  MOV             R1, R4; CVehicle *
4FA19A:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4FA19E:  LDR             R1, [R6,#8]; CVehicle *
4FA1A0:  MOV             R2, R0; int
4FA1A2:  MOV             R0, SP; this
4FA1A4:  MOVS            R3, #0; bool
4FA1A6:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4FA1AA:  CBZ             R5, loc_4FA1BE
4FA1AC:  LDR.W           R0, [R4,#0x590]
4FA1B0:  LDR.W           R0, [R0,#0x5A0]
4FA1B4:  CMP             R0, #9
4FA1B6:  ITT EQ
4FA1B8:  MOVEQ           R0, #1
4FA1BA:  STRBEQ.W        R0, [SP,#0x28+var_16]
4FA1BE:  MOV             R5, SP
4FA1C0:  MOV             R1, R4; CPed *
4FA1C2:  MOV             R0, R5; this
4FA1C4:  BLX             j__ZN23CTaskSimpleCarSetPedOut10ProcessPedEP4CPed; CTaskSimpleCarSetPedOut::ProcessPed(CPed *)
4FA1C8:  MOV             R0, R5; this
4FA1CA:  BLX             j__ZN23CTaskSimpleCarSetPedOutD2Ev; CTaskSimpleCarSetPedOut::~CTaskSimpleCarSetPedOut()
4FA1CE:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA1D6)
4FA1D0:  MOV             R1, R4; CPed *
4FA1D2:  ADD             R0, PC; g_ikChainMan_ptr
4FA1D4:  LDR             R0, [R0]; g_ikChainMan ; this
4FA1D6:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
4FA1DA:  CBZ             R0, loc_4FA1EA
4FA1DC:  LDR             R0, =(g_ikChainMan_ptr - 0x4FA1E6)
4FA1DE:  MOV             R1, R4; CPed *
4FA1E0:  MOVS            R2, #0xFA; int
4FA1E2:  ADD             R0, PC; g_ikChainMan_ptr
4FA1E4:  LDR             R0, [R0]; g_ikChainMan ; this
4FA1E6:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
4FA1EA:  MOVS            R0, #1
4FA1EC:  B               loc_4FA204
4FA1EE:  LDRB.W          R1, [R6,#0x5C]
4FA1F2:  ORR.W           R0, R1, #8
4FA1F6:  STRB.W          R0, [R6,#0x5C]
4FA1FA:  MOVS            R0, #0
4FA1FC:  TST.W           R1, #0x20
4FA200:  IT EQ
4FA202:  MOVEQ           R0, #1
4FA204:  ADD             SP, SP, #0x18
4FA206:  POP.W           {R11}
4FA20A:  POP             {R4-R7,PC}
