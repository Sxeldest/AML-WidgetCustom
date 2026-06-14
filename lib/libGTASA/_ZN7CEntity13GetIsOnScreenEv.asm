; =========================================================
; Game Engine Function: _ZN7CEntity13GetIsOnScreenEv
; Address            : 0x3EC148 - 0x3EC1B6
; =========================================================

3EC148:  PUSH            {R4,R6,R7,LR}
3EC14A:  ADD             R7, SP, #8
3EC14C:  SUB             SP, SP, #0x30
3EC14E:  MOV             R4, R0
3EC150:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC15A)
3EC152:  LDRSH.W         R1, [R4,#0x26]
3EC156:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC158:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC15A:  LDR.W           R0, [R0,R1,LSL#2]
3EC15E:  LDR             R1, [R4,#0x14]
3EC160:  LDR             R0, [R0,#0x2C]
3EC162:  CMP             R1, #0
3EC164:  ADD.W           R2, R0, #0x18
3EC168:  BEQ             loc_3EC18C
3EC16A:  LDR             R0, [R2,#8]
3EC16C:  VLDR            D16, [R2]
3EC170:  ADD             R2, SP, #0x38+var_28
3EC172:  STR             R0, [SP,#0x38+var_20]
3EC174:  ADD             R0, SP, #0x38+var_18
3EC176:  VSTR            D16, [SP,#0x38+var_28]
3EC17A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EC17E:  VLDR            D16, [SP,#0x38+var_18]
3EC182:  LDR             R0, [SP,#0x38+var_10]
3EC184:  STR             R0, [SP,#0x38+var_30]
3EC186:  VSTR            D16, [SP,#0x38+var_38]
3EC18A:  B               loc_3EC194
3EC18C:  ADDS            R1, R4, #4
3EC18E:  MOV             R0, SP
3EC190:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EC194:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EC19E)
3EC196:  LDRSH.W         R1, [R4,#0x26]
3EC19A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EC19C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EC19E:  LDR.W           R0, [R0,R1,LSL#2]
3EC1A2:  LDR             R1, =(TheCamera_ptr - 0x3EC1AA)
3EC1A4:  LDR             R0, [R0,#0x2C]
3EC1A6:  ADD             R1, PC; TheCamera_ptr
3EC1A8:  LDR             R2, [R0,#0x24]; float
3EC1AA:  LDR             R0, [R1]; TheCamera ; this
3EC1AC:  MOV             R1, SP; CVector *
3EC1AE:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
3EC1B2:  ADD             SP, SP, #0x30 ; '0'
3EC1B4:  POP             {R4,R6,R7,PC}
