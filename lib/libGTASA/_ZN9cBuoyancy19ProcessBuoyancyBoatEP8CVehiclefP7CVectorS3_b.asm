; =========================================================
; Game Engine Function: _ZN9cBuoyancy19ProcessBuoyancyBoatEP8CVehiclefP7CVectorS3_b
; Address            : 0x570854 - 0x570BC8
; =========================================================

570854:  PUSH            {R4-R7,LR}
570856:  ADD             R7, SP, #0xC
570858:  PUSH.W          {R8-R11}
57085C:  SUB             SP, SP, #4
57085E:  VPUSH           {D8-D15}
570862:  SUB             SP, SP, #0x80
570864:  MOV             R9, R1
570866:  MOV             R4, R0
570868:  LDR.W           R0, [R9,#0x14]
57086C:  MOV             R5, R3
57086E:  LDR.W           R3, [R9,#0x44]
570872:  MOV             R8, R2
570874:  ADD.W           R2, R0, #0x30 ; '0'
570878:  CMP             R0, #0
57087A:  IT EQ
57087C:  ADDEQ.W         R2, R9, #4
570880:  MOV.W           R11, #0
570884:  LDM             R2, {R0-R2}; float
570886:  STR.W           R11, [SP,#0xE0+var_DC]; CVector *
57088A:  UBFX.W          R3, R3, #0x1B, #1
57088E:  STR             R3, [SP,#0xE0+var_E0]; float *
570890:  ADD.W           R3, R4, #0x64 ; 'd'; float
570894:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
570898:  CMP             R0, #1
57089A:  BNE.W           loc_570BB8
57089E:  STR             R5, [SP,#0xE0+var_D0]
5708A0:  ADD.W           R0, R4, #0xC
5708A4:  LDR.W           R1, [R9,#0x14]
5708A8:  STR             R0, [SP,#0xE0+var_A8]
5708AA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5708AE:  MOV             R0, R4; this
5708B0:  MOV             R1, R9; CPhysical *
5708B2:  MOV             R2, R8; float
5708B4:  BLX             j__ZN9cBuoyancy12PreCalcSetupEP9CPhysicalf; cBuoyancy::PreCalcSetup(CPhysical *,float)
5708B8:  VLDR            S0, [R4,#0x78]
5708BC:  ADD.W           R8, SP, #0xE0+var_7C
5708C0:  VLDR            S2, [R4,#0x84]
5708C4:  VMOV.F32        S4, #9.0
5708C8:  ADD.W           R0, R8, #8
5708CC:  VLDR            S16, [R4,#0x7C]
5708D0:  VSUB.F32        S0, S0, S2
5708D4:  STR             R0, [SP,#0xE0+var_B0]
5708D6:  LDR             R0, =(fBoatVolumeDistributionDinghy_ptr - 0x5708E8)
5708D8:  VMOV.F32        S20, #1.0
5708DC:  VMOV.F32        S22, #2.0
5708E0:  VLDR            S24, =0.0
5708E4:  ADD             R0, PC; fBoatVolumeDistributionDinghy_ptr
5708E6:  VLDR            S26, =0.33333
5708EA:  LDR             R0, [R0]; fBoatVolumeDistributionDinghy
5708EC:  STR             R0, [SP,#0xE0+var_B8]
5708EE:  LDR             R0, =(fBoatVolumeDistributionSpeed_ptr - 0x5708F8)
5708F0:  VMUL.F32        S0, S0, S4
5708F4:  ADD             R0, PC; fBoatVolumeDistributionSpeed_ptr
5708F6:  LDR             R0, [R0]; "333?fff?333?33s?" ...
5708F8:  STR             R0, [SP,#0xE0+var_C0]
5708FA:  LDR             R0, =(fVolMultiplier_ptr - 0x570904)
5708FC:  VDIV.F32        S18, S20, S0
570900:  ADD             R0, PC; fVolMultiplier_ptr
570902:  LDR             R0, [R0]; fVolMultiplier
570904:  STR             R0, [SP,#0xE0+var_B4]
570906:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57090C)
570908:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57090A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
57090C:  STR             R0, [SP,#0xE0+var_BC]
57090E:  LDR             R0, =(fBoatVolumeDistribution_ptr - 0x570914)
570910:  ADD             R0, PC; fBoatVolumeDistribution_ptr
570912:  LDR             R0, [R0]; fBoatVolumeDistribution
570914:  STR             R0, [SP,#0xE0+var_C4]
570916:  LDR             R0, =(fBoatVolumeDistributionSail_ptr - 0x57091C)
570918:  ADD             R0, PC; fBoatVolumeDistributionSail_ptr
57091A:  LDR             R0, [R0]; fBoatVolumeDistributionSail
57091C:  STR             R0, [SP,#0xE0+var_C8]
57091E:  MOVS            R0, #0
570920:  STR             R0, [SP,#0xE0+var_AC]
570922:  MOVS            R0, #0
570924:  STR             R0, [SP,#0xE0+var_CC]
570926:  MOV.W           R10, #0
57092A:  VLDR            S28, [R4,#0x80]
57092E:  MOV.W           R0, #0x3F800000
570932:  STR.W           R11, [SP,#0xE0+var_74]
570936:  VSTR            S28, [SP,#0xE0+var_78]
57093A:  MOV             R2, R8
57093C:  STR             R0, [SP,#0xE0+var_80]
57093E:  ADD             R0, SP, #0xE0+var_70; CMatrix *
570940:  VSTR            S16, [SP,#0xE0+var_7C]
570944:  STRD.W          R11, R11, [SP,#0xE0+var_88]
570948:  LDR             R1, [SP,#0xE0+var_A8]; CVector *
57094A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
57094E:  VLDR            S0, [SP,#0xE0+var_70]
570952:  MOVS            R3, #(stderr+1)
570954:  VLDR            S4, [R4]
570958:  VLDR            S2, [SP,#0xE0+var_70+4]
57095C:  VLDR            S6, [R4,#4]
570960:  VADD.F32        S0, S4, S0
570964:  VADD.F32        S2, S6, S2
570968:  VMOV            R0, S0; this
57096C:  VSTR            S0, [SP,#0xE0+var_70]
570970:  VMOV            R1, S2; float
570974:  VSTR            S2, [SP,#0xE0+var_70+4]
570978:  LDR             R2, [R4,#8]; float
57097A:  STR             R3, [SP,#0xE0+var_E0]; float *
57097C:  ADD             R3, SP, #0xE0+var_88
57097E:  STR             R3, [SP,#0xE0+var_DC]; CVector *
570980:  LDR             R3, [SP,#0xE0+var_B0]; float
570982:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
570986:  VLDR            S0, [R4,#0x60]
57098A:  VLDR            S2, [SP,#0xE0+var_68]
57098E:  VADD.F32        S0, S2, S0
570992:  VLDR            S2, [SP,#0xE0+var_74]
570996:  VSUB.F32        S2, S2, S0
57099A:  VSTR            S2, [SP,#0xE0+var_74]
57099E:  VLDR            S0, [R4,#0x78]
5709A2:  VCMPE.F32       S2, S0
5709A6:  VMRS            APSR_nzcv, FPSCR
5709AA:  BLE             loc_5709B0
5709AC:  MOVS            R0, #2
5709AE:  B               loc_5709C0
5709B0:  VLDR            S0, [R4,#0x84]
5709B4:  VCMPE.F32       S2, S0
5709B8:  VMRS            APSR_nzcv, FPSCR
5709BC:  BGE             loc_5709C6
5709BE:  MOVS            R0, #0
5709C0:  VSTR            S0, [SP,#0xE0+var_74]
5709C4:  B               loc_5709C8
5709C6:  MOVS            R0, #1
5709C8:  VLDR            S0, [SP,#0xE0+var_88]
5709CC:  VLDR            S2, [SP,#0xE0+var_84]
5709D0:  VLDR            S4, [SP,#0xE0+var_80]
5709D4:  VADD.F32        S0, S0, S24
5709D8:  VADD.F32        S2, S2, S24
5709DC:  VADD.F32        S4, S4, S22
5709E0:  VMUL.F32        S0, S0, S26
5709E4:  VMUL.F32        S2, S2, S26
5709E8:  VMUL.F32        S4, S4, S26
5709EC:  VSTR            S0, [SP,#0xE0+var_88]
5709F0:  VSTR            S2, [SP,#0xE0+var_84]
5709F4:  VSTR            S4, [SP,#0xE0+var_80]
5709F8:  LDRSH.W         R2, [R9,#0x26]
5709FC:  SUB.W           R1, R2, #0x1BE; switch 48 cases
570A00:  CMP             R1, #0x2F ; '/'
570A02:  BHI             def_570A06; jumptable 00570A06 default case
570A04:  LDR             R2, [SP,#0xE0+var_B8]
570A06:  TBB.W           [PC,R1]; switch jump
570A0A:  DCB 0x18; jump table for switch statement
570A0B:  DCB 0x1E
570A0C:  DCB 0x1E
570A0D:  DCB 0x1E
570A0E:  DCB 0x1E
570A0F:  DCB 0x1E
570A10:  DCB 0x18
570A11:  DCB 0x1E
570A12:  DCB 0x1E
570A13:  DCB 0x1E
570A14:  DCB 0x1E
570A15:  DCB 0x1E
570A16:  DCB 0x1E
570A17:  DCB 0x1E
570A18:  DCB 0x1E
570A19:  DCB 0x1E
570A1A:  DCB 0x1E
570A1B:  DCB 0x1E
570A1C:  DCB 0x1E
570A1D:  DCB 0x1E
570A1E:  DCB 0x1E
570A1F:  DCB 0x1E
570A20:  DCB 0x1E
570A21:  DCB 0x1E
570A22:  DCB 0x1E
570A23:  DCB 0x1E
570A24:  DCB 0x21
570A25:  DCB 0x21
570A26:  DCB 0x1E
570A27:  DCB 0x1E
570A28:  DCB 0x1E
570A29:  DCB 0x1E
570A2A:  DCB 0x1E
570A2B:  DCB 0x1E
570A2C:  DCB 0x1E
570A2D:  DCB 0x1E
570A2E:  DCB 0x1E
570A2F:  DCB 0x1E
570A30:  DCB 0x20
570A31:  DCB 0x1E
570A32:  DCB 0x1E
570A33:  DCB 0x1E
570A34:  DCB 0x1E
570A35:  DCB 0x1E
570A36:  DCB 0x1E
570A37:  DCB 0x1E
570A38:  DCB 0x1E
570A39:  DCB 0x18
570A3A:  LDR             R2, [SP,#0xE0+var_C0]; jumptable 00570A06 cases 446,452,493
570A3C:  B               loc_570A4C; jumptable 00570A06 cases 472,473
570A3E:  MOVW            R1, #0x253; jumptable 00570A06 default case
570A42:  CMP             R2, R1
570A44:  BEQ             loc_570A3A; jumptable 00570A06 cases 446,452,493
570A46:  LDR             R2, [SP,#0xE0+var_C4]; jumptable 00570A06 cases 447-451,453-471,474-483,485-492
570A48:  B               loc_570A4C; jumptable 00570A06 cases 472,473
570A4A:  LDR             R2, [SP,#0xE0+var_C8]; jumptable 00570A06 case 484
570A4C:  LDR             R1, [SP,#0xE0+var_AC]; jumptable 00570A06 cases 472,473
570A4E:  CMP             R0, #0
570A50:  ADD             R1, R2
570A52:  LDR             R2, [SP,#0xE0+var_B4]
570A54:  LDR.W           R1, [R1,R10]
570A58:  STR             R1, [R2]
570A5A:  BEQ             loc_570B4C
570A5C:  MOV             R0, R4
570A5E:  MOV             R1, R8
570A60:  BLX             j__ZN9cBuoyancy21SimpleSumBuoyancyDataER7CVector11tWaterLevel; cBuoyancy::SimpleSumBuoyancyData(CVector &,tWaterLevel)
570A64:  MOV             R6, R8
570A66:  MOV             R8, R0
570A68:  VLDR            S21, [R4,#0x6C]
570A6C:  ADD             R5, SP, #0xE0+var_98
570A6E:  LDR             R0, [SP,#0xE0+var_BC]
570A70:  ADD             R2, SP, #0xE0+var_70
570A72:  VSTR            S28, [SP,#0xE0+var_70+4]
570A76:  VSTR            S16, [SP,#0xE0+var_70]
570A7A:  STR.W           R11, [SP,#0xE0+var_68]
570A7E:  LDR.W           R1, [R9,#0x14]; CVector *
570A82:  VLDR            S23, [R0]
570A86:  MOV             R0, R5; CMatrix *
570A88:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570A8C:  VLDR            D16, [SP,#0xE0+var_98]
570A90:  MOV             R1, R9
570A92:  LDR             R0, [SP,#0xE0+var_90]
570A94:  STR             R0, [SP,#0xE0+var_68]
570A96:  VSTR            D16, [SP,#0xE0+var_70]
570A9A:  LDRD.W          R2, R3, [SP,#0xE0+var_70]
570A9E:  LDR             R0, [SP,#0xE0+var_68]
570AA0:  STR             R0, [SP,#0xE0+var_E0]
570AA2:  MOV             R0, R5
570AA4:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
570AA8:  VLDR            D16, [SP,#0xE0+var_98]
570AAC:  VMOV            S6, R8
570AB0:  LDR             R0, [SP,#0xE0+var_90]
570AB2:  MOV             R8, R6
570AB4:  STR             R0, [SP,#0xE0+var_68]
570AB6:  VSTR            D16, [SP,#0xE0+var_70]
570ABA:  VLDR            S30, [SP,#0xE0+var_88]
570ABE:  VLDR            S0, [SP,#0xE0+var_70]
570AC2:  VLDR            S17, [SP,#0xE0+var_84]
570AC6:  VLDR            S2, [SP,#0xE0+var_70+4]
570ACA:  VMUL.F32        S0, S0, S30
570ACE:  VLDR            S19, [SP,#0xE0+var_80]
570AD2:  VMUL.F32        S2, S2, S17
570AD6:  VLDR            S4, [SP,#0xE0+var_68]
570ADA:  LDR.W           R0, [R9,#0x388]
570ADE:  VMUL.F32        S4, S4, S19
570AE2:  VADD.F32        S0, S0, S2
570AE6:  VMUL.F32        S2, S18, S6
570AEA:  VADD.F32        S0, S0, S4
570AEE:  VLDR            S4, [R0,#0xB0]
570AF2:  VMUL.F32        S2, S2, S21
570AF6:  LDR             R0, [R7,#arg_0]
570AF8:  VMUL.F32        S0, S4, S0
570AFC:  VMUL.F32        S2, S2, S23
570B00:  VSUB.F32        S0, S20, S0
570B04:  VMAX.F32        D0, D0, D12
570B08:  VMUL.F32        S21, S2, S0
570B0C:  VLDR            S0, [R0,#8]
570B10:  VADD.F32        S0, S0, S21
570B14:  VSTR            S0, [R0,#8]
570B18:  LDR             R0, [R7,#arg_4]
570B1A:  CBNZ            R0, loc_570B4C
570B1C:  LDR             R1, [SP,#0xE0+var_A8]; CVector *
570B1E:  ADD             R0, SP, #0xE0+var_A4; CMatrix *
570B20:  MOV             R2, R8
570B22:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570B26:  VMUL.F32        S0, S21, S30
570B2A:  ADD             R6, SP, #0xE0+var_A4
570B2C:  VMUL.F32        S2, S21, S17
570B30:  VMUL.F32        S4, S21, S19
570B34:  LDM             R6, {R0,R5,R6}
570B36:  STMEA.W         SP, {R0,R5,R6}
570B3A:  MOV             R0, R9
570B3C:  VMOV            R1, S0
570B40:  VMOV            R2, S2
570B44:  VMOV            R3, S4
570B48:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
570B4C:  VLDR            S0, [R4,#0xA0]
570B50:  ADD.W           R10, R10, #0xC
570B54:  CMP.W           R10, #0x24 ; '$'
570B58:  VADD.F32        S28, S28, S0
570B5C:  BNE.W           loc_57092E
570B60:  VLDR            S0, [R4,#0x9C]
570B64:  LDR             R0, [SP,#0xE0+var_AC]
570B66:  VADD.F32        S16, S16, S0
570B6A:  ADDS            R0, #4
570B6C:  STR             R0, [SP,#0xE0+var_AC]
570B6E:  LDR             R0, [SP,#0xE0+var_CC]
570B70:  ADDS            R0, #1
570B72:  CMP             R0, #3
570B74:  BNE.W           loc_570924
570B78:  VLDR            S0, [R4,#0xBC]
570B7C:  ADD.W           R2, R4, #0xC0
570B80:  ADD             R0, SP, #0xE0+var_70; CMatrix *
570B82:  VMUL.F32        S0, S18, S0
570B86:  VSTR            S0, [R4,#0xBC]
570B8A:  LDR             R1, [SP,#0xE0+var_A8]; CVector *
570B8C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570B90:  LDR             R1, [SP,#0xE0+var_D0]
570B92:  VLDR            D16, [SP,#0xE0+var_70]
570B96:  LDR             R0, [SP,#0xE0+var_68]
570B98:  STR             R0, [R1,#8]
570B9A:  VSTR            D16, [R1]
570B9E:  LDRB.W          R0, [R4,#0xBA]
570BA2:  CBZ             R0, loc_570BAA
570BA4:  MOV.W           R11, #1
570BA8:  B               loc_570BB8
570BAA:  LDRB.W          R11, [R4,#0x98]
570BAE:  CMP.W           R11, #0
570BB2:  IT NE
570BB4:  MOVNE.W         R11, #1
570BB8:  MOV             R0, R11
570BBA:  ADD             SP, SP, #0x80
570BBC:  VPOP            {D8-D15}
570BC0:  ADD             SP, SP, #4
570BC2:  POP.W           {R8-R11}
570BC6:  POP             {R4-R7,PC}
