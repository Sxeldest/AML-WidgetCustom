; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity14SetPedPositionEP4CPed
; Address            : 0x541EA8 - 0x542100
; =========================================================

541EA8:  PUSH            {R4-R7,LR}
541EAA:  ADD             R7, SP, #0xC
541EAC:  PUSH.W          {R8}
541EB0:  SUB             SP, SP, #0x58
541EB2:  MOV             R4, R0
541EB4:  MOV             R5, R1
541EB6:  LDR             R0, [R4]
541EB8:  LDR             R1, [R0,#0x14]
541EBA:  MOV             R0, R4
541EBC:  BLX             R1
541EBE:  CMP.W           R0, #0x134
541EC2:  BNE             loc_541EDE
541EC4:  LDR             R0, [R4,#0x38]
541EC6:  CBZ             R0, loc_541EDA
541EC8:  VLDR            S0, [R4,#0x3C]
541ECC:  VLDR            S2, [R0,#0x20]
541ED0:  VCMPE.F32       S2, S0
541ED4:  VMRS            APSR_nzcv, FPSCR
541ED8:  BGE             loc_541EF8
541EDA:  MOVS            R6, #0
541EDC:  B               loc_5420F6
541EDE:  LDR             R0, [R4]
541EE0:  LDR             R1, [R0,#0x14]
541EE2:  MOV             R0, R4
541EE4:  BLX             R1
541EE6:  MOVW            R1, #0x135
541EEA:  CMP             R0, R1
541EEC:  ITT EQ
541EEE:  LDRBEQ.W        R0, [R4,#0x35]
541EF2:  CMPEQ           R0, #0
541EF4:  BEQ.W           loc_542014
541EF8:  LDR             R0, [R4,#8]
541EFA:  CBZ             R0, loc_541F3E
541EFC:  LDR             R1, [R5,#0x1C]
541EFE:  LDRD.W          R2, R3, [R0,#0x1C]
541F02:  LSRS            R1, R1, #7
541F04:  BFI.W           R2, R1, #7, #1
541F08:  STRD.W          R2, R3, [R0,#0x1C]
541F0C:  LDRB.W          R0, [R5,#0x48D]
541F10:  LSLS            R0, R0, #0x1D
541F12:  BMI             loc_541F52
541F14:  LDR             R1, [R5,#0x14]
541F16:  LDR             R0, [R4,#8]
541F18:  ADD.W           R3, R1, #0x30 ; '0'
541F1C:  CMP             R1, #0
541F1E:  LDR             R2, [R0,#0x14]
541F20:  IT EQ
541F22:  ADDEQ           R3, R5, #4
541F24:  LDRD.W          R6, R5, [R3]
541F28:  LDR             R1, [R3,#8]
541F2A:  CMP             R2, #0
541F2C:  BEQ.W           loc_5420B2
541F30:  STR             R6, [R2,#0x30]
541F32:  LDR             R2, [R0,#0x14]
541F34:  STR             R5, [R2,#0x34]
541F36:  LDR             R0, [R0,#0x14]
541F38:  ADDS            R0, #0x38 ; '8'
541F3A:  STR             R1, [R0]
541F3C:  B               loc_5420D4
541F3E:  LDR             R0, [R4]
541F40:  MOV             R1, R5
541F42:  MOVS            R2, #1
541F44:  MOVS            R3, #0
541F46:  MOVS            R6, #0
541F48:  LDR.W           R12, [R0,#0x1C]
541F4C:  MOV             R0, R4
541F4E:  BLX             R12
541F50:  B               loc_5420F6
541F52:  LDRB            R0, [R4,#0x19]
541F54:  LSLS            R0, R0, #0x1B
541F56:  BMI             loc_542040
541F58:  VLDR            D16, [R4,#0xC]
541F5C:  ADD             R2, SP, #0x68+var_20
541F5E:  LDR             R0, [R4,#0x14]
541F60:  STR             R0, [SP,#0x68+var_18]
541F62:  MOV             R0, SP; CMatrix *
541F64:  VSTR            D16, [SP,#0x68+var_20]
541F68:  LDR             R1, [R5,#0x14]; CVector *
541F6A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
541F6E:  VLDR            D16, [SP,#0x68+var_68]
541F72:  LDR             R0, [SP,#0x68+var_60]
541F74:  STR             R0, [SP,#0x68+var_18]
541F76:  VSTR            D16, [SP,#0x68+var_20]
541F7A:  LDR             R0, [R5,#0x18]
541F7C:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
541F80:  MOV             R6, R0
541F82:  LDRB            R0, [R4,#0x18]
541F84:  ADD.W           R0, R5, R0,LSL#2
541F88:  LDR.W           R0, [R0,#0x494]
541F8C:  LDR             R1, [R0,#0x14]
541F8E:  MOV             R0, R6
541F90:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
541F94:  MOV             R8, R0
541F96:  MOV             R0, R6
541F98:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
541F9C:  ADD.W           R0, R0, R8,LSL#6
541FA0:  VLDR            S0, [SP,#0x68+var_20]
541FA4:  VLDR            S2, [SP,#0x68+var_20+4]
541FA8:  VLDR            S6, [R0,#0x30]
541FAC:  VLDR            S8, [R0,#0x34]
541FB0:  VLDR            S10, [R0,#0x38]
541FB4:  VADD.F32        S0, S6, S0
541FB8:  VLDR            S4, [SP,#0x68+var_18]
541FBC:  VADD.F32        S2, S8, S2
541FC0:  MOV             R0, SP; this
541FC2:  VADD.F32        S4, S10, S4
541FC6:  VSTR            S0, [SP,#0x68+var_20]
541FCA:  VSTR            S2, [SP,#0x68+var_20+4]
541FCE:  VSTR            S4, [SP,#0x68+var_18]
541FD2:  LDR             R1, [R5,#0x14]; CMatrix *
541FD4:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
541FD8:  LDR             R1, [R4,#0x1C]; x
541FDA:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
541FDE:  LDR             R5, [R4,#8]
541FE0:  LDR             R0, [R5,#0x14]
541FE2:  CBNZ            R0, loc_541FF4
541FE4:  MOV             R0, R5; this
541FE6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
541FEA:  LDR             R1, [R5,#0x14]; CMatrix *
541FEC:  ADDS            R0, R5, #4; this
541FEE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
541FF2:  LDR             R0, [R5,#0x14]
541FF4:  MOV             R1, SP
541FF6:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
541FFA:  LDR             R1, [R4,#8]
541FFC:  LDRD.W          R3, R2, [SP,#0x68+var_20]
542000:  LDR             R0, [SP,#0x68+var_18]
542002:  LDR             R6, [R1,#0x14]
542004:  CMP             R6, #0
542006:  BEQ             loc_5420BC
542008:  STR             R3, [R6,#0x30]
54200A:  LDR             R3, [R1,#0x14]
54200C:  STR             R2, [R3,#0x34]
54200E:  LDR             R1, [R1,#0x14]
542010:  ADDS            R1, #0x38 ; '8'
542012:  B               loc_5420C2
542014:  LDR             R0, [R4,#0x38]
542016:  CBZ             R0, loc_54202C
542018:  VLDR            S0, [R4,#0x3C]
54201C:  VLDR            S2, [R0,#0x20]
542020:  VCMPE.F32       S2, S0
542024:  VMRS            APSR_nzcv, FPSCR
542028:  BLE.W           loc_541EF8
54202C:  LDR             R0, [R4,#8]
54202E:  MOVS            R6, #0
542030:  CMP             R0, #0
542032:  BEQ             loc_5420F6
542034:  MOV             R0, R4; this
542036:  MOV             R1, R5; CPed *
542038:  MOVS            R2, #0; bool
54203A:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
54203E:  B               loc_5420F6
542040:  VLDR            D16, [R4,#0xC]
542044:  LDR             R0, [R4,#0x14]
542046:  STR             R0, [SP,#0x68+var_60]
542048:  VSTR            D16, [SP,#0x68+var_68]
54204C:  LDR             R0, [R5,#0x18]
54204E:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
542052:  MOV             R6, R0
542054:  LDRB            R0, [R4,#0x18]
542056:  ADD.W           R0, R5, R0,LSL#2
54205A:  LDR.W           R0, [R0,#0x494]
54205E:  LDR             R1, [R0,#0x14]
542060:  MOV             R0, R6
542062:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
542066:  MOV             R5, R0
542068:  MOV             R0, R6
54206A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
54206E:  ADD.W           R5, R0, R5,LSL#6
542072:  MOV             R0, SP
542074:  MOV             R1, R0
542076:  MOVS            R2, #1
542078:  MOV             R3, R5
54207A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
54207E:  LDR             R6, [R4,#8]
542080:  LDR             R0, [R6,#0x14]
542082:  CBNZ            R0, loc_542094
542084:  MOV             R0, R6; this
542086:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
54208A:  LDR             R1, [R6,#0x14]; CMatrix *
54208C:  ADDS            R0, R6, #4; this
54208E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
542092:  LDR             R0, [R6,#0x14]
542094:  MOV             R1, R5
542096:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
54209A:  LDR             R1, [R4,#8]
54209C:  LDRD.W          R3, R2, [SP,#0x68+var_68]
5420A0:  LDR             R0, [SP,#0x68+var_60]
5420A2:  LDR             R6, [R1,#0x14]
5420A4:  CBZ             R6, loc_5420CC
5420A6:  STR             R3, [R6,#0x30]
5420A8:  LDR             R3, [R1,#0x14]
5420AA:  STR             R2, [R3,#0x34]
5420AC:  LDR             R1, [R1,#0x14]
5420AE:  ADDS            R1, #0x38 ; '8'
5420B0:  B               loc_5420D2
5420B2:  STRD.W          R6, R5, [R0,#4]
5420B6:  ADDS            R0, #0xC
5420B8:  STR             R1, [R0]
5420BA:  B               loc_5420D4
5420BC:  STRD.W          R3, R2, [R1,#4]
5420C0:  ADDS            R1, #0xC
5420C2:  STR             R0, [R1]
5420C4:  MOV             R0, SP; this
5420C6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5420CA:  B               loc_5420D4
5420CC:  STRD.W          R3, R2, [R1,#4]
5420D0:  ADDS            R1, #0xC
5420D2:  STR             R0, [R1]
5420D4:  LDR             R2, [R4,#8]
5420D6:  LDR             R0, [R2,#0x18]
5420D8:  CBZ             R0, loc_5420EE
5420DA:  LDR             R1, [R0,#4]
5420DC:  LDR             R0, [R2,#0x14]
5420DE:  ADDS            R1, #0x10
5420E0:  CBZ             R0, loc_5420E8
5420E2:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5420E6:  B               loc_5420EE
5420E8:  ADDS            R0, R2, #4
5420EA:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
5420EE:  LDR             R0, [R4,#8]; this
5420F0:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
5420F4:  MOVS            R6, #1
5420F6:  MOV             R0, R6
5420F8:  ADD             SP, SP, #0x58 ; 'X'
5420FA:  POP.W           {R8}
5420FE:  POP             {R4-R7,PC}
