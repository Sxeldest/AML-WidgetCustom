; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed17CreateNextSubTaskEP4CPed
; Address            : 0x510908 - 0x510D66
; =========================================================

510908:  PUSH            {R4-R7,LR}
51090A:  ADD             R7, SP, #0xC
51090C:  PUSH.W          {R8}
510910:  SUB             SP, SP, #0x28; float
510912:  MOV             R4, R0
510914:  MOV             R6, R1
510916:  LDR             R0, [R4,#8]
510918:  LDR             R1, [R0]
51091A:  LDR             R1, [R1,#0x14]
51091C:  BLX             R1
51091E:  MOVS            R5, #0
510920:  CMP.W           R0, #0x2BC
510924:  BGT             loc_510996
510926:  CMP             R0, #0x65 ; 'e'
510928:  BEQ.W           loc_510A48
51092C:  CMP             R0, #0xCB
51092E:  BEQ.W           loc_510ADC
510932:  CMP.W           R0, #0x2BC
510936:  BNE.W           loc_510D34
51093A:  LDRB.W          R0, [R6,#0x485]
51093E:  LSLS            R0, R0, #0x1F
510940:  BNE.W           loc_510BB6
510944:  MOVS            R0, #word_28; this
510946:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51094A:  MOV             R5, R0
51094C:  BLX             rand
510950:  UXTH            R0, R0
510952:  VLDR            S2, =0.000015259
510956:  VMOV            S0, R0
51095A:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x51096C)
51095E:  VMOV.F32        S4, #8.0
510962:  MOVS            R1, #4; int
510964:  VCVT.F32.S32    S0, S0
510968:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
51096A:  MOVS            R3, #1; bool
51096C:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
51096E:  VMUL.F32        S0, S0, S2
510972:  VLDR            S2, [R0]
510976:  VMUL.F32        S0, S0, S4
51097A:  VCVT.S32.F32    S0, S0
51097E:  VSTR            S2, [SP,#0x38+var_38]
510982:  VMOV            R0, S0
510986:  UXTB            R2, R0; unsigned __int8
510988:  MOV             R0, R5; this
51098A:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
51098E:  LDR.W           R0, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x510996)
510992:  ADD             R0, PC; _ZTV23CTaskComplexWanderMedic_ptr
510994:  B               loc_510BAE
510996:  MOVW            R1, #0x2BD; unsigned int
51099A:  CMP             R0, R1
51099C:  BEQ.W           loc_510AF4
5109A0:  MOVW            R1, #0x387
5109A4:  CMP             R0, R1
5109A6:  BEQ.W           loc_510B4A
5109AA:  CMP.W           R0, #0x2C0
5109AE:  BNE.W           loc_510D34
5109B2:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x5109BE)
5109B6:  MOVS            R1, #0xC
5109B8:  MOV             R2, R6
5109BA:  ADD             R0, PC; g_InterestingEvents_ptr
5109BC:  LDR             R0, [R0]; g_InterestingEvents
5109BE:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
5109C2:  LDRB            R0, [R4,#0x14]
5109C4:  CMP             R0, #0
5109C6:  BEQ.W           loc_510BEA
5109CA:  LDR             R0, [R4,#0x18]
5109CC:  LDR             R5, [R0]
5109CE:  CMP             R5, #0
5109D0:  ITT NE
5109D2:  LDRBNE          R0, [R0,#4]
5109D4:  CMPNE           R0, #0
5109D6:  BEQ.W           loc_510C84
5109DA:  ADD             R1, SP, #0x38+var_1C
5109DC:  MOV             R0, R5; this
5109DE:  MOVS            R2, #0x29 ; ')'
5109E0:  MOVS            R3, #0
5109E2:  MOVS            R6, #0
5109E4:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5109E8:  ADD             R1, SP, #0x38+var_28
5109EA:  MOV             R0, R5; this
5109EC:  MOVS            R2, #0x33 ; '3'
5109EE:  MOVS            R3, #0
5109F0:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5109F4:  VLDR            S0, [SP,#0x38+var_28]
5109F8:  VMOV.F32        S12, #0.5
5109FC:  VLDR            S6, [SP,#0x38+var_1C]
510A00:  MOVS            R0, #word_28; this
510A02:  VLDR            S2, [SP,#0x38+var_24]
510A06:  VLDR            S8, [SP,#0x38+var_18]
510A0A:  VADD.F32        S0, S6, S0
510A0E:  VLDR            S4, [SP,#0x38+var_20]
510A12:  VLDR            S10, [SP,#0x38+var_14]
510A16:  VADD.F32        S2, S8, S2
510A1A:  VADD.F32        S4, S10, S4
510A1E:  VMUL.F32        S0, S0, S12
510A22:  VMUL.F32        S2, S2, S12
510A26:  VMUL.F32        S4, S4, S12
510A2A:  VSTR            S0, [R4,#0x1C]
510A2E:  VSTR            S2, [R4,#0x20]
510A32:  VSTR            S4, [R4,#0x24]
510A36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510A3A:  MOV             R5, R0
510A3C:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x510A46)
510A3E:  STRD.W          R6, R6, [SP,#0x38+var_34]
510A42:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
510A44:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
510A46:  B               loc_510D1C
510A48:  LDR             R0, [R6,#0x14]
510A4A:  MOV.W           R8, #0
510A4E:  STR.W           R8, [R4,#0x18]
510A52:  ADD.W           R5, R0, #0x30 ; '0'
510A56:  CMP             R0, #0
510A58:  IT EQ
510A5A:  ADDEQ           R5, R6, #4
510A5C:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
510A60:  MOV             R1, R5; CVector *
510A62:  MOVS            R2, #1; bool
510A64:  MOVS            R6, #1
510A66:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
510A6A:  CMP             R0, #0
510A6C:  STR             R0, [R4,#0x18]
510A6E:  BEQ             loc_510ADC
510A70:  STRB            R6, [R0,#4]
510A72:  ADD             R1, SP, #0x38+var_1C
510A74:  LDR             R0, [R4,#0x18]
510A76:  MOVS            R2, #0x29 ; ')'
510A78:  MOVS            R3, #0
510A7A:  LDR             R5, [R0]
510A7C:  MOV             R0, R5; this
510A7E:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510A82:  ADD             R1, SP, #0x38+var_28
510A84:  MOV             R0, R5; this
510A86:  MOVS            R2, #0x33 ; '3'
510A88:  MOVS            R3, #0
510A8A:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510A8E:  VLDR            S0, [SP,#0x38+var_28]
510A92:  VMOV.F32        S12, #0.5
510A96:  VLDR            S6, [SP,#0x38+var_1C]
510A9A:  MOVS            R0, #word_28; this
510A9C:  VLDR            S2, [SP,#0x38+var_24]
510AA0:  VLDR            S8, [SP,#0x38+var_18]
510AA4:  VADD.F32        S0, S6, S0
510AA8:  VLDR            S4, [SP,#0x38+var_20]
510AAC:  VLDR            S10, [SP,#0x38+var_14]
510AB0:  VADD.F32        S2, S8, S2
510AB4:  VADD.F32        S4, S10, S4
510AB8:  VMUL.F32        S0, S0, S12
510ABC:  VMUL.F32        S2, S2, S12
510AC0:  VMUL.F32        S4, S4, S12
510AC4:  VSTR            S0, [R4,#0x1C]
510AC8:  VSTR            S2, [R4,#0x20]
510ACC:  VSTR            S4, [R4,#0x24]
510AD0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510AD4:  MOV             R5, R0
510AD6:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x510ADC)
510AD8:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
510ADA:  B               loc_510D16
510ADC:  MOVS            R0, #dword_50; this
510ADE:  LDRB            R6, [R4,#0x14]
510AE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510AE4:  MOV             R5, R0
510AE6:  CMP             R6, #0
510AE8:  BEQ             loc_510BCA
510AEA:  LDR             R1, [R4,#0xC]; CVehicle *
510AEC:  MOV             R0, R5; this
510AEE:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
510AF2:  B               loc_510D34
510AF4:  LDRB.W          R0, [R6,#0x485]
510AF8:  LSLS            R0, R0, #0x1F
510AFA:  BNE             loc_510BB6
510AFC:  MOVS            R0, #word_28; this
510AFE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510B02:  MOV             R5, R0
510B04:  BLX             rand
510B08:  UXTH            R0, R0
510B0A:  VLDR            S2, =0.000015259
510B0E:  VMOV            S0, R0
510B12:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x510B22)
510B14:  VMOV.F32        S4, #8.0
510B18:  MOVS            R1, #4; int
510B1A:  VCVT.F32.S32    S0, S0
510B1E:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
510B20:  MOVS            R3, #1; bool
510B22:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
510B24:  VMUL.F32        S0, S0, S2
510B28:  VLDR            S2, [R0]
510B2C:  VMUL.F32        S0, S0, S4
510B30:  VCVT.S32.F32    S0, S0
510B34:  VSTR            S2, [SP,#0x38+var_38]
510B38:  VMOV            R0, S0
510B3C:  UXTB            R2, R0; unsigned __int8
510B3E:  MOV             R0, R5; this
510B40:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
510B44:  LDR             R0, =(_ZTV23CTaskComplexWanderMedic_ptr - 0x510B4A)
510B46:  ADD             R0, PC; _ZTV23CTaskComplexWanderMedic_ptr
510B48:  B               loc_510BAE
510B4A:  LDR             R1, [R6,#0x14]; unsigned int
510B4C:  VMOV.F32        S2, #1.0
510B50:  VLDR            D16, [R4,#0x1C]
510B54:  ADD.W           R0, R1, #0x30 ; '0'
510B58:  CMP             R1, #0
510B5A:  IT EQ
510B5C:  ADDEQ           R0, R6, #4
510B5E:  VLD1.32         {D17}, [R0]!
510B62:  VSUB.F32        D16, D17, D16
510B66:  VMUL.F32        D0, D16, D16
510B6A:  VADD.F32        S0, S0, S1
510B6E:  VSQRT.F32       S0, S0
510B72:  VCMPE.F32       S0, S2
510B76:  VMRS            APSR_nzcv, FPSCR
510B7A:  BGT             loc_510BD8
510B7C:  VLDR            S0, [R4,#0x24]
510B80:  VLDR            S2, [R0]
510B84:  VSUB.F32        S0, S2, S0
510B88:  VMOV.F32        S2, #2.0
510B8C:  VABS.F32        S0, S0
510B90:  VCMPE.F32       S0, S2
510B94:  VMRS            APSR_nzcv, FPSCR
510B98:  BGT             loc_510BD8
510B9A:  MOVS            R0, #word_10; this
510B9C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510BA0:  MOV             R5, R0
510BA2:  LDR             R4, [R4,#0x18]
510BA4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
510BA8:  LDR             R0, =(_ZTV25CTaskComplexTreatAccident_ptr - 0x510BB0)
510BAA:  STR             R4, [R5,#0xC]
510BAC:  ADD             R0, PC; _ZTV25CTaskComplexTreatAccident_ptr
510BAE:  LDR             R0, [R0]; `vtable for'CTaskComplexTreatAccident
510BB0:  ADDS            R0, #8
510BB2:  STR             R0, [R5]
510BB4:  B               loc_510D34
510BB6:  MOVS            R0, #dword_60; this
510BB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510BBC:  LDR             R1, [R4,#0xC]; CVehicle *
510BBE:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
510BC0:  MOVS            R3, #0; bool
510BC2:  MOV             R5, R0
510BC4:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
510BC8:  B               loc_510D34
510BCA:  LDR             R1, [R4,#0xC]; CVehicle *
510BCC:  MOV             R0, R5; this
510BCE:  MOVS            R2, #0xB; int
510BD0:  MOVS            R3, #0; bool
510BD2:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
510BD6:  B               loc_510D34
510BD8:  LDR             R2, [R4,#0x18]; CAccident *
510BDA:  MOV             R0, R4; this
510BDC:  MOV             R1, R6; CPed *
510BDE:  ADD             SP, SP, #0x28 ; '('
510BE0:  POP.W           {R8}
510BE4:  POP.W           {R4-R7,LR}
510BE8:  B               _ZN32CTaskComplexMedicTreatInjuredPed30CreateDealWithNextAccidentTaskEP4CPedP9CAccident; float
510BEA:  LDR             R0, [R6,#0x14]
510BEC:  MOV.W           R8, #0
510BF0:  STR.W           R8, [R4,#0x18]
510BF4:  ADD.W           R5, R0, #0x30 ; '0'
510BF8:  CMP             R0, #0
510BFA:  IT EQ
510BFC:  ADDEQ           R5, R6, #4
510BFE:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
510C02:  MOV             R1, R5; CVector *
510C04:  MOVS            R2, #1; bool
510C06:  MOVS            R6, #1
510C08:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
510C0C:  CMP             R0, #0
510C0E:  STR             R0, [R4,#0x18]
510C10:  BEQ.W           loc_510D3E
510C14:  STRB            R6, [R0,#4]
510C16:  ADD             R1, SP, #0x38+var_1C
510C18:  LDR             R0, [R4,#0x18]
510C1A:  MOVS            R2, #0x29 ; ')'
510C1C:  MOVS            R3, #0
510C1E:  LDR             R5, [R0]
510C20:  MOV             R0, R5; this
510C22:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510C26:  ADD             R1, SP, #0x38+var_28
510C28:  MOV             R0, R5; this
510C2A:  MOVS            R2, #0x33 ; '3'
510C2C:  MOVS            R3, #0
510C2E:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510C32:  VLDR            S0, [SP,#0x38+var_28]
510C36:  VMOV.F32        S12, #0.5
510C3A:  VLDR            S6, [SP,#0x38+var_1C]
510C3E:  MOVS            R0, #word_28; this
510C40:  VLDR            S2, [SP,#0x38+var_24]
510C44:  VLDR            S8, [SP,#0x38+var_18]
510C48:  VADD.F32        S0, S6, S0
510C4C:  VLDR            S4, [SP,#0x38+var_20]
510C50:  VLDR            S10, [SP,#0x38+var_14]
510C54:  VADD.F32        S2, S8, S2
510C58:  VADD.F32        S4, S10, S4
510C5C:  VMUL.F32        S0, S0, S12
510C60:  VMUL.F32        S2, S2, S12
510C64:  VMUL.F32        S4, S4, S12
510C68:  VSTR            S0, [R4,#0x1C]
510C6C:  VSTR            S2, [R4,#0x20]
510C70:  VSTR            S4, [R4,#0x24]
510C74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510C78:  MOV             R5, R0
510C7A:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x510C80)
510C7C:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
510C7E:  B               loc_510D16
510C80:  DCFS 0.000015259
510C84:  LDR             R0, [R6,#0x14]
510C86:  MOV.W           R8, #0
510C8A:  STR.W           R8, [R4,#0x18]
510C8E:  ADD.W           R5, R0, #0x30 ; '0'
510C92:  CMP             R0, #0
510C94:  IT EQ
510C96:  ADDEQ           R5, R6, #4
510C98:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
510C9C:  MOV             R1, R5; CVector *
510C9E:  MOVS            R2, #1; bool
510CA0:  MOVS            R6, #1
510CA2:  BLX             j__ZN16CAccidentManager22GetNearestFreeAccidentERK7CVectorb; CAccidentManager::GetNearestFreeAccident(CVector const&,bool)
510CA6:  CMP             R0, #0
510CA8:  STR             R0, [R4,#0x18]
510CAA:  BEQ             loc_510D5C
510CAC:  STRB            R6, [R0,#4]
510CAE:  ADD             R1, SP, #0x38+var_1C
510CB0:  LDR             R0, [R4,#0x18]
510CB2:  MOVS            R2, #0x29 ; ')'
510CB4:  MOVS            R3, #0
510CB6:  LDR             R5, [R0]
510CB8:  MOV             R0, R5; this
510CBA:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510CBE:  ADD             R1, SP, #0x38+var_28
510CC0:  MOV             R0, R5; this
510CC2:  MOVS            R2, #0x33 ; '3'
510CC4:  MOVS            R3, #0
510CC6:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510CCA:  VLDR            S0, [SP,#0x38+var_28]
510CCE:  VMOV.F32        S12, #0.5
510CD2:  VLDR            S6, [SP,#0x38+var_1C]
510CD6:  MOVS            R0, #word_28; this
510CD8:  VLDR            S2, [SP,#0x38+var_24]
510CDC:  VLDR            S8, [SP,#0x38+var_18]
510CE0:  VADD.F32        S0, S6, S0
510CE4:  VLDR            S4, [SP,#0x38+var_20]
510CE8:  VLDR            S10, [SP,#0x38+var_14]
510CEC:  VADD.F32        S2, S8, S2
510CF0:  VADD.F32        S4, S10, S4
510CF4:  VMUL.F32        S0, S0, S12
510CF8:  VMUL.F32        S2, S2, S12
510CFC:  VMUL.F32        S4, S4, S12
510D00:  VSTR            S0, [R4,#0x1C]
510D04:  VSTR            S2, [R4,#0x20]
510D08:  VSTR            S4, [R4,#0x24]
510D0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510D10:  MOV             R5, R0
510D12:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x510D18)
510D14:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
510D16:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
510D18:  STRD.W          R8, R8, [SP,#0x38+var_34]; bool
510D1C:  VLDR            S0, [R0]
510D20:  ADD.W           R2, R4, #0x1C; CVector *
510D24:  MOV             R0, R5; this
510D26:  MOVS            R1, #6; int
510D28:  MOV.W           R3, #0x3E000000; float
510D2C:  VSTR            S0, [SP,#0x38+var_38]
510D30:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
510D34:  MOV             R0, R5
510D36:  ADD             SP, SP, #0x28 ; '('
510D38:  POP.W           {R8}
510D3C:  POP             {R4-R7,PC}
510D3E:  MOVS            R0, #dword_20; this
510D40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510D44:  MOV             R5, R0
510D46:  MOV.W           R0, #0x41000000
510D4A:  STR             R0, [SP,#0x38+var_38]; float
510D4C:  MOV             R0, R5; this
510D4E:  MOVW            R1, #0x2710; int
510D52:  MOVS            R2, #0; bool
510D54:  MOVS            R3, #0; bool
510D56:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
510D5A:  B               loc_510D34
510D5C:  MOVS            R0, #dword_50; this
510D5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510D62:  MOV             R5, R0
510D64:  B               loc_510AEA
