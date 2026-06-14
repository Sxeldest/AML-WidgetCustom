; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeVehicleOnFireResponseEP6CEventP5CTaskS3_
; Address            : 0x382C0C - 0x382EBA
; =========================================================

382C0C:  PUSH            {R4-R7,LR}
382C0E:  ADD             R7, SP, #0xC
382C10:  PUSH.W          {R8}
382C14:  SUB             SP, SP, #0x18
382C16:  LDR             R6, [R1,#0x10]
382C18:  MOV             R8, R0
382C1A:  CMP             R6, #0
382C1C:  BEQ.W           loc_382E8A; jumptable 00382C5E cases 705,708-725
382C20:  LDRB.W          R0, [R6,#0x3A]
382C24:  AND.W           R0, R0, #0xF8
382C28:  CMP             R0, #0x28 ; '('
382C2A:  BEQ             loc_382C3E
382C2C:  ADDW            R0, R6, #0x4CC
382C30:  VLDR            S0, [R0]
382C34:  VCMPE.F32       S0, #0.0
382C38:  VMRS            APSR_nzcv, FPSCR
382C3C:  BGT             loc_382C52
382C3E:  LDR.W           R0, [R8]
382C42:  LDRB.W          R2, [R0,#0x485]
382C46:  LSLS            R2, R2, #0x1F; CTask *
382C48:  BEQ             loc_382C52
382C4A:  LDR.W           R0, [R0,#0x590]
382C4E:  CMP             R0, R6
382C50:  BEQ             loc_382CF6
382C52:  LDRSH.W         R0, [R1,#0xA]
382C56:  SUB.W           R1, R0, #0x2C0; switch 23 cases
382C5A:  CMP             R1, #0x16
382C5C:  BHI             def_382C5E; jumptable 00382C5E default case
382C5E:  TBH.W           [PC,R1,LSL#1]; switch jump
382C62:  DCW 0x17; jump table for switch statement
382C64:  DCW 0x114
382C66:  DCW 0x5B
382C68:  DCW 0x93
382C6A:  DCW 0x114
382C6C:  DCW 0x114
382C6E:  DCW 0x114
382C70:  DCW 0x114
382C72:  DCW 0x114
382C74:  DCW 0x114
382C76:  DCW 0x114
382C78:  DCW 0x114
382C7A:  DCW 0x114
382C7C:  DCW 0x114
382C7E:  DCW 0x114
382C80:  DCW 0x114
382C82:  DCW 0x114
382C84:  DCW 0x114
382C86:  DCW 0x114
382C88:  DCW 0x114
382C8A:  DCW 0x114
382C8C:  DCW 0x114
382C8E:  DCW 0xAE
382C90:  MOVS            R0, #dword_14; jumptable 00382C5E case 704
382C92:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382C96:  MOV             R5, R0
382C98:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
382C9C:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x382CAA)
382C9E:  MOVS            R1, #0
382CA0:  STR             R1, [R5,#0xC]
382CA2:  MOV.W           R1, #0x100
382CA6:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
382CA8:  STRH            R1, [R5,#0x10]
382CAA:  B               loc_382DFA
382CAC:  MOVW            R1, #0x38D; jumptable 00382C5E default case
382CB0:  CMP             R0, R1
382CB2:  BEQ.W           loc_382E02
382CB6:  MOVW            R1, #0x38F; unsigned int
382CBA:  CMP             R0, R1
382CBC:  BNE.W           loc_382E8A; jumptable 00382C5E cases 705,708-725
382CC0:  MOVS            R0, #dword_40; this
382CC2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382CC6:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382CD4)
382CC8:  MOV             R5, R0
382CCA:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x382CD6)
382CCC:  MOVS            R3, #0
382CCE:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382CDC)
382CD0:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
382CD2:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
382CD4:  MOVT            R3, #0x4170; CTask *
382CD8:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382CDA:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
382CDC:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
382CDE:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
382CE0:  VLDR            S0, [R0]
382CE4:  LDR             R0, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382CE6:  LDR             R1, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
382CE8:  STRD.W          R0, R1, [SP,#0x28+var_28]
382CEC:  MOV             R0, R5
382CEE:  VSTR            S0, [SP,#0x28+var_20]
382CF2:  MOV             R1, R6; CEvent *
382CF4:  B               loc_382E80
382CF6:  LDR.W           R0, [R6,#0x5A0]
382CFA:  CMP             R0, #9
382CFC:  ITT NE
382CFE:  LDRNE.W         R0, [R6,#0x5A4]
382D02:  CMPNE           R0, #2
382D04:  BNE.W           loc_382E92
382D08:  MOV             R0, R8; this
382D0A:  ADD             SP, SP, #0x18
382D0C:  POP.W           {R8}
382D10:  POP.W           {R4-R7,LR}
382D14:  B.W             _ZN13CEventHandler27ComputeKnockOffBikeResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeKnockOffBikeResponse(CEvent *,CTask *,CTask *)
382D18:  MOVS            R0, #dword_40; jumptable 00382C5E case 706
382D1A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382D1E:  MOV             R5, R0
382D20:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
382D24:  MOVS            R0, #dword_14; this
382D26:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382D2A:  MOV             R4, R0
382D2C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
382D30:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x382D3C)
382D32:  MOVS            R1, #0
382D34:  STR             R1, [R4,#0xC]
382D36:  MOV             R1, R4; CTask *
382D38:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
382D3A:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar ...
382D3C:  ADDS            R0, #8
382D3E:  STR             R0, [R4]
382D40:  MOV.W           R0, #0x100
382D44:  STRH            R0, [R4,#0x10]
382D46:  MOV             R0, R5; this
382D48:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
382D4C:  MOVS            R0, #dword_40; this
382D4E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382D52:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382D60)
382D54:  MOV             R4, R0
382D56:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x382D62)
382D58:  MOVS            R3, #0
382D5A:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382D68)
382D5C:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382D5E:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
382D60:  MOVT            R3, #0x4170; float
382D64:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
382D66:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
382D68:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
382D6A:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
382D6C:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
382D6E:  VLDR            S0, [R2]
382D72:  MOVS            R2, #0; bool
382D74:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382D76:  VSTR            S0, [SP,#0x28+var_20]
382D7A:  STRD.W          R0, R1, [SP,#0x28+var_28]; int
382D7E:  MOV             R0, R4; this
382D80:  MOV             R1, R6; CEntity *
382D82:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
382D86:  B               loc_382DB4
382D88:  MOVS            R0, #dword_40; jumptable 00382C5E case 707
382D8A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382D8E:  MOV             R5, R0
382D90:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
382D94:  MOVS            R0, #dword_14; this
382D96:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382D9A:  MOV             R4, R0
382D9C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
382DA0:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x382DAA)
382DA2:  MOVS            R1, #0
382DA4:  STR             R1, [R4,#0xC]
382DA6:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
382DA8:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar ...
382DAA:  ADDS            R0, #8
382DAC:  STR             R0, [R4]
382DAE:  MOV.W           R0, #0x100
382DB2:  STRH            R0, [R4,#0x10]
382DB4:  MOV             R0, R5; this
382DB6:  MOV             R1, R4; CTask *
382DB8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
382DBC:  B               loc_382E86
382DBE:  LDR.W           R1, [R8]; jumptable 00382C5E case 726
382DC2:  LDR.W           R0, [R1,#0x590]; this
382DC6:  CBZ             R0, loc_382E3E
382DC8:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
382DCC:  CMP             R0, #1
382DCE:  BNE             loc_382E3E
382DD0:  MOVS            R0, #word_2C; this
382DD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382DD6:  MOV             R5, R0
382DD8:  LDR.W           R0, [R8]
382DDC:  MOVS            R2, #2
382DDE:  MOVS            R3, #1; int
382DE0:  LDR.W           R1, [R0,#0x590]; CVehicle *
382DE4:  MOVS            R0, #0x42200000
382DEA:  STRD.W          R2, R0, [SP,#0x28+var_28]; int
382DEE:  MOV             R0, R5; this
382DF0:  MOVS            R2, #0; CEntity *
382DF2:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
382DF6:  LDR             R0, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x382DFC)
382DF8:  ADD             R0, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
382DFA:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveMissionFleeScene
382DFC:  ADDS            R0, #8
382DFE:  STR             R0, [R5]
382E00:  B               loc_382E86
382E02:  MOVS            R0, #off_3C; this
382E04:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382E08:  LDR             R1, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x382E16)
382E0A:  MOV             R5, R0
382E0C:  LDR             R0, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x382E18)
382E0E:  MOVS            R3, #0
382E10:  LDR             R2, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382E1E)
382E12:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
382E14:  ADD             R0, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
382E16:  MOVT            R3, #0x4170; float
382E1A:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382E1C:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_iFleeTime ...
382E1E:  LDR             R0, [R0]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
382E20:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
382E22:  VLDR            S0, [R0]
382E26:  LDR             R0, [R1]; CTaskComplexFleeEntity::ms_iFleeTime
382E28:  LDR             R1, [R2]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
382E2A:  MOVS            R2, #0; bool
382E2C:  STRD.W          R0, R1, [SP,#0x28+var_28]; int
382E30:  MOV             R0, R5; this
382E32:  MOV             R1, R6; CEntity *
382E34:  VSTR            S0, [SP,#0x28+var_20]
382E38:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
382E3C:  B               loc_382E86
382E3E:  MOVS            R0, #dword_40; this
382E40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382E44:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x382E52)
382E48:  MOV             R5, R0
382E4A:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x382E54)
382E4C:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x382E58)
382E4E:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
382E50:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
382E52:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x382E5E)
382E54:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
382E56:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
382E5A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
382E5C:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
382E5E:  LDR             R2, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
382E60:  LDR.W           R6, [R8]
382E64:  LDR             R4, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
382E66:  LDR             R3, [R0]; float
382E68:  LDR             R0, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime
382E6A:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
382E6E:  LDR.W           R1, [R6,#0x590]; CEntity *
382E72:  VLDR            S0, [R4]
382E76:  STRD.W          R0, R2, [SP,#0x28+var_28]; int
382E7A:  MOV             R0, R5; this
382E7C:  VSTR            S0, [SP,#0x28+var_20]
382E80:  MOVS            R2, #0; bool
382E82:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
382E86:  STR.W           R5, [R8,#0x24]
382E8A:  ADD             SP, SP, #0x18; jumptable 00382C5E cases 705,708-725
382E8C:  POP.W           {R8}
382E90:  POP             {R4-R7,PC}
382E92:  MOVS            R0, #word_28; this
382E94:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382E98:  MOVS            R1, #0
382E9A:  MOV.W           R2, #0x40800000
382E9E:  STRD.W          R2, R1, [SP,#0x28+var_28]; float
382EA2:  MOVS            R2, #0; int
382EA4:  STRD.W          R1, R1, [SP,#0x28+var_20]; int
382EA8:  MOVS            R3, #0xF; int
382EAA:  STRD.W          R1, R1, [SP,#0x28+var_18]; int
382EAE:  MOVS            R1, #0; int
382EB0:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
382EB4:  STR.W           R0, [R8,#0x24]
382EB8:  B               loc_382E8A; jumptable 00382C5E cases 705,708-725
