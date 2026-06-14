; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE17CreateNextSubTaskEP4CPed
; Address            : 0x498930 - 0x498AAC
; =========================================================

498930:  PUSH            {R4-R7,LR}
498932:  ADD             R7, SP, #0xC
498934:  PUSH.W          {R11}
498938:  SUB             SP, SP, #0x28
49893A:  MOV             R5, R0
49893C:  MOV             R4, R1
49893E:  LDR             R0, [R5,#0xC]
498940:  CBZ             R0, loc_49899A
498942:  LDR             R0, [R5,#8]
498944:  LDR             R1, [R0]
498946:  LDR             R1, [R1,#0x14]
498948:  BLX             R1
49894A:  MOVW            R1, #0x2CE; unsigned int
49894E:  MOVS            R6, #0
498950:  CMP             R0, R1
498952:  BGT             loc_4989A6
498954:  CMP             R0, #0xCB
498956:  BEQ             loc_498A1A
498958:  CMP             R0, #0xDB
49895A:  BEQ             loc_498A54
49895C:  CMP.W           R0, #0x2C0
498960:  BNE             loc_49899C
498962:  LDRB.W          R0, [R4,#0x485]
498966:  MOVS            R6, #0
498968:  LSLS            R0, R0, #0x1F
49896A:  BNE             loc_49899C
49896C:  MOVS            R0, #dword_70; this
49896E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498972:  LDR.W           R1, [R4,#0x590]; CVehicle *
498976:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
498978:  MOVS            R3, #0; bool
49897A:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49897E:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49898A)
498980:  MOV.W           R2, #0x7D0
498984:  STR             R2, [R0,#0x60]
498986:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
498988:  STRH.W          R6, [R0,#0x6C]
49898C:  STRD.W          R6, R6, [R0,#0x64]
498990:  MOV             R6, R0
498992:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
498994:  ADDS            R1, #8
498996:  STR             R1, [R0]
498998:  B               loc_49899C
49899A:  MOVS            R6, #0
49899C:  MOV             R0, R6
49899E:  ADD             SP, SP, #0x28 ; '('
4989A0:  POP.W           {R11}
4989A4:  POP             {R4-R7,PC}
4989A6:  MOVW            R1, #0x2CF
4989AA:  CMP             R0, R1
4989AC:  BEQ             loc_498A40
4989AE:  MOVW            R1, #0x387
4989B2:  CMP             R0, R1
4989B4:  ITT NE
4989B6:  MOVWNE          R1, #0x38A
4989BA:  CMPNE           R0, R1
4989BC:  BNE             loc_49899C
4989BE:  LDR             R0, [R4,#0x14]
4989C0:  VLDR            S4, =0.0
4989C4:  ADD.W           R1, R0, #0x30 ; '0'
4989C8:  CMP             R0, #0
4989CA:  IT EQ
4989CC:  ADDEQ           R1, R4, #4
4989CE:  VLDR            S2, [R5,#0x18]
4989D2:  VLDR            D16, [R1]
4989D6:  VSUB.F32        D16, D16, D16
4989DA:  VMUL.F32        S2, S2, S2
4989DE:  VMUL.F32        D0, D16, D16
4989E2:  VADD.F32        S0, S0, S1
4989E6:  VADD.F32        S0, S0, S4
4989EA:  VCMPE.F32       S0, S2
4989EE:  VMRS            APSR_nzcv, FPSCR
4989F2:  BLE             loc_498A7A
4989F4:  VLDR            S2, [R5,#0x20]
4989F8:  VCMP.F32        S2, #0.0
4989FC:  VMRS            APSR_nzcv, FPSCR
498A00:  BEQ             loc_498A96
498A02:  VMUL.F32        S2, S2, S2
498A06:  VCMPE.F32       S0, S2
498A0A:  VMRS            APSR_nzcv, FPSCR
498A0E:  ITE GT
498A10:  MOVWGT          R1, #0x38A
498A14:  MOVWLE          R1, #0x387
498A18:  B               loc_498A9A
498A1A:  LDR.W           R0, [R4,#0x100]
498A1E:  CMP             R0, #0
498A20:  BEQ             loc_498A40
498A22:  MOVS            R0, #dword_20; this
498A24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498A28:  MOV             R6, R0
498A2A:  MOV.W           R0, #0x41000000
498A2E:  STR             R0, [SP,#0x38+var_38]; float
498A30:  MOV             R0, R6; this
498A32:  MOV.W           R1, #0x7D0; int
498A36:  MOVS            R2, #0; bool
498A38:  MOVS            R3, #0; bool
498A3A:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
498A3E:  B               loc_49899C
498A40:  LDR             R0, [R5]
498A42:  MOV             R1, R4
498A44:  LDR             R2, [R0,#0x2C]
498A46:  MOV             R0, R5
498A48:  ADD             SP, SP, #0x28 ; '('
498A4A:  POP.W           {R11}
498A4E:  POP.W           {R4-R7,LR}
498A52:  BX              R2
498A54:  ADD             R5, SP, #0x38+var_30
498A56:  MOV.W           R0, #0x41000000
498A5A:  STR             R0, [SP,#0x38+var_38]; float
498A5C:  MOV.W           R1, #0xFFFFFFFF; int
498A60:  MOV             R0, R5; this
498A62:  MOVS            R2, #0; bool
498A64:  MOVS            R3, #0; bool
498A66:  MOVS            R6, #0
498A68:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
498A6C:  MOV             R1, R4; CPed *
498A6E:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
498A72:  MOV             R0, R5; this
498A74:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
498A78:  B               loc_49899C
498A7A:  LDRB.W          R0, [R5,#0x48]
498A7E:  ORR.W           R1, R0, #4
498A82:  STRB.W          R1, [R5,#0x48]
498A86:  MOV.W           R1, #0x398
498A8A:  TST.W           R0, #2
498A8E:  IT EQ
498A90:  MOVWEQ          R1, #0x516
498A94:  B               loc_498A9A
498A96:  MOVW            R1, #0x38A
498A9A:  MOV             R0, R5
498A9C:  MOV             R2, R4
498A9E:  ADD             SP, SP, #0x28 ; '('
498AA0:  POP.W           {R11}
498AA4:  POP.W           {R4-R7,LR}
498AA8:  B.W             sub_19D278
