; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed30CreateDealWithNextAccidentTaskEP4CPedP9CAccident
; Address            : 0x510FDC - 0x511162
; =========================================================

510FDC:  PUSH            {R4-R7,LR}
510FDE:  ADD             R7, SP, #0xC
510FE0:  PUSH.W          {R11}
510FE4:  SUB             SP, SP, #0x28; float
510FE6:  MOV             R5, R0
510FE8:  LDR             R0, [R1,#0x14]
510FEA:  MOV             R4, R2
510FEC:  MOVS            R2, #0
510FEE:  ADD.W           R6, R0, #0x30 ; '0'
510FF2:  CMP             R0, #0
510FF4:  STR             R2, [R5,#0x18]
510FF6:  IT EQ
510FF8:  ADDEQ           R6, R1, #4
510FFA:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
510FFE:  MOV             R1, R6; CVector *
511000:  MOV             R2, R4; CAccident *
511002:  MOVS            R3, #1; bool
511004:  BLX             j__ZN16CAccidentManager35GetNearestFreeAccidentExceptThisOneERK7CVectorP9CAccidentb; CAccidentManager::GetNearestFreeAccidentExceptThisOne(CVector const&,CAccident *,bool)
511008:  STR             R0, [R5,#0x18]
51100A:  CMP             R0, #0
51100C:  ITT NE
51100E:  LDRNE           R1, [R0]; unsigned int
511010:  CMPNE           R1, #0
511012:  BEQ             loc_51110E
511014:  MOVS            R1, #1
511016:  MOVS            R2, #0x29 ; ')'
511018:  STRB            R1, [R0,#4]
51101A:  ADD             R1, SP, #0x38+var_1C
51101C:  LDR             R0, [R5,#0x18]
51101E:  MOVS            R3, #0
511020:  MOVS            R4, #0
511022:  LDR             R6, [R0]
511024:  MOV             R0, R6; this
511026:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
51102A:  ADD             R1, SP, #0x38+var_28
51102C:  MOV             R0, R6; this
51102E:  MOVS            R2, #0x33 ; '3'
511030:  MOVS            R3, #0
511032:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
511036:  VLDR            S0, [SP,#0x38+var_28]
51103A:  VMOV.F32        S12, #0.5
51103E:  VLDR            S6, [SP,#0x38+var_1C]
511042:  VLDR            S2, [SP,#0x38+var_24]
511046:  VLDR            S8, [SP,#0x38+var_18]
51104A:  VADD.F32        S0, S6, S0
51104E:  VLDR            S4, [SP,#0x38+var_20]
511052:  VLDR            S10, [SP,#0x38+var_14]
511056:  VADD.F32        S2, S8, S2
51105A:  VADD.F32        S4, S10, S4
51105E:  VMUL.F32        S0, S0, S12
511062:  VMUL.F32        S2, S2, S12
511066:  VMUL.F32        S4, S4, S12
51106A:  VSTR            S0, [R5,#0x1C]
51106E:  VSTR            S2, [R5,#0x20]
511072:  VSTR            S4, [R5,#0x24]
511076:  LDR             R0, [R5,#8]
511078:  CMP             R0, #0
51107A:  BEQ             loc_511124
51107C:  LDR             R1, [R0]
51107E:  LDR             R1, [R1,#0x14]
511080:  BLX             R1
511082:  MOVW            R1, #0x387
511086:  CMP             R0, R1
511088:  BNE             loc_511124
51108A:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x511092)
51108C:  LDR             R4, [R5,#8]
51108E:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
511090:  VLDR            S2, [R5,#0x1C]
511094:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
511096:  VLDR            S4, [R4,#0x10]
51109A:  VCMP.F32        S4, S2
51109E:  VLDR            S0, [R0]
5110A2:  VMRS            APSR_nzcv, FPSCR
5110A6:  BNE             loc_5110DA
5110A8:  VLDR            S2, [R5,#0x20]
5110AC:  VLDR            S4, [R4,#0x14]
5110B0:  VCMP.F32        S4, S2
5110B4:  VMRS            APSR_nzcv, FPSCR
5110B8:  BNE             loc_5110DA
5110BA:  VLDR            S2, [R5,#0x24]
5110BE:  VLDR            S4, [R4,#0x18]
5110C2:  VCMP.F32        S4, S2
5110C6:  VMRS            APSR_nzcv, FPSCR
5110CA:  BNE             loc_5110DA
5110CC:  VLDR            S2, [R4,#0x20]
5110D0:  VCMP.F32        S2, S0
5110D4:  VMRS            APSR_nzcv, FPSCR
5110D8:  BEQ             loc_511108
5110DA:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x5110E8)
5110DC:  ADD.W           R1, R5, #0x1C
5110E0:  ADD.W           R2, R4, #0x10
5110E4:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
5110E6:  VLDR            D16, [R1]
5110EA:  LDR             R1, [R1,#8]
5110EC:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
5110EE:  STR             R1, [R2,#8]
5110F0:  VSTR            D16, [R2]
5110F4:  LDRB.W          R1, [R4,#0x24]
5110F8:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius
5110FA:  STR             R0, [R4,#0x1C]
5110FC:  ORR.W           R0, R1, #4
511100:  VSTR            S0, [R4,#0x20]
511104:  STRB.W          R0, [R4,#0x24]
511108:  MOVS            R0, #6
51110A:  STR             R0, [R4,#0xC]
51110C:  B               loc_511158
51110E:  MOVS            R0, #dword_50; this
511110:  LDRB            R6, [R5,#0x14]
511112:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511116:  MOV             R4, R0
511118:  CBZ             R6, loc_51114C
51111A:  LDR             R1, [R5,#0xC]; CVehicle *
51111C:  MOV             R0, R4; this
51111E:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
511122:  B               loc_511158
511124:  MOVS            R0, #word_28; this
511126:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51112A:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x51113C)
51112C:  ADD.W           R2, R5, #0x1C; CVector *
511130:  MOV.W           R3, #0x3E000000; float
511134:  STRD.W          R4, R4, [SP,#0x38+var_34]; bool
511138:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
51113A:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
51113C:  VLDR            S0, [R1]
511140:  MOVS            R1, #6; int
511142:  VSTR            S0, [SP,#0x38+var_38]
511146:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
51114A:  B               loc_511158
51114C:  LDR             R1, [R5,#0xC]; CVehicle *
51114E:  MOV             R0, R4; this
511150:  MOVS            R2, #0xB; int
511152:  MOVS            R3, #0; bool
511154:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
511158:  MOV             R0, R4
51115A:  ADD             SP, SP, #0x28 ; '('
51115C:  POP.W           {R11}
511160:  POP             {R4-R7,PC}
