; =========================================================
; Game Engine Function: _ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei
; Address            : 0x507C80 - 0x507FF2
; =========================================================

507C80:  PUSH            {R4-R7,LR}
507C82:  ADD             R7, SP, #0xC
507C84:  PUSH.W          {R8}
507C88:  VPUSH           {D8}
507C8C:  SUB             SP, SP, #0x30
507C8E:  MOV             R4, R0
507C90:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x507C9A)
507C92:  MOV             R8, R1
507C94:  MOV             R6, R2
507C96:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
507C98:  LDRSH.W         R1, [R8,#0x26]
507C9C:  LDR.W           R2, [R8,#0x5A0]
507CA0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
507CA2:  CMP             R2, #9
507CA4:  LDR.W           R5, [R0,R1,LSL#2]
507CA8:  BEQ             loc_507D16
507CAA:  LDR.W           R2, [R8,#0x388]
507CAE:  LDRB.W          R0, [R2,#0xCD]
507CB2:  LSLS            R0, R0, #0x1E
507CB4:  BMI             loc_507D16
507CB6:  ORR.W           R1, R6, #2
507CBA:  LDRB.W          R0, [R2,#0xDE]
507CBE:  CMP             R1, #0xB
507CC0:  IT EQ
507CC2:  CMPEQ           R0, #0x65 ; 'e'
507CC4:  BNE.W           loc_507E56
507CC8:  VLDR            S16, =0.0
507CCC:  MOVS            R2, #2
507CCE:  CMP             R1, #0xB
507CD0:  IT EQ
507CD2:  MOVEQ           R2, #1
507CD4:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x507CDC)
507CD6:  MOVS            R3, #0x94
507CD8:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
507CDA:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
507CDC:  SMLABB.W        R1, R0, R3, R1; int
507CE0:  ADD             R0, SP, #0x48+var_28; this
507CE2:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
507CE6:  SUB.W           R3, R6, #8; switch 4 cases
507CEA:  CMP             R3, #3
507CEC:  BHI.W           def_507CF4; jumptable 00507CF4 default case
507CF0:  ADD             R2, SP, #0x48+var_28
507CF2:  LDM             R2, {R0-R2}
507CF4:  TBB.W           [PC,R3]; switch jump
507CF8:  DCB 2; jump table for switch statement
507CF9:  DCB 0xC7
507CFA:  DCB 0xD5
507CFB:  DCB 0xE2
507CFC:  LDR             R3, [R5,#0x54]; jumptable 00507CF4 case 8
507CFE:  LDR             R6, [R5,#0x74]
507D00:  CMP             R3, #5
507D02:  IT NE
507D04:  ADDNE           R6, #0x30 ; '0'
507D06:  VLDR            D16, [R6]
507D0A:  VSTR            D16, [SP,#0x48+var_28]
507D0E:  VLDR            S0, [SP,#0x48+var_28]
507D12:  LDR             R3, [R6,#8]
507D14:  B               loc_507E96
507D16:  CMP             R6, #0x12
507D18:  BNE             loc_507D72
507D1A:  LDR.W           R0, [R8,#0x388]
507D1E:  MOVS            R2, #0x94
507D20:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x507D26)
507D22:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
507D24:  LDRB.W          R0, [R0,#0xDE]
507D28:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
507D2A:  SMLABB.W        R1, R0, R2, R1; int
507D2E:  ADD             R0, SP, #0x48+var_28; this
507D30:  MOVS            R2, #2
507D32:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
507D36:  LDR             R0, [R5,#0x54]
507D38:  LDR             R1, [R5,#0x74]
507D3A:  CMP             R0, #5
507D3C:  VLDR            S0, [SP,#0x48+var_28]
507D40:  VLDR            S2, [SP,#0x48+var_28+4]
507D44:  VLDR            S4, [SP,#0x48+var_20]
507D48:  IT NE
507D4A:  ADDNE           R1, #0x30 ; '0'
507D4C:  LDR             R0, [R1,#8]
507D4E:  VLDR            D16, [R1]
507D52:  STR             R0, [SP,#0x48+var_20]
507D54:  VLDR            S6, [SP,#0x48+var_20]
507D58:  VSTR            D16, [SP,#0x48+var_28]
507D5C:  VLDR            S8, [SP,#0x48+var_28]
507D60:  VSUB.F32        S4, S6, S4
507D64:  VLDR            S10, [SP,#0x48+var_28+4]
507D68:  VSUB.F32        S0, S8, S0
507D6C:  VADD.F32        S2, S2, S10
507D70:  B               loc_507E30
507D72:  LDR.W           R0, [R8,#0x388]
507D76:  MOVS            R2, #0x94
507D78:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x507D7E)
507D7A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
507D7C:  LDRB.W          R0, [R0,#0xDE]
507D80:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
507D82:  SMLABB.W        R1, R0, R2, R1; int
507D86:  ADD             R0, SP, #0x48+var_28; this
507D88:  MOVS            R2, #0
507D8A:  BLX             j__ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi; CVehicleAnimGroup::ComputeAnimDoorOffsets(int)
507D8E:  LDRD.W          R2, R3, [SP,#0x48+var_28]
507D92:  ORR.W           R1, R6, #2
507D96:  LDR             R0, [SP,#0x48+var_20]
507D98:  CMP             R1, #0xB
507D9A:  BNE             loc_507DA6
507D9C:  LDR             R1, [R5,#0x74]
507D9E:  VLDR            D16, [R1,#0x3C]
507DA2:  LDR             R1, [R1,#0x44]
507DA4:  B               loc_507DB6
507DA6:  LDR             R1, [R5,#0x54]
507DA8:  LDR             R5, [R5,#0x74]
507DAA:  CMP             R1, #5
507DAC:  IT NE
507DAE:  ADDNE           R5, #0x30 ; '0'
507DB0:  LDR             R1, [R5,#8]
507DB2:  VLDR            D16, [R5]
507DB6:  STR             R1, [SP,#0x48+var_20]
507DB8:  VSTR            D16, [SP,#0x48+var_28]
507DBC:  LDR.W           R1, [R8,#0x5A0]
507DC0:  CMP             R1, #9
507DC2:  BNE             loc_507DE6
507DC4:  ORR.W           R1, R6, #1
507DC8:  CMP             R1, #9
507DCA:  IT EQ
507DCC:  EOREQ.W         R2, R2, #0x80000000
507DD0:  LDRD.W          R1, R6, [SP,#0x48+var_28]
507DD4:  LDR             R5, [SP,#0x48+var_20]
507DD6:  STMEA.W         SP, {R0,R1,R6}
507DDA:  MOV             R0, R8
507DDC:  MOV             R1, R4
507DDE:  STR             R5, [SP,#0x48+var_3C]
507DE0:  BLX             j__ZN5CBike29GetCorrectedWorldDoorPositionER7CVectorS0_S0_; CBike::GetCorrectedWorldDoorPosition(CVector &,CVector,CVector)
507DE4:  B               loc_507FE6
507DE6:  LDR.W           R1, [R8,#0x388]
507DEA:  VLDR            S0, [R1,#0xD4]
507DEE:  ORR.W           R1, R6, #1
507DF2:  CMP             R1, #9
507DF4:  BNE             loc_507E04
507DF6:  VLDR            S2, [SP,#0x48+var_28]
507DFA:  EOR.W           R2, R2, #0x80000000
507DFE:  VADD.F32        S0, S0, S2
507E02:  B               loc_507E0C
507E04:  VLDR            S2, [SP,#0x48+var_28]
507E08:  VSUB.F32        S0, S2, S0
507E0C:  VSTR            S0, [SP,#0x48+var_28]
507E10:  VMOV            S6, R2
507E14:  VLDR            S2, [SP,#0x48+var_28+4]
507E18:  VMOV            S8, R3
507E1C:  VLDR            S4, [SP,#0x48+var_20]
507E20:  VMOV            S10, R0
507E24:  VSUB.F32        S2, S2, S8
507E28:  VSUB.F32        S0, S0, S6
507E2C:  VSUB.F32        S4, S4, S10
507E30:  VSTR            S0, [R4]
507E34:  ADD             R0, SP, #0x48+var_38
507E36:  VSTR            S2, [R4,#4]
507E3A:  MOV             R2, R4
507E3C:  VSTR            S4, [R4,#8]
507E40:  LDR.W           R1, [R8,#0x14]
507E44:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
507E48:  VLDR            D16, [SP,#0x48+var_38]
507E4C:  LDR             R0, [SP,#0x48+var_30]
507E4E:  STR             R0, [R4,#8]
507E50:  VSTR            D16, [R4]
507E54:  B               loc_507FE6
507E56:  VLDR            S16, [R2,#0xD4]
507E5A:  CMP             R1, #0xA
507E5C:  BNE.W           loc_507CCC
507E60:  MOVS            R2, #0
507E62:  B               loc_507CD4
507E64:  LDR             R0, [R5,#0x54]; jumptable 00507CF4 default case
507E66:  MOVS            R2, #0
507E68:  LDR             R1, [R5,#0x74]
507E6A:  CMP             R0, #5
507E6C:  IT NE
507E6E:  ADDNE           R1, #0x30 ; '0'
507E70:  VLDR            D16, [R1]
507E74:  LDR             R0, [R1,#8]
507E76:  MOVS            R1, #0
507E78:  STR             R0, [SP,#0x48+var_20]
507E7A:  MOVS            R0, #0
507E7C:  VSTR            D16, [SP,#0x48+var_28]
507E80:  VLDR            S0, [SP,#0x48+var_28]
507E84:  B               loc_507EDA
507E86:  LDR             R3, [R5,#0x74]; jumptable 00507CF4 case 9
507E88:  VLDR            D16, [R3,#0x3C]
507E8C:  VSTR            D16, [SP,#0x48+var_28]
507E90:  VLDR            S0, [SP,#0x48+var_28]
507E94:  LDR             R3, [R3,#0x44]
507E96:  VADD.F32        S0, S16, S0
507E9A:  STR             R3, [SP,#0x48+var_20]
507E9C:  EOR.W           R0, R0, #0x80000000
507EA0:  B               loc_507ED6
507EA2:  LDR             R3, [R5,#0x54]; jumptable 00507CF4 case 10
507EA4:  LDR             R6, [R5,#0x74]
507EA6:  CMP             R3, #5
507EA8:  IT NE
507EAA:  ADDNE           R6, #0x30 ; '0'
507EAC:  VLDR            D16, [R6]
507EB0:  VSTR            D16, [SP,#0x48+var_28]
507EB4:  VLDR            S0, [SP,#0x48+var_28]
507EB8:  LDR             R3, [R6,#8]
507EBA:  B               loc_507ECC
507EBC:  LDR             R3, [R5,#0x74]; jumptable 00507CF4 case 11
507EBE:  VLDR            D16, [R3,#0x3C]
507EC2:  VSTR            D16, [SP,#0x48+var_28]
507EC6:  VLDR            S0, [SP,#0x48+var_28]
507ECA:  LDR             R3, [R3,#0x44]
507ECC:  VADD.F32        S0, S16, S0
507ED0:  VNEG.F32        S0, S0
507ED4:  STR             R3, [SP,#0x48+var_20]
507ED6:  VSTR            S0, [SP,#0x48+var_28]
507EDA:  VMOV            S6, R0
507EDE:  VLDR            S2, [SP,#0x48+var_28+4]
507EE2:  VMOV            S8, R1
507EE6:  VLDR            S4, [SP,#0x48+var_20]
507EEA:  VMOV            S10, R2
507EEE:  VSUB.F32        S0, S0, S6
507EF2:  VSUB.F32        S2, S2, S8
507EF6:  VSUB.F32        S4, S4, S10
507EFA:  VSTR            S0, [R4]
507EFE:  VSTR            S2, [R4,#4]
507F02:  VSTR            S4, [R4,#8]
507F06:  LDR.W           R0, [R8,#0x5A4]
507F0A:  CMP             R0, #1
507F0C:  BEQ             loc_507F20
507F0E:  CMP             R0, #4
507F10:  ITTT NE
507F12:  LDRNE.W         R0, [R8,#0x388]
507F16:  LDRNE.W         R0, [R0,#0xCC]
507F1A:  ANDSNE.W        R0, R0, #8
507F1E:  BEQ             loc_507F3C
507F20:  LDR.W           R0, [R8]
507F24:  LDR.W           R1, [R0,#0xD8]
507F28:  MOV             R0, R8
507F2A:  BLX             R1
507F2C:  VLDR            S0, =0.95
507F30:  VMOV            S2, R0
507F34:  VSUB.F32        S0, S0, S2
507F38:  VSTR            S0, [R4,#8]
507F3C:  LDR.W           R1, [R8,#0x14]; CVector *
507F40:  ADD             R0, SP, #0x48+var_38; CMatrix *
507F42:  MOV             R2, R4
507F44:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
507F48:  VLDR            D16, [SP,#0x48+var_38]
507F4C:  ADD.W           R5, R8, #4
507F50:  LDR             R0, [SP,#0x48+var_30]
507F52:  ADD             R2, SP, #0x48+var_28
507F54:  STR             R0, [R4,#8]
507F56:  MOV             R0, R5
507F58:  VSTR            D16, [R4]
507F5C:  LDR.W           R1, [R8,#0x14]; CVector *
507F60:  VLDR            S0, [R4]
507F64:  CMP             R1, #0
507F66:  VLDR            S2, [R4,#4]
507F6A:  VLDR            S4, [R4,#8]
507F6E:  IT NE
507F70:  ADDNE.W         R0, R1, #0x30 ; '0'
507F74:  VLDR            S6, [R0]
507F78:  VLDR            S8, [R0,#4]
507F7C:  VLDR            S10, [R0,#8]
507F80:  VADD.F32        S0, S6, S0
507F84:  VADD.F32        S2, S8, S2
507F88:  ADD             R0, SP, #0x48+var_38; CMatrix *
507F8A:  VADD.F32        S4, S10, S4
507F8E:  VSTR            S0, [R4]
507F92:  VSTR            S2, [R4,#4]
507F96:  VSTR            S4, [R4,#8]
507F9A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
507F9E:  VLDR            D16, [SP,#0x48+var_38]
507FA2:  LDR             R0, [SP,#0x48+var_30]
507FA4:  STR             R0, [SP,#0x48+var_20]
507FA6:  VSTR            D16, [SP,#0x48+var_28]
507FAA:  LDR.W           R0, [R8,#0x14]
507FAE:  VLDR            S0, [SP,#0x48+var_28]
507FB2:  CMP             R0, #0
507FB4:  VLDR            S2, [SP,#0x48+var_28+4]
507FB8:  VLDR            S4, [SP,#0x48+var_20]
507FBC:  IT NE
507FBE:  ADDNE.W         R5, R0, #0x30 ; '0'
507FC2:  VLDR            S6, [R5]
507FC6:  VLDR            S8, [R5,#4]
507FCA:  VLDR            S10, [R5,#8]
507FCE:  VADD.F32        S0, S6, S0
507FD2:  VADD.F32        S2, S8, S2
507FD6:  VADD.F32        S4, S10, S4
507FDA:  VSTR            S0, [SP,#0x48+var_28]
507FDE:  VSTR            S2, [SP,#0x48+var_28+4]
507FE2:  VSTR            S4, [SP,#0x48+var_20]
507FE6:  ADD             SP, SP, #0x30 ; '0'
507FE8:  VPOP            {D8}
507FEC:  POP.W           {R8}
507FF0:  POP             {R4-R7,PC}
