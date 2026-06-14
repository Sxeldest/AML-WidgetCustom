; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE17CreateNextSubTaskEP4CPed
; Address            : 0x4998D0 - 0x499A5E
; =========================================================

4998D0:  PUSH            {R4-R7,LR}
4998D2:  ADD             R7, SP, #0xC
4998D4:  PUSH.W          {R11}
4998D8:  SUB             SP, SP, #0x28
4998DA:  MOV             R5, R0
4998DC:  MOV             R4, R1
4998DE:  LDR             R0, [R5,#0xC]
4998E0:  CBZ             R0, loc_499940
4998E2:  LDR             R0, [R5,#8]
4998E4:  LDR             R1, [R0]
4998E6:  LDR             R1, [R1,#0x14]
4998E8:  BLX             R1
4998EA:  MOVW            R1, #0x2CE; unsigned int
4998EE:  MOVS            R6, #0
4998F0:  CMP             R0, R1
4998F2:  BGT             loc_499944
4998F4:  CMP             R0, #0xCB
4998F6:  BEQ             loc_4999CA
4998F8:  CMP             R0, #0xDB
4998FA:  BEQ.W           loc_499A04
4998FE:  CMP.W           R0, #0x2C0
499902:  BNE.W           loc_499A54
499906:  LDRB.W          R0, [R4,#0x485]
49990A:  MOVS            R6, #0
49990C:  LSLS            R0, R0, #0x1F
49990E:  BNE.W           loc_499A54
499912:  MOVS            R0, #dword_70; this
499914:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499918:  LDR.W           R1, [R4,#0x590]; CVehicle *
49991C:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49991E:  MOVS            R3, #0; bool
499920:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
499924:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x499930)
499926:  MOV.W           R2, #0x7D0
49992A:  STR             R2, [R0,#0x60]
49992C:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49992E:  STRH.W          R6, [R0,#0x6C]
499932:  STRD.W          R6, R6, [R0,#0x64]
499936:  MOV             R6, R0
499938:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
49993A:  ADDS            R1, #8
49993C:  STR             R1, [R0]
49993E:  B               loc_499A54
499940:  MOVS            R6, #0
499942:  B               loc_499A54
499944:  MOVW            R1, #0x2CF
499948:  CMP             R0, R1
49994A:  BEQ             loc_4999F0
49994C:  MOVW            R1, #0x387
499950:  CMP             R0, R1
499952:  ITT NE
499954:  MOVWNE          R1, #0x38A
499958:  CMPNE           R0, R1
49995A:  BNE             loc_499A54
49995C:  LDR             R2, [R5,#0xC]; CEntity *
49995E:  ADD.W           R0, R5, #0x40 ; '@'; this
499962:  ADD             R3, SP, #0x38+var_30; CVector *
499964:  MOV             R1, R4; CPed *
499966:  LDR             R6, [R4,#0x14]
499968:  BLX             j__ZNK32CEntitySeekPosCalculatorXYOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorXYOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49996C:  ADD.W           R0, R6, #0x30 ; '0'
499970:  CMP             R6, #0
499972:  VLDR            D16, [SP,#0x38+var_30]
499976:  IT EQ
499978:  ADDEQ           R0, R4, #4
49997A:  VLDR            D17, [R0]
49997E:  VSUB.F32        D16, D17, D16
499982:  VLDR            S2, [R5,#0x18]
499986:  VLDR            S4, =0.0
49998A:  VMUL.F32        S2, S2, S2
49998E:  VMUL.F32        D0, D16, D16
499992:  VADD.F32        S0, S0, S1
499996:  VADD.F32        S0, S0, S4
49999A:  VCMPE.F32       S0, S2
49999E:  VMRS            APSR_nzcv, FPSCR
4999A2:  BLE             loc_499A2A
4999A4:  VLDR            S2, [R5,#0x20]
4999A8:  VCMP.F32        S2, #0.0
4999AC:  VMRS            APSR_nzcv, FPSCR
4999B0:  BEQ             loc_499A46
4999B2:  VMUL.F32        S2, S2, S2
4999B6:  VCMPE.F32       S0, S2
4999BA:  VMRS            APSR_nzcv, FPSCR
4999BE:  ITE GT
4999C0:  MOVWGT          R1, #0x38A
4999C4:  MOVWLE          R1, #0x387
4999C8:  B               loc_499A4A
4999CA:  LDR.W           R0, [R4,#0x100]
4999CE:  CMP             R0, #0
4999D0:  BEQ             loc_4999F0
4999D2:  MOVS            R0, #dword_20; this
4999D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4999D8:  MOV             R6, R0
4999DA:  MOV.W           R0, #0x41000000
4999DE:  STR             R0, [SP,#0x38+var_38]; float
4999E0:  MOV             R0, R6; this
4999E2:  MOV.W           R1, #0x7D0; int
4999E6:  MOVS            R2, #0; bool
4999E8:  MOVS            R3, #0; bool
4999EA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4999EE:  B               loc_499A54
4999F0:  LDR             R0, [R5]
4999F2:  MOV             R1, R4
4999F4:  LDR             R2, [R0,#0x2C]
4999F6:  MOV             R0, R5
4999F8:  ADD             SP, SP, #0x28 ; '('
4999FA:  POP.W           {R11}
4999FE:  POP.W           {R4-R7,LR}
499A02:  BX              R2
499A04:  ADD             R5, SP, #0x38+var_30
499A06:  MOV.W           R0, #0x41000000
499A0A:  STR             R0, [SP,#0x38+var_38]; float
499A0C:  MOV.W           R1, #0xFFFFFFFF; int
499A10:  MOV             R0, R5; this
499A12:  MOVS            R2, #0; bool
499A14:  MOVS            R3, #0; bool
499A16:  MOVS            R6, #0
499A18:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
499A1C:  MOV             R1, R4; CPed *
499A1E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
499A22:  MOV             R0, R5; this
499A24:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
499A28:  B               loc_499A54
499A2A:  LDRB.W          R0, [R5,#0x54]
499A2E:  ORR.W           R1, R0, #4
499A32:  STRB.W          R1, [R5,#0x54]
499A36:  MOV.W           R1, #0x398
499A3A:  TST.W           R0, #2
499A3E:  IT EQ
499A40:  MOVWEQ          R1, #0x516
499A44:  B               loc_499A4A
499A46:  MOVW            R1, #0x38A
499A4A:  MOV             R0, R5
499A4C:  MOV             R2, R4
499A4E:  BLX             j__ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset>::CreateSubTask(int,CPed *)
499A52:  MOV             R6, R0
499A54:  MOV             R0, R6
499A56:  ADD             SP, SP, #0x28 ; '('
499A58:  POP.W           {R11}
499A5C:  POP             {R4-R7,PC}
