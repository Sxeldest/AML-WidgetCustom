; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePed14ControlSubTaskEP4CPed
; Address            : 0x535E14 - 0x5362B4
; =========================================================

535E14:  PUSH            {R4-R7,LR}
535E16:  ADD             R7, SP, #0xC
535E18:  PUSH.W          {R8-R11}
535E1C:  SUB             SP, SP, #4
535E1E:  VPUSH           {D8-D12}
535E22:  SUB             SP, SP, #0x20
535E24:  MOV             R4, R0
535E26:  MOV             R9, R1
535E28:  LDR             R0, [R4,#0xC]
535E2A:  CMP             R0, #0
535E2C:  BEQ.W           loc_53605C
535E30:  LDR.W           R0, [R9,#0x18]
535E34:  MOVS            R1, #0
535E36:  MOVS            R6, #0
535E38:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
535E3C:  MOV             R8, R0
535E3E:  LDR             R0, [R4,#0xC]
535E40:  MOVS            R1, #0
535E42:  LDR             R0, [R0,#0x18]
535E44:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
535E48:  MOV             R5, R0
535E4A:  LDR             R0, [R4,#0xC]
535E4C:  LDR.W           R0, [R0,#0x440]; this
535E50:  BLX             j__ZNK16CPedIntelligence24GetMoveStateFromGoToTaskEv; CPedIntelligence::GetMoveStateFromGoToTask(void)
535E54:  MOV             R11, R0
535E56:  LDR.W           R0, [R9,#0x14]
535E5A:  ADD.W           R10, R9, #4
535E5E:  VLDR            S22, =0.0
535E62:  CMP             R0, #0
535E64:  MOV             R1, R10
535E66:  IT NE
535E68:  ADDNE.W         R1, R0, #0x30 ; '0'
535E6C:  LDR             R0, [R4,#0xC]
535E6E:  VLDR            S0, [R1]
535E72:  VLDR            S2, [R1,#4]
535E76:  LDR             R1, [R0,#0x14]
535E78:  ADD.W           R2, R1, #0x30 ; '0'
535E7C:  CMP             R1, #0
535E7E:  IT EQ
535E80:  ADDEQ           R2, R0, #4
535E82:  VLDR            S4, [R2]
535E86:  VLDR            S6, [R2,#4]
535E8A:  VSUB.F32        S18, S4, S0
535E8E:  VSUB.F32        S16, S6, S2
535E92:  VMUL.F32        S2, S18, S18
535E96:  VMUL.F32        S0, S16, S16
535E9A:  VADD.F32        S0, S2, S0
535E9E:  VLDR            S2, [R4,#0x10]
535EA2:  VMUL.F32        S2, S2, S2
535EA6:  VADD.F32        S20, S0, S22
535EAA:  VCMPE.F32       S20, S2
535EAE:  VMRS            APSR_nzcv, FPSCR
535EB2:  BGT.W           loc_5362A4
535EB6:  LDR             R0, [R4,#8]
535EB8:  LDR             R1, [R0]
535EBA:  LDR             R1, [R1,#0x14]
535EBC:  BLX             R1
535EBE:  MOVW            R1, #0x38B
535EC2:  CMP             R0, R1
535EC4:  BNE.W           loc_536074
535EC8:  STRD.W          R8, R5, [SP,#0x68+var_64]
535ECC:  MOV             R6, R4
535ECE:  LDR.W           R0, [R6,#0x14]!
535ED2:  LDR.W           R1, [R9,#0x440]
535ED6:  LDR.W           R2, [R6,#-0xC]
535EDA:  LDRD.W          R3, R5, [R6,#4]
535EDE:  LDR.W           R1, [R1,#0x278]
535EE2:  STR             R1, [SP,#0x68+var_5C]
535EE4:  ADD.W           R1, R2, #0x44 ; 'D'
535EE8:  STM             R1!, {R0,R3,R5}
535EEA:  MOVS            R0, #0x40400000
535EF0:  STR             R0, [R2,#0x20]
535EF2:  MOVW            R1, #0x38A; int
535EF6:  LDR.W           R0, [R9,#0x440]
535EFA:  ADDS            R0, #4; this
535EFC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
535F00:  MOV             R8, R0
535F02:  LDR.W           R0, [R9,#0x440]
535F06:  MOV.W           R1, #0x384; int
535F0A:  ADDS            R0, #4; this
535F0C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
535F10:  MOV             R5, R0
535F12:  MOV.W           LR, #0
535F16:  CMP.W           R8, #0
535F1A:  BNE.W           loc_53607E
535F1E:  CMP             R5, #0
535F20:  MOV.W           R8, #0
535F24:  BEQ.W           loc_5361E6
535F28:  LDR             R0, [R4,#0xC]
535F2A:  MOV             R2, R6
535F2C:  LDR             R1, [R0,#0x14]
535F2E:  ADD             R0, SP, #0x68+var_58
535F30:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
535F34:  LDR.W           R0, [R9,#0x14]
535F38:  MOV.W           LR, #0
535F3C:  CMP             R0, #0
535F3E:  IT NE
535F40:  ADDNE.W         R10, R0, #0x30 ; '0'
535F44:  CMP.W           R11, #7
535F48:  BHI.W           loc_5360CC
535F4C:  MOVS            R0, #1
535F4E:  MOV.W           R8, #0
535F52:  LSL.W           R0, R0, R11
535F56:  TST.W           R0, #0xD0
535F5A:  BEQ.W           loc_536178
535F5E:  LDR             R0, [R4,#0xC]
535F60:  VLDR            S0, [SP,#0x68+var_58]
535F64:  VLDR            S2, [SP,#0x68+var_58+4]
535F68:  LDR             R0, [R0,#0x14]
535F6A:  VLDR            S4, [R10]
535F6E:  VLDR            S14, [R10,#4]
535F72:  VLDR            S6, [R0,#0x10]
535F76:  VLDR            S10, [R0,#0x14]
535F7A:  VMUL.F32        S3, S0, S6
535F7E:  VLDR            S8, [R0,#0x18]
535F82:  VMUL.F32        S1, S2, S10
535F86:  VLDR            S12, [SP,#0x68+var_50]
535F8A:  VMUL.F32        S5, S14, S10
535F8E:  VLDR            S9, [R10,#8]
535F92:  VMUL.F32        S7, S4, S6
535F96:  VMUL.F32        S11, S12, S8
535F9A:  VADD.F32        S1, S3, S1
535F9E:  VMUL.F32        S3, S9, S8
535FA2:  VADD.F32        S5, S7, S5
535FA6:  VADD.F32        S1, S1, S11
535FAA:  VADD.F32        S3, S5, S3
535FAE:  VSUB.F32        S1, S3, S1
535FB2:  VCMPE.F32       S1, #0.0
535FB6:  VMRS            APSR_nzcv, FPSCR
535FBA:  BGE.W           loc_536162
535FBE:  VSUB.F32        S14, S2, S14
535FC2:  LDR             R6, [SP,#0x68+var_64]
535FC4:  VSUB.F32        S4, S0, S4
535FC8:  CMP             R6, #0
535FCA:  VMUL.F32        S14, S14, S14
535FCE:  VMUL.F32        S4, S4, S4
535FD2:  VADD.F32        S4, S4, S14
535FD6:  VADD.F32        S4, S4, S22
535FDA:  BEQ             loc_53600E
535FDC:  VMOV.F32        S14, #2.0
535FE0:  VCMPE.F32       S4, S14
535FE4:  VMRS            APSR_nzcv, FPSCR
535FE8:  BGE             loc_53600E
535FEA:  VADD.F32        S10, S10, S10
535FEE:  VADD.F32        S6, S6, S6
535FF2:  VADD.F32        S8, S8, S8
535FF6:  VADD.F32        S2, S10, S2
535FFA:  VADD.F32        S0, S0, S6
535FFE:  VADD.F32        S6, S8, S12
536002:  VSTR            S2, [SP,#0x68+var_58+4]
536006:  VSTR            S0, [SP,#0x68+var_58]
53600A:  VSTR            S6, [SP,#0x68+var_50]
53600E:  LDR.W           R8, [SP,#0x68+var_60]
536012:  CBZ             R6, loc_536084
536014:  VLDR            S0, =0.0625
536018:  VCMPE.F32       S4, S0
53601C:  VMRS            APSR_nzcv, FPSCR
536020:  BGE             loc_536084
536022:  VLDR            S0, =-0.0125
536026:  CMP.W           R8, #0
53602A:  VLDR            S2, [R6,#0x24]
53602E:  VLDR            S4, =0.85
536032:  VADD.F32        S0, S2, S0
536036:  VMAX.F32        D0, D0, D2
53603A:  VSTR            S0, [R6,#0x24]
53603E:  BEQ.W           loc_536170
536042:  VLDR            S0, =0.0125
536046:  VMOV.F32        S4, #1.25
53604A:  VLDR            S2, [R8,#0x24]
53604E:  VADD.F32        S0, S2, S0
536052:  VMIN.F32        D0, D0, D2
536056:  VSTR            S0, [R8,#0x24]
53605A:  B               loc_536158
53605C:  LDR             R0, [R4,#8]
53605E:  MOVS            R2, #1
536060:  MOVS            R3, #0
536062:  MOVS            R6, #0
536064:  LDR             R1, [R0]
536066:  LDR             R5, [R1,#0x1C]
536068:  MOV             R1, R9
53606A:  BLX             R5
53606C:  CMP             R0, #0
53606E:  IT EQ
536070:  LDREQ           R6, [R4,#8]
536072:  B               loc_5362A4
536074:  MOV.W           LR, #0
536078:  MOV.W           R8, #0
53607C:  B               loc_53623C
53607E:  MOV.W           R8, #0
536082:  B               loc_5361E6
536084:  CBZ             R6, loc_5360D2
536086:  VLDR            S0, =0.0625
53608A:  VCMPE.F32       S4, S0
53608E:  VMRS            APSR_nzcv, FPSCR
536092:  BLE             loc_5360D2
536094:  VLDR            S0, =0.0125
536098:  VMOV.F32        S4, #1.25
53609C:  VLDR            S2, [R6,#0x24]
5360A0:  CMP.W           R8, #0
5360A4:  VADD.F32        S0, S2, S0
5360A8:  VMIN.F32        D0, D0, D2
5360AC:  VSTR            S0, [R6,#0x24]
5360B0:  BEQ             loc_536170
5360B2:  VLDR            S0, =-0.0125
5360B6:  VLDR            S2, [R8,#0x24]
5360BA:  VLDR            S4, =0.85
5360BE:  VADD.F32        S0, S2, S0
5360C2:  VMAX.F32        D0, D0, D2
5360C6:  VSTR            S0, [R8,#0x24]
5360CA:  B               loc_536158
5360CC:  MOV.W           R8, #0
5360D0:  B               loc_536178
5360D2:  CMP             R6, #0
5360D4:  BEQ             loc_536162
5360D6:  MOV             R0, R9; this
5360D8:  MOV             R1, R6; CAnimBlendAssociation *
5360DA:  VLDR            S24, [R6,#0x24]
5360DE:  BLX             j__ZN4CPed16SetMoveAnimSpeedEP21CAnimBlendAssociation; CPed::SetMoveAnimSpeed(CAnimBlendAssociation *)
5360E2:  VLDR            S0, [R6,#0x24]
5360E6:  VLDR            S22, =0.013
5360EA:  VSUB.F32        S2, S24, S0
5360EE:  VABS.F32        S2, S2
5360F2:  VCMPE.F32       S2, S22
5360F6:  VMRS            APSR_nzcv, FPSCR
5360FA:  BLT             loc_536112
5360FC:  VCMPE.F32       S24, S0
536100:  VMRS            APSR_nzcv, FPSCR
536104:  ITE LE
536106:  VLDRLE          S0, =0.0125
53610A:  VLDRGT          S0, =-0.0125
53610E:  VADD.F32        S24, S24, S0
536112:  CMP.W           R8, #0
536116:  VSTR            S24, [R6,#0x24]
53611A:  BEQ             loc_536170
53611C:  LDR             R0, [R4,#0xC]; this
53611E:  MOV             R1, R8; CAnimBlendAssociation *
536120:  VLDR            S24, [R8,#0x24]
536124:  BLX             j__ZN4CPed16SetMoveAnimSpeedEP21CAnimBlendAssociation; CPed::SetMoveAnimSpeed(CAnimBlendAssociation *)
536128:  VLDR            S0, [R8,#0x24]
53612C:  VSUB.F32        S2, S24, S0
536130:  VABS.F32        S2, S2
536134:  VCMPE.F32       S2, S22
536138:  VMRS            APSR_nzcv, FPSCR
53613C:  BLT             loc_536154
53613E:  VCMPE.F32       S24, S0
536142:  VMRS            APSR_nzcv, FPSCR
536146:  ITE LE
536148:  VLDRLE          S0, =0.0125
53614C:  VLDRGT          S0, =-0.0125
536150:  VADD.F32        S24, S24, S0
536154:  VSTR            S24, [R8,#0x24]
536158:  MOV.W           LR, #1
53615C:  MOV.W           R8, #1
536160:  B               loc_536178
536162:  MOV.W           LR, #0
536166:  MOV.W           R8, #0
53616A:  B               loc_536178
53616C:  DCFS 0.0
536170:  MOV.W           R8, #1
536174:  MOV.W           LR, #0
536178:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x536182)
53617A:  VLDR            S2, [SP,#0x68+var_58]
53617E:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
536180:  VLDR            S4, [R5,#0xC]
536184:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
536186:  VCMP.F32        S4, S2
53618A:  VMRS            APSR_nzcv, FPSCR
53618E:  VLDR            S0, [R0]
536192:  BNE             loc_5361C6
536194:  VLDR            S2, [SP,#0x68+var_58+4]
536198:  VLDR            S4, [R5,#0x10]
53619C:  VCMP.F32        S4, S2
5361A0:  VMRS            APSR_nzcv, FPSCR
5361A4:  BNE             loc_5361C6
5361A6:  VLDR            S2, [SP,#0x68+var_50]
5361AA:  VLDR            S4, [R5,#0x14]
5361AE:  VCMP.F32        S4, S2
5361B2:  VMRS            APSR_nzcv, FPSCR
5361B6:  BNE             loc_5361C6
5361B8:  VLDR            S2, [R5,#0x18]
5361BC:  VCMP.F32        S2, S0
5361C0:  VMRS            APSR_nzcv, FPSCR
5361C4:  BEQ             loc_5361E6
5361C6:  ADD.W           R0, R5, #0xC
5361CA:  VLDR            D16, [SP,#0x68+var_58]
5361CE:  LDR             R1, [SP,#0x68+var_50]
5361D0:  STR             R1, [R0,#8]
5361D2:  VSTR            D16, [R0]
5361D6:  LDRB            R0, [R5,#0x1C]
5361D8:  VSTR            S0, [R5,#0x18]
5361DC:  AND.W           R0, R0, #0xD0
5361E0:  ORR.W           R0, R0, #0x20 ; ' '
5361E4:  STRB            R0, [R5,#0x1C]
5361E6:  VMOV.F32        S0, #4.0
5361EA:  VCMPE.F32       S20, S0
5361EE:  VMRS            APSR_nzcv, FPSCR
5361F2:  BGE             loc_53623C
5361F4:  LDR             R0, [SP,#0x68+var_5C]
5361F6:  CMP             R0, #9
5361F8:  BLT             loc_53623C
5361FA:  LDR             R0, [R4,#8]
5361FC:  MOVS            R2, #1
5361FE:  MOVS            R3, #0
536200:  MOV.W           R10, #0
536204:  MOV             R5, LR
536206:  LDR             R1, [R0]
536208:  LDR             R6, [R1,#0x1C]
53620A:  MOV             R1, R9
53620C:  BLX             R6
53620E:  MOV             LR, R5
536210:  CMP             R0, #1
536212:  BNE             loc_53623C
536214:  MOVS            R0, #dword_20; this
536216:  VSTR            S18, [R4,#0x14]
53621A:  VSTR            S16, [R4,#0x18]
53621E:  STR.W           R10, [R4,#0x1C]
536222:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
536226:  MOV             R6, R0
536228:  MOV.W           R0, #0x41000000
53622C:  STR             R0, [SP,#0x68+var_68]; float
53622E:  MOV             R0, R6; this
536230:  MOVS            R1, #0xA; int
536232:  MOVS            R2, #0; bool
536234:  MOVS            R3, #0; bool
536236:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
53623A:  B               loc_5362A4
53623C:  LDR.W           R5, [R9,#0x490]
536240:  MOV             R12, #0xFFFEFFFF
536244:  LDR.W           R2, [R9,#0x484]
536248:  MOV.W           R1, #0xFFFFFFFF
53624C:  LDR.W           R3, [R9,#0x488]
536250:  AND.W           R5, R5, R12
536254:  LDR.W           R6, [R9,#0x48C]
536258:  ANDS            R2, R1
53625A:  ANDS            R3, R1
53625C:  STR.W           R2, [R9,#0x484]
536260:  ANDS            R6, R1
536262:  STR.W           R3, [R9,#0x488]
536266:  ORR.W           R5, R5, R8,LSL#16
53626A:  STR.W           R6, [R9,#0x48C]
53626E:  STR.W           R5, [R9,#0x490]
536272:  LDR             R2, [R4,#0xC]
536274:  LDR.W           R0, [R2,#0x490]
536278:  LDR.W           R3, [R2,#0x484]
53627C:  LDR.W           R6, [R2,#0x488]
536280:  AND.W           R0, R0, R12
536284:  LDR.W           R5, [R2,#0x48C]
536288:  ANDS            R3, R1
53628A:  ANDS            R6, R1
53628C:  STR.W           R3, [R2,#0x484]
536290:  ANDS            R1, R5
536292:  STR.W           R6, [R2,#0x488]
536296:  ORR.W           R0, R0, LR,LSL#16
53629A:  STR.W           R1, [R2,#0x48C]
53629E:  STR.W           R0, [R2,#0x490]
5362A2:  LDR             R6, [R4,#8]
5362A4:  MOV             R0, R6
5362A6:  ADD             SP, SP, #0x20 ; ' '
5362A8:  VPOP            {D8-D12}
5362AC:  ADD             SP, SP, #4
5362AE:  POP.W           {R8-R11}
5362B2:  POP             {R4-R7,PC}
