; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE17CreateNextSubTaskEP4CPed
; Address            : 0x49CA00 - 0x49CB8E
; =========================================================

49CA00:  PUSH            {R4-R7,LR}
49CA02:  ADD             R7, SP, #0xC
49CA04:  PUSH.W          {R11}
49CA08:  SUB             SP, SP, #0x28
49CA0A:  MOV             R5, R0
49CA0C:  MOV             R4, R1
49CA0E:  LDR             R0, [R5,#0xC]
49CA10:  CBZ             R0, loc_49CA70
49CA12:  LDR             R0, [R5,#8]
49CA14:  LDR             R1, [R0]
49CA16:  LDR             R1, [R1,#0x14]
49CA18:  BLX             R1
49CA1A:  MOVW            R1, #0x2CE; unsigned int
49CA1E:  MOVS            R6, #0
49CA20:  CMP             R0, R1
49CA22:  BGT             loc_49CA74
49CA24:  CMP             R0, #0xCB
49CA26:  BEQ             loc_49CAFA
49CA28:  CMP             R0, #0xDB
49CA2A:  BEQ.W           loc_49CB34
49CA2E:  CMP.W           R0, #0x2C0
49CA32:  BNE.W           loc_49CB84
49CA36:  LDRB.W          R0, [R4,#0x485]
49CA3A:  MOVS            R6, #0
49CA3C:  LSLS            R0, R0, #0x1F
49CA3E:  BNE.W           loc_49CB84
49CA42:  MOVS            R0, #dword_70; this
49CA44:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49CA48:  LDR.W           R1, [R4,#0x590]; CVehicle *
49CA4C:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49CA4E:  MOVS            R3, #0; bool
49CA50:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49CA54:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49CA60)
49CA56:  MOV.W           R2, #0x7D0
49CA5A:  STR             R2, [R0,#0x60]
49CA5C:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49CA5E:  STRH.W          R6, [R0,#0x6C]
49CA62:  STRD.W          R6, R6, [R0,#0x64]
49CA66:  MOV             R6, R0
49CA68:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
49CA6A:  ADDS            R1, #8
49CA6C:  STR             R1, [R0]
49CA6E:  B               loc_49CB84
49CA70:  MOVS            R6, #0
49CA72:  B               loc_49CB84
49CA74:  MOVW            R1, #0x2CF
49CA78:  CMP             R0, R1
49CA7A:  BEQ             loc_49CB20
49CA7C:  MOVW            R1, #0x387
49CA80:  CMP             R0, R1
49CA82:  ITT NE
49CA84:  MOVWNE          R1, #0x38A
49CA88:  CMPNE           R0, R1
49CA8A:  BNE             loc_49CB84
49CA8C:  LDR             R2, [R5,#0xC]; CEntity *
49CA8E:  ADD.W           R0, R5, #0x40 ; '@'; this
49CA92:  ADD             R3, SP, #0x38+var_30; CVector *
49CA94:  MOV             R1, R4; CPed *
49CA96:  LDR             R6, [R4,#0x14]
49CA98:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49CA9C:  ADD.W           R0, R6, #0x30 ; '0'
49CAA0:  CMP             R6, #0
49CAA2:  VLDR            D16, [SP,#0x38+var_30]
49CAA6:  IT EQ
49CAA8:  ADDEQ           R0, R4, #4
49CAAA:  VLDR            D17, [R0]
49CAAE:  VSUB.F32        D16, D17, D16
49CAB2:  VLDR            S2, [R5,#0x18]
49CAB6:  VLDR            S4, =0.0
49CABA:  VMUL.F32        S2, S2, S2
49CABE:  VMUL.F32        D0, D16, D16
49CAC2:  VADD.F32        S0, S0, S1
49CAC6:  VADD.F32        S0, S0, S4
49CACA:  VCMPE.F32       S0, S2
49CACE:  VMRS            APSR_nzcv, FPSCR
49CAD2:  BLE             loc_49CB5A
49CAD4:  VLDR            S2, [R5,#0x20]
49CAD8:  VCMP.F32        S2, #0.0
49CADC:  VMRS            APSR_nzcv, FPSCR
49CAE0:  BEQ             loc_49CB76
49CAE2:  VMUL.F32        S2, S2, S2
49CAE6:  VCMPE.F32       S0, S2
49CAEA:  VMRS            APSR_nzcv, FPSCR
49CAEE:  ITE GT
49CAF0:  MOVWGT          R1, #0x38A
49CAF4:  MOVWLE          R1, #0x387
49CAF8:  B               loc_49CB7A
49CAFA:  LDR.W           R0, [R4,#0x100]
49CAFE:  CMP             R0, #0
49CB00:  BEQ             loc_49CB20
49CB02:  MOVS            R0, #dword_20; this
49CB04:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49CB08:  MOV             R6, R0
49CB0A:  MOV.W           R0, #0x41000000
49CB0E:  STR             R0, [SP,#0x38+var_38]; float
49CB10:  MOV             R0, R6; this
49CB12:  MOV.W           R1, #0x7D0; int
49CB16:  MOVS            R2, #0; bool
49CB18:  MOVS            R3, #0; bool
49CB1A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49CB1E:  B               loc_49CB84
49CB20:  LDR             R0, [R5]
49CB22:  MOV             R1, R4
49CB24:  LDR             R2, [R0,#0x2C]
49CB26:  MOV             R0, R5
49CB28:  ADD             SP, SP, #0x28 ; '('
49CB2A:  POP.W           {R11}
49CB2E:  POP.W           {R4-R7,LR}
49CB32:  BX              R2
49CB34:  ADD             R5, SP, #0x38+var_30
49CB36:  MOV.W           R0, #0x41000000
49CB3A:  STR             R0, [SP,#0x38+var_38]; float
49CB3C:  MOV.W           R1, #0xFFFFFFFF; int
49CB40:  MOV             R0, R5; this
49CB42:  MOVS            R2, #0; bool
49CB44:  MOVS            R3, #0; bool
49CB46:  MOVS            R6, #0
49CB48:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49CB4C:  MOV             R1, R4; CPed *
49CB4E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
49CB52:  MOV             R0, R5; this
49CB54:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
49CB58:  B               loc_49CB84
49CB5A:  LDRB.W          R0, [R5,#0x54]
49CB5E:  ORR.W           R1, R0, #4
49CB62:  STRB.W          R1, [R5,#0x54]
49CB66:  MOV.W           R1, #0x398
49CB6A:  TST.W           R0, #2
49CB6E:  IT EQ
49CB70:  MOVWEQ          R1, #0x516
49CB74:  B               loc_49CB7A
49CB76:  MOVW            R1, #0x38A
49CB7A:  MOV             R0, R5
49CB7C:  MOV             R2, R4
49CB7E:  BLX             j__ZNK22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorDriving>::CreateSubTask(int,CPed *)
49CB82:  MOV             R6, R0
49CB84:  MOV             R0, R6
49CB86:  ADD             SP, SP, #0x28 ; '('
49CB88:  POP.W           {R11}
49CB8C:  POP             {R4-R7,PC}
