; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE17CreateNextSubTaskEP4CPed
; Address            : 0x49DA74 - 0x49DC02
; =========================================================

49DA74:  PUSH            {R4-R7,LR}
49DA76:  ADD             R7, SP, #0xC
49DA78:  PUSH.W          {R11}
49DA7C:  SUB             SP, SP, #0x28
49DA7E:  MOV             R5, R0
49DA80:  MOV             R4, R1
49DA82:  LDR             R0, [R5,#0xC]
49DA84:  CBZ             R0, loc_49DAE4
49DA86:  LDR             R0, [R5,#8]
49DA88:  LDR             R1, [R0]
49DA8A:  LDR             R1, [R1,#0x14]
49DA8C:  BLX             R1
49DA8E:  MOVW            R1, #0x2CE; unsigned int
49DA92:  MOVS            R6, #0
49DA94:  CMP             R0, R1
49DA96:  BGT             loc_49DAE8
49DA98:  CMP             R0, #0xCB
49DA9A:  BEQ             loc_49DB6E
49DA9C:  CMP             R0, #0xDB
49DA9E:  BEQ.W           loc_49DBA8
49DAA2:  CMP.W           R0, #0x2C0
49DAA6:  BNE.W           loc_49DBF8
49DAAA:  LDRB.W          R0, [R4,#0x485]
49DAAE:  MOVS            R6, #0
49DAB0:  LSLS            R0, R0, #0x1F
49DAB2:  BNE.W           loc_49DBF8
49DAB6:  MOVS            R0, #dword_70; this
49DAB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49DABC:  LDR.W           R1, [R4,#0x590]; CVehicle *
49DAC0:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49DAC2:  MOVS            R3, #0; bool
49DAC4:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49DAC8:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49DAD4)
49DACA:  MOV.W           R2, #0x7D0
49DACE:  STR             R2, [R0,#0x60]
49DAD0:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49DAD2:  STRH.W          R6, [R0,#0x6C]
49DAD6:  STRD.W          R6, R6, [R0,#0x64]
49DADA:  MOV             R6, R0
49DADC:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
49DADE:  ADDS            R1, #8
49DAE0:  STR             R1, [R0]
49DAE2:  B               loc_49DBF8
49DAE4:  MOVS            R6, #0
49DAE6:  B               loc_49DBF8
49DAE8:  MOVW            R1, #0x2CF
49DAEC:  CMP             R0, R1
49DAEE:  BEQ             loc_49DB94
49DAF0:  MOVW            R1, #0x387
49DAF4:  CMP             R0, R1
49DAF6:  ITT NE
49DAF8:  MOVWNE          R1, #0x38A
49DAFC:  CMPNE           R0, R1
49DAFE:  BNE             loc_49DBF8
49DB00:  LDR             R2, [R5,#0xC]; CEntity *
49DB02:  ADD.W           R0, R5, #0x40 ; '@'; this
49DB06:  ADD             R3, SP, #0x38+var_30; CVector *
49DB08:  MOV             R1, R4; CPed *
49DB0A:  LDR             R6, [R4,#0x14]
49DB0C:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49DB10:  ADD.W           R0, R6, #0x30 ; '0'
49DB14:  CMP             R6, #0
49DB16:  VLDR            D16, [SP,#0x38+var_30]
49DB1A:  IT EQ
49DB1C:  ADDEQ           R0, R4, #4
49DB1E:  VLDR            D17, [R0]
49DB22:  VSUB.F32        D16, D17, D16
49DB26:  VLDR            S2, [R5,#0x18]
49DB2A:  VLDR            S4, =0.0
49DB2E:  VMUL.F32        S2, S2, S2
49DB32:  VMUL.F32        D0, D16, D16
49DB36:  VADD.F32        S0, S0, S1
49DB3A:  VADD.F32        S0, S0, S4
49DB3E:  VCMPE.F32       S0, S2
49DB42:  VMRS            APSR_nzcv, FPSCR
49DB46:  BLE             loc_49DBCE
49DB48:  VLDR            S2, [R5,#0x20]
49DB4C:  VCMP.F32        S2, #0.0
49DB50:  VMRS            APSR_nzcv, FPSCR
49DB54:  BEQ             loc_49DBEA
49DB56:  VMUL.F32        S2, S2, S2
49DB5A:  VCMPE.F32       S0, S2
49DB5E:  VMRS            APSR_nzcv, FPSCR
49DB62:  ITE GT
49DB64:  MOVWGT          R1, #0x38A
49DB68:  MOVWLE          R1, #0x387
49DB6C:  B               loc_49DBEE
49DB6E:  LDR.W           R0, [R4,#0x100]
49DB72:  CMP             R0, #0
49DB74:  BEQ             loc_49DB94
49DB76:  MOVS            R0, #dword_20; this
49DB78:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49DB7C:  MOV             R6, R0
49DB7E:  MOV.W           R0, #0x41000000
49DB82:  STR             R0, [SP,#0x38+var_38]; float
49DB84:  MOV             R0, R6; this
49DB86:  MOV.W           R1, #0x7D0; int
49DB8A:  MOVS            R2, #0; bool
49DB8C:  MOVS            R3, #0; bool
49DB8E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49DB92:  B               loc_49DBF8
49DB94:  LDR             R0, [R5]
49DB96:  MOV             R1, R4
49DB98:  LDR             R2, [R0,#0x2C]
49DB9A:  MOV             R0, R5
49DB9C:  ADD             SP, SP, #0x28 ; '('
49DB9E:  POP.W           {R11}
49DBA2:  POP.W           {R4-R7,LR}
49DBA6:  BX              R2
49DBA8:  ADD             R5, SP, #0x38+var_30
49DBAA:  MOV.W           R0, #0x41000000
49DBAE:  STR             R0, [SP,#0x38+var_38]; float
49DBB0:  MOV.W           R1, #0xFFFFFFFF; int
49DBB4:  MOV             R0, R5; this
49DBB6:  MOVS            R2, #0; bool
49DBB8:  MOVS            R3, #0; bool
49DBBA:  MOVS            R6, #0
49DBBC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49DBC0:  MOV             R1, R4; CPed *
49DBC2:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
49DBC6:  MOV             R0, R5; this
49DBC8:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
49DBCC:  B               loc_49DBF8
49DBCE:  LDRB.W          R0, [R5,#0x54]
49DBD2:  ORR.W           R1, R0, #4
49DBD6:  STRB.W          R1, [R5,#0x54]
49DBDA:  MOV.W           R1, #0x398
49DBDE:  TST.W           R0, #2
49DBE2:  IT EQ
49DBE4:  MOVWEQ          R1, #0x516
49DBE8:  B               loc_49DBEE
49DBEA:  MOVW            R1, #0x38A
49DBEE:  MOV             R0, R5
49DBF0:  MOV             R2, R4
49DBF2:  BLX             j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorFixedPos>::CreateSubTask(int,CPed *)
49DBF6:  MOV             R6, R0
49DBF8:  MOV             R0, R6
49DBFA:  ADD             SP, SP, #0x28 ; '('
49DBFC:  POP.W           {R11}
49DC00:  POP             {R4-R7,PC}
