; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE17CreateNextSubTaskEP4CPed
; Address            : 0x49A928 - 0x49AAB6
; =========================================================

49A928:  PUSH            {R4-R7,LR}
49A92A:  ADD             R7, SP, #0xC
49A92C:  PUSH.W          {R11}
49A930:  SUB             SP, SP, #0x28
49A932:  MOV             R5, R0
49A934:  MOV             R4, R1
49A936:  LDR             R0, [R5,#0xC]
49A938:  CBZ             R0, loc_49A998
49A93A:  LDR             R0, [R5,#8]
49A93C:  LDR             R1, [R0]
49A93E:  LDR             R1, [R1,#0x14]
49A940:  BLX             R1
49A942:  MOVW            R1, #0x2CE; unsigned int
49A946:  MOVS            R6, #0
49A948:  CMP             R0, R1
49A94A:  BGT             loc_49A99C
49A94C:  CMP             R0, #0xCB
49A94E:  BEQ             loc_49AA22
49A950:  CMP             R0, #0xDB
49A952:  BEQ.W           loc_49AA5C
49A956:  CMP.W           R0, #0x2C0
49A95A:  BNE.W           loc_49AAAC
49A95E:  LDRB.W          R0, [R4,#0x485]
49A962:  MOVS            R6, #0
49A964:  LSLS            R0, R0, #0x1F
49A966:  BNE.W           loc_49AAAC
49A96A:  MOVS            R0, #dword_70; this
49A96C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A970:  LDR.W           R1, [R4,#0x590]; CVehicle *
49A974:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49A976:  MOVS            R3, #0; bool
49A978:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49A97C:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49A988)
49A97E:  MOV.W           R2, #0x7D0
49A982:  STR             R2, [R0,#0x60]
49A984:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49A986:  STRH.W          R6, [R0,#0x6C]
49A98A:  STRD.W          R6, R6, [R0,#0x64]
49A98E:  MOV             R6, R0
49A990:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
49A992:  ADDS            R1, #8
49A994:  STR             R1, [R0]
49A996:  B               loc_49AAAC
49A998:  MOVS            R6, #0
49A99A:  B               loc_49AAAC
49A99C:  MOVW            R1, #0x2CF
49A9A0:  CMP             R0, R1
49A9A2:  BEQ             loc_49AA48
49A9A4:  MOVW            R1, #0x387
49A9A8:  CMP             R0, R1
49A9AA:  ITT NE
49A9AC:  MOVWNE          R1, #0x38A
49A9B0:  CMPNE           R0, R1
49A9B2:  BNE             loc_49AAAC
49A9B4:  LDR             R2, [R5,#0xC]; CEntity *
49A9B6:  ADD.W           R0, R5, #0x40 ; '@'; this
49A9BA:  ADD             R3, SP, #0x38+var_30; CVector *
49A9BC:  MOV             R1, R4; CPed *
49A9BE:  LDR             R6, [R4,#0x14]
49A9C0:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49A9C4:  ADD.W           R0, R6, #0x30 ; '0'
49A9C8:  CMP             R6, #0
49A9CA:  VLDR            D16, [SP,#0x38+var_30]
49A9CE:  IT EQ
49A9D0:  ADDEQ           R0, R4, #4
49A9D2:  VLDR            D17, [R0]
49A9D6:  VSUB.F32        D16, D17, D16
49A9DA:  VLDR            S2, [R5,#0x18]
49A9DE:  VLDR            S4, =0.0
49A9E2:  VMUL.F32        S2, S2, S2
49A9E6:  VMUL.F32        D0, D16, D16
49A9EA:  VADD.F32        S0, S0, S1
49A9EE:  VADD.F32        S0, S0, S4
49A9F2:  VCMPE.F32       S0, S2
49A9F6:  VMRS            APSR_nzcv, FPSCR
49A9FA:  BLE             loc_49AA82
49A9FC:  VLDR            S2, [R5,#0x20]
49AA00:  VCMP.F32        S2, #0.0
49AA04:  VMRS            APSR_nzcv, FPSCR
49AA08:  BEQ             loc_49AA9E
49AA0A:  VMUL.F32        S2, S2, S2
49AA0E:  VCMPE.F32       S0, S2
49AA12:  VMRS            APSR_nzcv, FPSCR
49AA16:  ITE GT
49AA18:  MOVWGT          R1, #0x38A
49AA1C:  MOVWLE          R1, #0x387
49AA20:  B               loc_49AAA2
49AA22:  LDR.W           R0, [R4,#0x100]
49AA26:  CMP             R0, #0
49AA28:  BEQ             loc_49AA48
49AA2A:  MOVS            R0, #dword_20; this
49AA2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49AA30:  MOV             R6, R0
49AA32:  MOV.W           R0, #0x41000000
49AA36:  STR             R0, [SP,#0x38+var_38]; float
49AA38:  MOV             R0, R6; this
49AA3A:  MOV.W           R1, #0x7D0; int
49AA3E:  MOVS            R2, #0; bool
49AA40:  MOVS            R3, #0; bool
49AA42:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49AA46:  B               loc_49AAAC
49AA48:  LDR             R0, [R5]
49AA4A:  MOV             R1, R4
49AA4C:  LDR             R2, [R0,#0x2C]
49AA4E:  MOV             R0, R5
49AA50:  ADD             SP, SP, #0x28 ; '('
49AA52:  POP.W           {R11}
49AA56:  POP.W           {R4-R7,LR}
49AA5A:  BX              R2
49AA5C:  ADD             R5, SP, #0x38+var_30
49AA5E:  MOV.W           R0, #0x41000000
49AA62:  STR             R0, [SP,#0x38+var_38]; float
49AA64:  MOV.W           R1, #0xFFFFFFFF; int
49AA68:  MOV             R0, R5; this
49AA6A:  MOVS            R2, #0; bool
49AA6C:  MOVS            R3, #0; bool
49AA6E:  MOVS            R6, #0
49AA70:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49AA74:  MOV             R1, R4; CPed *
49AA76:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
49AA7A:  MOV             R0, R5; this
49AA7C:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
49AA80:  B               loc_49AAAC
49AA82:  LDRB.W          R0, [R5,#0x48]
49AA86:  ORR.W           R1, R0, #4
49AA8A:  STRB.W          R1, [R5,#0x48]
49AA8E:  MOV.W           R1, #0x398
49AA92:  TST.W           R0, #2
49AA96:  IT EQ
49AA98:  MOVWEQ          R1, #0x516
49AA9C:  B               loc_49AAA2
49AA9E:  MOVW            R1, #0x38A
49AAA2:  MOV             R0, R5
49AAA4:  MOV             R2, R4
49AAA6:  BLX             j__ZNK22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE13CreateSubTaskEiP4CPed; CTaskComplexSeekEntity<CEntitySeekPosCalculatorEntitySurface>::CreateSubTask(int,CPed *)
49AAAA:  MOV             R6, R0
49AAAC:  MOV             R0, R6
49AAAE:  ADD             SP, SP, #0x28 ; '('
49AAB0:  POP.W           {R11}
49AAB4:  POP             {R4-R7,PC}
