; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot10ProcessPedEP4CPed
; Address            : 0x539F2C - 0x53A01C
; =========================================================

539F2C:  PUSH            {R4-R7,LR}
539F2E:  ADD             R7, SP, #0xC
539F30:  PUSH.W          {R8}
539F34:  MOV             R5, R1
539F36:  MOV             R8, R0
539F38:  MOV             R0, R5; this
539F3A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
539F3E:  CMP             R0, #0
539F40:  BEQ             loc_53A008
539F42:  LDRSB.W         R0, [R5,#0x71C]
539F46:  MOVS            R6, #0
539F48:  LDR.W           R4, [R5,#0x450]
539F4C:  RSB.W           R0, R0, R0,LSL#3
539F50:  CMP             R4, #3
539F52:  ADD.W           R0, R5, R0,LSL#2
539F56:  LDR.W           R0, [R0,#0x5A4]
539F5A:  IT GT
539F5C:  MOVGT           R6, #1
539F5E:  CMP             R0, #9
539F60:  BNE             loc_539F90
539F62:  LDR.W           R0, [R5,#0x440]; this
539F66:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
539F6A:  CBZ             R0, loc_539F90
539F6C:  LDR.W           R0, [R5,#0x440]; this
539F70:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
539F74:  LDRB.W          R0, [R0,#0x25]
539F78:  CMP             R4, #3
539F7A:  MOV.W           R2, #0
539F7E:  MOV.W           R1, #0
539F82:  IT GT
539F84:  MOVGT           R2, #1
539F86:  CMP             R0, #4
539F88:  IT EQ
539F8A:  MOVEQ           R1, #1
539F8C:  ORR.W           R6, R2, R1
539F90:  MOV             R0, R5
539F92:  MOVS            R1, #1
539F94:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
539F98:  LDRB.W          R0, [R5,#0x487]
539F9C:  LSLS            R0, R0, #0x1D; this
539F9E:  BMI             loc_539FE4
539FA0:  LDR.W           R0, [R5,#0x440]; this
539FA4:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
539FA8:  MOVS            R1, #0
539FAA:  CMP             R0, #0
539FAC:  IT EQ
539FAE:  MOVEQ           R1, #1
539FB0:  ORRS.W          R0, R6, R1
539FB4:  BEQ             loc_539FEC
539FB6:  LDR.W           R0, [R5,#0x440]; this
539FBA:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
539FBE:  CBZ             R0, loc_539FF6
539FC0:  LDR.W           R0, [R5,#0x440]; this
539FC4:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
539FC8:  LDR             R0, [R0,#0x30]
539FCA:  CBZ             R0, loc_539FF6
539FCC:  LDR.W           R0, [R5,#0x440]; this
539FD0:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
539FD4:  LDR             R0, [R0,#0x30]
539FD6:  LDRB            R0, [R0,#0x18]
539FD8:  LSLS            R0, R0, #0x1E; this
539FDA:  BMI             loc_539FF6
539FDC:  MOV             R1, R5; CPlayerPed *
539FDE:  BLX             j__ZN23CTaskSimplePlayerOnFoot24PlayerControlZeldaWeaponEP10CPlayerPed; CTaskSimplePlayerOnFoot::PlayerControlZeldaWeapon(CPlayerPed *)
539FE2:  B               loc_53A000
539FE4:  MOV             R1, R5; CPlayerPed *
539FE6:  BLX             j__ZN23CTaskSimplePlayerOnFoot19PlayerControlDuckedEP10CPlayerPed; CTaskSimplePlayerOnFoot::PlayerControlDucked(CPlayerPed *)
539FEA:  B               loc_53A000
539FEC:  MOV             R0, R8; this
539FEE:  MOV             R1, R5; CPlayerPed *
539FF0:  BLX             j__ZN23CTaskSimplePlayerOnFoot20PlayerControlFighterEP10CPlayerPed; CTaskSimplePlayerOnFoot::PlayerControlFighter(CPlayerPed *)
539FF4:  B               loc_53A000
539FF6:  MOV             R0, R8; this
539FF8:  MOV             R1, R5; CPlayerPed *
539FFA:  MOVS            R2, #0; bool
539FFC:  BLX             j__ZN23CTaskSimplePlayerOnFoot18PlayerControlZeldaEP10CPlayerPedb; CTaskSimplePlayerOnFoot::PlayerControlZelda(CPlayerPed *,bool)
53A000:  MOV             R0, R8; this
53A002:  MOV             R1, R5; CPlayerPed *
53A004:  BLX             j__ZN23CTaskSimplePlayerOnFoot19ProcessPlayerWeaponEP10CPlayerPed; CTaskSimplePlayerOnFoot::ProcessPlayerWeapon(CPlayerPed *)
53A008:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x53A00E)
53A00A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
53A00C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
53A00E:  LDR             R0, [R0]; CTimer::m_FrameCounter
53A010:  STR.W           R0, [R8,#0x24]
53A014:  MOVS            R0, #0
53A016:  POP.W           {R8}
53A01A:  POP             {R4-R7,PC}
