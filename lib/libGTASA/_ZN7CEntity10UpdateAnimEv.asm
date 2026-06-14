; =========================================================
; Game Engine Function: _ZN7CEntity10UpdateAnimEv
; Address            : 0x3EC02C - 0x3EC130
; =========================================================

3EC02C:  PUSH            {R4,R5,R7,LR}
3EC02E:  ADD             R7, SP, #8
3EC030:  SUB             SP, SP, #0x30
3EC032:  MOV             R4, R0
3EC034:  MOV             R5, R4
3EC036:  LDR.W           R1, [R5,#0x1C]!
3EC03A:  LDR.W           R0, [R5,#-4]
3EC03E:  BIC.W           R1, R1, #0x800000
3EC042:  STR             R1, [R5]
3EC044:  CMP             R0, #0
3EC046:  BEQ             loc_3EC12C
3EC048:  LDRB            R1, [R0]
3EC04A:  CMP             R1, #2
3EC04C:  BNE             loc_3EC12C
3EC04E:  BLX             j__Z35RpAnimBlendClumpGetFirstAssociationP7RpClump; RpAnimBlendClumpGetFirstAssociation(RpClump *)
3EC052:  CMP             R0, #0
3EC054:  BEQ             loc_3EC12C
3EC056:  LDRB.W          R0, [R4,#0x3A]
3EC05A:  AND.W           R0, R0, #7
3EC05E:  CMP             R0, #4
3EC060:  ITT EQ
3EC062:  LDRBEQ.W        R0, [R4,#0x140]
3EC066:  CMPEQ           R0, #4
3EC068:  BEQ             loc_3EC0AE
3EC06A:  LDR             R3, [R5]
3EC06C:  TST.W           R3, #0x20000
3EC070:  BNE             loc_3EC108
3EC072:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC07C)
3EC074:  LDRSH.W         R1, [R4,#0x26]
3EC078:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC07A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC07C:  LDR.W           R0, [R0,R1,LSL#2]
3EC080:  LDR             R1, [R4,#0x14]
3EC082:  LDR             R0, [R0,#0x2C]
3EC084:  CMP             R1, #0
3EC086:  ADD.W           R2, R0, #0x18
3EC08A:  BEQ             loc_3EC0D2
3EC08C:  LDR             R0, [R2,#8]
3EC08E:  VLDR            D16, [R2]
3EC092:  ADD             R2, SP, #0x38+var_28
3EC094:  STR             R0, [SP,#0x38+var_20]
3EC096:  ADD             R0, SP, #0x38+var_18
3EC098:  VSTR            D16, [SP,#0x38+var_28]
3EC09C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EC0A0:  VLDR            D16, [SP,#0x38+var_18]
3EC0A4:  LDR             R0, [SP,#0x38+var_10]
3EC0A6:  STR             R0, [SP,#0x38+var_30]
3EC0A8:  VSTR            D16, [SP,#0x38+var_38]
3EC0AC:  B               loc_3EC0DA
3EC0AE:  LDR             R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x3EC0BA)
3EC0B0:  MOVS            R2, #1
3EC0B2:  VLDR            S0, =50.0
3EC0B6:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
3EC0B8:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
3EC0BA:  VLDR            S2, [R0]
3EC0BE:  LDR             R0, [R4,#0x18]
3EC0C0:  VDIV.F32        S0, S2, S0
3EC0C4:  VMOV            R1, S0
3EC0C8:  ADD             SP, SP, #0x30 ; '0'
3EC0CA:  POP.W           {R4,R5,R7,LR}
3EC0CE:  B.W             j_j__Z32RpAnimBlendClumpUpdateAnimationsP7RpClumpfb; j_RpAnimBlendClumpUpdateAnimations(RpClump *,float,bool)
3EC0D2:  ADDS            R1, R4, #4
3EC0D4:  MOV             R0, SP
3EC0D6:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EC0DA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC0E4)
3EC0DC:  LDRSH.W         R1, [R4,#0x26]
3EC0E0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC0E2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC0E4:  LDR.W           R0, [R0,R1,LSL#2]
3EC0E8:  LDR             R1, =(TheCamera_ptr - 0x3EC0F0)
3EC0EA:  LDR             R0, [R0,#0x2C]
3EC0EC:  ADD             R1, PC; TheCamera_ptr
3EC0EE:  LDR             R2, [R0,#0x24]; float
3EC0F0:  LDR             R0, [R1]; TheCamera ; this
3EC0F2:  MOV             R1, SP; CVector *
3EC0F4:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
3EC0F8:  LDR             R1, [R5]
3EC0FA:  EOR.W           R0, R0, #1
3EC0FE:  BIC.W           R1, R1, #0x20000
3EC102:  ORR.W           R3, R1, R0,LSL#17
3EC106:  STR             R3, [R5]
3EC108:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3EC116)
3EC10A:  MOVS            R2, #0
3EC10C:  VLDR            S0, =50.0
3EC110:  LSLS            R3, R3, #0xE
3EC112:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3EC114:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3EC116:  VLDR            S2, [R0]
3EC11A:  LDR             R0, [R4,#0x18]
3EC11C:  IT PL
3EC11E:  MOVPL           R2, #1
3EC120:  VDIV.F32        S0, S2, S0
3EC124:  VMOV            R1, S0
3EC128:  BLX             j__Z32RpAnimBlendClumpUpdateAnimationsP7RpClumpfb; RpAnimBlendClumpUpdateAnimations(RpClump *,float,bool)
3EC12C:  ADD             SP, SP, #0x30 ; '0'
3EC12E:  POP             {R4,R5,R7,PC}
