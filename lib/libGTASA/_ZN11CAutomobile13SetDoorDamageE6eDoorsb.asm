; =========================================================
; Game Engine Function: _ZN11CAutomobile13SetDoorDamageE6eDoorsb
; Address            : 0x552DCC - 0x552FCC
; =========================================================

552DCC:  PUSH            {R4-R7,LR}
552DCE:  ADD             R7, SP, #0xC
552DD0:  PUSH.W          {R8-R11}
552DD4:  SUB             SP, SP, #4
552DD6:  VPUSH           {D8-D10}
552DDA:  SUB             SP, SP, #0x48
552DDC:  MOV             R10, R0
552DDE:  ADDW            R11, R10, #0x5B4
552DE2:  MOV             R8, R2
552DE4:  MOV             R5, R1
552DE6:  MOV             R0, R11
552DE8:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
552DEC:  MOV             R4, R0
552DEE:  MOV             R0, R5
552DF0:  BLX             j__ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors; CDamageManager::GetCarNodeIndexFromDoor(eDoors)
552DF4:  MOV             R9, R0
552DF6:  ADD.W           R6, R10, R9,LSL#2
552DFA:  LDR.W           R0, [R6,#0x65C]
552DFE:  CMP             R0, #0
552E00:  BEQ.W           def_552E9C; jumptable 00552E9C default case
552E04:  MOV             R0, R10; this
552E06:  BLX             j__ZNK8CVehicle17CanDoorsBeDamagedEv; CVehicle::CanDoorsBeDamaged(void)
552E0A:  CBNZ            R0, loc_552E16
552E0C:  CMP             R5, #2
552E0E:  ITT CS
552E10:  UXTBCS          R0, R4
552E12:  CMPCS           R0, #3
552E14:  BCS             loc_552E54
552E16:  CMP             R5, #1
552E18:  BNE             loc_552E8C
552E1A:  LDR.W           R0, [R10,#0x388]
552E1E:  LDRB.W          R0, [R0,#0xCC]
552E22:  LSLS            R0, R0, #0x18
552E24:  BPL             loc_552E8C
552E26:  UXTB            R0, R4
552E28:  CMP             R0, #3
552E2A:  BEQ             loc_552E80
552E2C:  CMP             R0, #1
552E2E:  BNE             loc_552E82
552E30:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x552E3C)
552E32:  MOVS            R4, #4
552E34:  LDRSH.W         R1, [R10,#0x26]
552E38:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
552E3A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
552E3C:  LDR.W           R0, [R0,R1,LSL#2]
552E40:  MOVS            R1, #1
552E42:  LSL.W           R1, R1, R9
552E46:  LDR             R0, [R0,#0x74]
552E48:  LDR.W           R0, [R0,#0x328]
552E4C:  TST             R0, R1
552E4E:  IT NE
552E50:  MOVNE           R4, #2
552E52:  B               loc_552E82
552E54:  ADD.W           R0, R5, R5,LSL#1
552E58:  MOVS            R1, #0; float
552E5A:  ADD.W           R0, R10, R0,LSL#3
552E5E:  ADDW            R0, R0, #0x5CC; this
552E62:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
552E66:  MOV             R0, R11
552E68:  MOV             R1, R5
552E6A:  MOVS            R2, #2
552E6C:  ADD             SP, SP, #0x48 ; 'H'
552E6E:  VPOP            {D8-D10}
552E72:  ADD             SP, SP, #4
552E74:  POP.W           {R8-R11}
552E78:  POP.W           {R4-R7,LR}
552E7C:  B.W             sub_19F78C
552E80:  MOVS            R4, #4
552E82:  UXTB            R2, R4
552E84:  MOV             R0, R11
552E86:  MOVS            R1, #1
552E88:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
552E8C:  MOV.W           R0, #0xFFFFFFFF
552E90:  UXTAB.W         R0, R0, R4
552E94:  CMP             R0, #3; switch 4 cases
552E96:  BHI             def_552E9C; jumptable 00552E9C default case
552E98:  ADDW            R4, R6, #0x65C
552E9C:  TBB.W           [PC,R0]; switch jump
552EA0:  DCB 2; jump table for switch statement
552EA1:  DCB 0x13
552EA2:  DCB 2
552EA3:  DCB 0x73
552EA4:  LDR             R1, =(_ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr - 0x552EB0); jumptable 00552E9C cases 0,2
552EA6:  MOV.W           R2, #0x400
552EAA:  LDR             R0, [R4]
552EAC:  ADD             R1, PC; _ZN17CVehicleModelInfo15SetAtomicFlagCBEP8RwObjectPv_ptr
552EAE:  LDR             R1, [R1]; CVehicleModelInfo::SetAtomicFlagCB(RwObject *,void *)
552EB0:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
552EB4:  CMP             R5, #0
552EB6:  ITTT EQ
552EB8:  MOVWEQ          R0, #0xCCCD
552EBC:  MOVTEQ          R0, #0x3E4C
552EC0:  STREQ.W         R0, [R10,#0x5E0]
552EC4:  B               def_552E9C; jumptable 00552E9C default case
552EC6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x552ED0); jumptable 00552E9C case 1
552EC8:  LDRSH.W         R1, [R10,#0x26]
552ECC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
552ECE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
552ED0:  LDR.W           R0, [R0,R1,LSL#2]
552ED4:  MOVS            R1, #1
552ED6:  LSL.W           R1, R1, R9
552EDA:  LDR             R0, [R0,#0x74]
552EDC:  LDR.W           R0, [R0,#0x328]
552EE0:  TST             R0, R1
552EE2:  BEQ             loc_552EEE
552EE4:  LDR             R1, [R4]
552EE6:  MOV             R0, R10
552EE8:  MOVS            R2, #2
552EEA:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
552EEE:  ADD.W           R0, R5, R5,LSL#1
552EF2:  ADD.W           R0, R10, R0,LSL#3
552EF6:  ADDW            R1, R0, #0x5DC
552EFA:  VLDR            S0, [R1]
552EFE:  VCMP.F32        S0, #0.0
552F02:  VMRS            APSR_nzcv, FPSCR
552F06:  BEQ             def_552E9C; jumptable 00552E9C default case
552F08:  MOVS            R2, #0
552F0A:  STR.W           R2, [R0,#0x5D8]
552F0E:  STR             R2, [R1]
552F10:  STR.W           R2, [R0,#0x5E0]
552F14:  MOVS            R2, #0
552F16:  LDR             R0, [R4]
552F18:  MOV             R4, SP
552F1A:  ADD.W           R1, R0, #0x10
552F1E:  MOV             R0, R4
552F20:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
552F24:  MOVS            R1, #0; x
552F26:  MOVS            R2, #0; float
552F28:  MOVS            R3, #0; float
552F2A:  VLDR            S16, [SP,#0x80+var_50]
552F2E:  VLDR            S18, [SP,#0x80+var_4C]
552F32:  VLDR            S20, [SP,#0x80+var_48]
552F36:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
552F3A:  VLDR            S0, [SP,#0x80+var_50]
552F3E:  MOV             R0, R4; this
552F40:  VLDR            S2, [SP,#0x80+var_4C]
552F44:  VLDR            S4, [SP,#0x80+var_48]
552F48:  VADD.F32        S0, S16, S0
552F4C:  VADD.F32        S2, S18, S2
552F50:  VADD.F32        S4, S20, S4
552F54:  VSTR            S0, [SP,#0x80+var_50]
552F58:  VSTR            S2, [SP,#0x80+var_4C]
552F5C:  VSTR            S4, [SP,#0x80+var_48]
552F60:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
552F64:  ADD.W           R0, R10, #0x13C; this
552F68:  ADD.W           R1, R5, #0x54 ; 'T'; int
552F6C:  MOVS            R2, #0; float
552F6E:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
552F72:  MOV             R0, R4; this
552F74:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
552F78:  ADD             SP, SP, #0x48 ; 'H'; jumptable 00552E9C default case
552F7A:  VPOP            {D8-D10}
552F7E:  ADD             SP, SP, #4
552F80:  POP.W           {R8-R11}
552F84:  POP             {R4-R7,PC}
552F86:  CMP.W           R8, #0; jumptable 00552E9C case 3
552F8A:  BNE             loc_552FB2
552F8C:  MOV             R0, R10; this
552F8E:  MOV             R1, R9; int
552F90:  CBZ             R5, loc_552FA0
552F92:  CMP             R5, #1
552F94:  ITE NE
552F96:  MOVNE           R2, #2
552F98:  MOVEQ           R2, #4; unsigned int
552F9A:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
552F9E:  B               loc_552FB2
552FA0:  MOVS            R2, #3; unsigned int
552FA2:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
552FA6:  MOV             R2, R0; CEntity *
552FA8:  ADD.W           R0, R10, #0x13C; this
552FAC:  MOVS            R1, #0x5D ; ']'; int
552FAE:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEiP7CEntity; CAEVehicleAudioEntity::AddAudioEvent(int,CEntity *)
552FB2:  LDR             R1, [R4]
552FB4:  MOV             R0, R10
552FB6:  MOVS            R2, #0
552FB8:  ADD             SP, SP, #0x48 ; 'H'
552FBA:  VPOP            {D8-D10}
552FBE:  ADD             SP, SP, #4
552FC0:  POP.W           {R8-R11}
552FC4:  POP.W           {R4-R7,LR}
552FC8:  B.W             sub_18B824
