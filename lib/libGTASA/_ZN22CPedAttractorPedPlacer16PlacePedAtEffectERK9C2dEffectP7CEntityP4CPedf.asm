; =========================================================
; Game Engine Function: _ZN22CPedAttractorPedPlacer16PlacePedAtEffectERK9C2dEffectP7CEntityP4CPedf
; Address            : 0x4AC186 - 0x4AC2E8
; =========================================================

4AC186:  PUSH            {R4-R7,LR}
4AC188:  ADD             R7, SP, #0xC
4AC18A:  PUSH.W          {R8,R9,R11}
4AC18E:  VPUSH           {D8-D13}
4AC192:  SUB             SP, SP, #0x70; float
4AC194:  VMOV            S16, R3
4AC198:  MOV             R6, R1
4AC19A:  MOV             R5, R0
4AC19C:  MOVS            R0, #0
4AC19E:  MOV             R4, R2
4AC1A0:  CMP             R6, #0
4AC1A2:  STRD.W          R0, R0, [SP,#0xB8+var_68]
4AC1A6:  BEQ             loc_4AC1C4
4AC1A8:  LDR             R1, [R6,#0x14]
4AC1AA:  CBNZ            R1, loc_4AC1BC
4AC1AC:  MOV             R0, R6; this
4AC1AE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4AC1B2:  LDR             R1, [R6,#0x14]; CMatrix *
4AC1B4:  ADDS            R0, R6, #4; this
4AC1B6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4AC1BA:  LDR             R1, [R6,#0x14]
4AC1BC:  ADD             R0, SP, #0xB8+var_A8
4AC1BE:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4AC1C2:  B               loc_4AC1CA
4AC1C4:  ADD             R0, SP, #0xB8+var_A8; this
4AC1C6:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
4AC1CA:  ADD             R6, SP, #0xB8+var_A8
4AC1CC:  ADD             R0, SP, #0xB8+var_B4; this
4AC1CE:  MOV             R2, R5; CVector *
4AC1D0:  MOV             R1, R6; CMatrix *
4AC1D2:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
4AC1D6:  LDR             R0, [R5,#0x24]
4AC1D8:  ADD             R2, SP, #0xB8+var_60
4AC1DA:  VLDR            D16, [R5,#0x1C]
4AC1DE:  MOV             R1, R6; CVector *
4AC1E0:  STR             R0, [SP,#0xB8+var_58]
4AC1E2:  ADD             R0, SP, #0xB8+var_54; CMatrix *
4AC1E4:  VSTR            D16, [SP,#0xB8+var_60]
4AC1E8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4AC1EC:  LDR             R0, [R5,#0x30]
4AC1EE:  ADD             R2, SP, #0xB8+var_60
4AC1F0:  VLDR            D16, [R5,#0x28]
4AC1F4:  MOV             R1, R6; CVector *
4AC1F6:  STR             R0, [SP,#0xB8+var_58]
4AC1F8:  ADD             R0, SP, #0xB8+var_54; CMatrix *
4AC1FA:  VLDR            S18, [SP,#0xB8+var_54]
4AC1FE:  VLDR            S20, [SP,#0xB8+var_50]
4AC202:  VSTR            D16, [SP,#0xB8+var_60]
4AC206:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4AC20A:  LDR             R0, [R5,#0x18]
4AC20C:  ADD             R2, SP, #0xB8+var_60
4AC20E:  VLDR            D16, [R5,#0x10]
4AC212:  MOV             R1, R6; CVector *
4AC214:  STR             R0, [SP,#0xB8+var_58]
4AC216:  ADD             R0, SP, #0xB8+var_54; CMatrix *
4AC218:  VLDR            S22, [SP,#0xB8+var_54]
4AC21C:  VLDR            S24, [SP,#0xB8+var_50]
4AC220:  VLDR            S26, [SP,#0xB8+var_4C]
4AC224:  VSTR            D16, [SP,#0xB8+var_60]
4AC228:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4AC22C:  VMUL.F32        S0, S22, S16
4AC230:  VLDR            S6, [SP,#0xB8+var_B4]
4AC234:  VMUL.F32        S2, S24, S16
4AC238:  VLDR            S8, [SP,#0xB8+var_B0]
4AC23C:  VMUL.F32        S4, S26, S16
4AC240:  VLDR            S10, [SP,#0xB8+var_AC]
4AC244:  ADD             R0, SP, #0xB8+var_54; this
4AC246:  VADD.F32        S0, S0, S6
4AC24A:  VADD.F32        S2, S2, S8
4AC24E:  VADD.F32        S4, S4, S10
4AC252:  VSTR            S0, [SP,#0xB8+var_54]
4AC256:  VSTR            S2, [SP,#0xB8+var_50]
4AC25A:  VSTR            S4, [SP,#0xB8+var_4C]
4AC25E:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
4AC262:  LDRD.W          R2, R1, [SP,#0xB8+var_54]
4AC266:  LDR             R3, [R4,#0x14]
4AC268:  LDR             R0, [SP,#0xB8+var_4C]
4AC26A:  CBZ             R3, loc_4AC278
4AC26C:  STR             R2, [R3,#0x30]
4AC26E:  LDR             R2, [R4,#0x14]
4AC270:  STR             R1, [R2,#0x34]
4AC272:  LDR             R1, [R4,#0x14]
4AC274:  ADDS            R1, #0x38 ; '8'
4AC276:  B               loc_4AC280
4AC278:  STRD.W          R2, R1, [R4,#4]
4AC27C:  ADD.W           R1, R4, #0xC
4AC280:  VMOV            R5, S18
4AC284:  STR             R0, [R1]
4AC286:  VMOV            R6, S20
4AC28A:  MOVS            R2, #0; float
4AC28C:  MOVS            R3, #0; float
4AC28E:  MOV             R0, R5; this
4AC290:  MOV             R1, R6; float
4AC292:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4AC296:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4AC29A:  MOV             R1, R0
4AC29C:  ADDW            R8, R4, #0x55C
4AC2A0:  STR.W           R1, [R4,#0x55C]
4AC2A4:  VMOV            S0, R1; x
4AC2A8:  STR.W           R1, [R4,#0x560]
4AC2AC:  ADD.W           R9, R4, #0x560
4AC2B0:  LDR             R0, [R4,#0x14]; this
4AC2B2:  CBZ             R0, loc_4AC2BA
4AC2B4:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
4AC2B8:  B               loc_4AC2BE
4AC2BA:  VSTR            S0, [R4,#0x10]
4AC2BE:  MOV             R0, R5; this
4AC2C0:  MOV             R1, R6; float
4AC2C2:  MOVS            R2, #0; float
4AC2C4:  MOVS            R3, #0; float
4AC2C6:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4AC2CA:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4AC2CE:  STR.W           R0, [R9]
4AC2D2:  STR.W           R0, [R8]
4AC2D6:  ADD             R0, SP, #0xB8+var_A8; this
4AC2D8:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4AC2DC:  ADD             SP, SP, #0x70 ; 'p'
4AC2DE:  VPOP            {D8-D13}
4AC2E2:  POP.W           {R8,R9,R11}
4AC2E6:  POP             {R4-R7,PC}
