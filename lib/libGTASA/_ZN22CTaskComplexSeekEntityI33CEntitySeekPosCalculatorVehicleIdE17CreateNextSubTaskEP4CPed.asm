; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE17CreateNextSubTaskEP4CPed
; Address            : 0x49B98C - 0x49BB1A
; =========================================================

49B98C:  PUSH            {R4-R7,LR}
49B98E:  ADD             R7, SP, #0xC
49B990:  PUSH.W          {R11}
49B994:  SUB             SP, SP, #0x28
49B996:  MOV             R5, R0
49B998:  MOV             R4, R1
49B99A:  LDR             R0, [R5,#0xC]
49B99C:  CBZ             R0, loc_49B9FC
49B99E:  LDR             R0, [R5,#8]
49B9A0:  LDR             R1, [R0]
49B9A2:  LDR             R1, [R1,#0x14]
49B9A4:  BLX             R1
49B9A6:  MOVW            R1, #0x2CE; unsigned int
49B9AA:  MOVS            R6, #0
49B9AC:  CMP             R0, R1
49B9AE:  BGT             loc_49BA00
49B9B0:  CMP             R0, #0xCB
49B9B2:  BEQ             loc_49BA86
49B9B4:  CMP             R0, #0xDB
49B9B6:  BEQ.W           loc_49BAC0
49B9BA:  CMP.W           R0, #0x2C0
49B9BE:  BNE.W           loc_49BB10
49B9C2:  LDRB.W          R0, [R4,#0x485]
49B9C6:  MOVS            R6, #0
49B9C8:  LSLS            R0, R0, #0x1F
49B9CA:  BNE.W           loc_49BB10
49B9CE:  MOVS            R0, #dword_70; this
49B9D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B9D4:  LDR.W           R1, [R4,#0x590]; CVehicle *
49B9D8:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49B9DA:  MOVS            R3, #0; bool
49B9DC:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49B9E0:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49B9EC)
49B9E2:  MOV.W           R2, #0x7D0
49B9E6:  STR             R2, [R0,#0x60]
49B9E8:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49B9EA:  STRH.W          R6, [R0,#0x6C]
49B9EE:  STRD.W          R6, R6, [R0,#0x64]
49B9F2:  MOV             R6, R0
49B9F4:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
49B9F6:  ADDS            R1, #8
49B9F8:  STR             R1, [R0]
49B9FA:  B               loc_49BB10
49B9FC:  MOVS            R6, #0
49B9FE:  B               loc_49BB10
49BA00:  MOVW            R1, #0x2CF
49BA04:  CMP             R0, R1
49BA06:  BEQ             loc_49BAAC
49BA08:  MOVW            R1, #0x387
49BA0C:  CMP             R0, R1
49BA0E:  ITT NE
49BA10:  MOVWNE          R1, #0x38A
49BA14:  CMPNE           R0, R1
49BA16:  BNE             loc_49BB10
49BA18:  LDR             R2, [R5,#0xC]; CEntity *
49BA1A:  ADD.W           R0, R5, #0x40 ; '@'; this
49BA1E:  ADD             R3, SP, #0x38+var_30; CVector *
49BA20:  MOV             R1, R4; CPed *
49BA22:  LDR             R6, [R4,#0x14]
49BA24:  BLX             j__ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorVehicleId::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49BA28:  ADD.W           R0, R6, #0x30 ; '0'
49BA2C:  CMP             R6, #0
49BA2E:  VLDR            D16, [SP,#0x38+var_30]
49BA32:  IT EQ
49BA34:  ADDEQ           R0, R4, #4
49BA36:  VLDR            D17, [R0]
49BA3A:  VSUB.F32        D16, D17, D16
49BA3E:  VLDR            S2, [R5,#0x18]
49BA42:  VLDR            S4, =0.0
49BA46:  VMUL.F32        S2, S2, S2
49BA4A:  VMUL.F32        D0, D16, D16
49BA4E:  VADD.F32        S0, S0, S1
49BA52:  VADD.F32        S0, S0, S4
49BA56:  VCMPE.F32       S0, S2
49BA5A:  VMRS            APSR_nzcv, FPSCR
49BA5E:  BLE             loc_49BAE6
49BA60:  VLDR            S2, [R5,#0x20]
49BA64:  VCMP.F32        S2, #0.0
49BA68:  VMRS            APSR_nzcv, FPSCR
49BA6C:  BEQ             loc_49BB02
49BA6E:  VMUL.F32        S2, S2, S2
49BA72:  VCMPE.F32       S0, S2
49BA76:  VMRS            APSR_nzcv, FPSCR
49BA7A:  ITE GT
49BA7C:  MOVWGT          R1, #0x38A
49BA80:  MOVWLE          R1, #0x387
49BA84:  B               loc_49BB06
49BA86:  LDR.W           R0, [R4,#0x100]
49BA8A:  CMP             R0, #0
49BA8C:  BEQ             loc_49BAAC
49BA8E:  MOVS            R0, #dword_20; this
49BA90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49BA94:  MOV             R6, R0
49BA96:  MOV.W           R0, #0x41000000
49BA9A:  STR             R0, [SP,#0x38+var_38]; float
49BA9C:  MOV             R0, R6; this
49BA9E:  MOV.W           R1, #0x7D0; int
49BAA2:  MOVS            R2, #0; bool
49BAA4:  MOVS            R3, #0; bool
49BAA6:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49BAAA:  B               loc_49BB10
49BAAC:  LDR             R0, [R5]
49BAAE:  MOV             R1, R4
49BAB0:  LDR             R2, [R0,#0x2C]
49BAB2:  MOV             R0, R5
49BAB4:  ADD             SP, SP, #0x28 ; '('
49BAB6:  POP.W           {R11}
49BABA:  POP.W           {R4-R7,LR}
49BABE:  BX              R2
49BAC0:  ADD             R5, SP, #0x38+var_30
49BAC2:  MOV.W           R0, #0x41000000
49BAC6:  STR             R0, [SP,#0x38+var_38]; float
49BAC8:  MOV.W           R1, #0xFFFFFFFF; int
49BACC:  MOV             R0, R5; this
49BACE:  MOVS            R2, #0; bool
49BAD0:  MOVS            R3, #0; bool
49BAD2:  MOVS            R6, #0
49BAD4:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49BAD8:  MOV             R1, R4; CPed *
49BADA:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
49BADE:  MOV             R0, R5; this
49BAE0:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
49BAE4:  B               loc_49BB10
49BAE6:  LDRB.W          R0, [R5,#0x4C]
49BAEA:  ORR.W           R1, R0, #4
49BAEE:  STRB.W          R1, [R5,#0x4C]
49BAF2:  MOV.W           R1, #0x398
49BAF6:  TST.W           R0, #2
49BAFA:  IT EQ
49BAFC:  MOVWEQ          R1, #0x516
49BB00:  B               loc_49BB06
49BB02:  MOVW            R1, #0x38A
49BB06:  MOV             R0, R5
49BB08:  MOV             R2, R4
49BB0A:  BLX             j__ZNK22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId>::CreateSubTask(int,CPed *)
49BB0E:  MOV             R6, R0
49BB10:  MOV             R0, R6
49BB12:  ADD             SP, SP, #0x28 ; '('
49BB14:  POP.W           {R11}
49BB18:  POP             {R4-R7,PC}
