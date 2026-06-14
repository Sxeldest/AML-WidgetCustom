; =========================================================
; Game Engine Function: _ZN7CEntity9IsVisibleEv
; Address            : 0x3ED50C - 0x3ED58A
; =========================================================

3ED50C:  PUSH            {R4,R6,R7,LR}
3ED50E:  ADD             R7, SP, #8
3ED510:  SUB             SP, SP, #0x30
3ED512:  MOV             R4, R0
3ED514:  LDR             R0, [R4,#0x18]
3ED516:  CBZ             R0, loc_3ED51E
3ED518:  LDRB            R0, [R4,#0x1C]
3ED51A:  LSLS            R0, R0, #0x18
3ED51C:  BMI             loc_3ED524
3ED51E:  MOVS            R0, #0
3ED520:  ADD             SP, SP, #0x30 ; '0'
3ED522:  POP             {R4,R6,R7,PC}
3ED524:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ED52E)
3ED526:  LDRSH.W         R1, [R4,#0x26]
3ED52A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ED52C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ED52E:  LDR.W           R0, [R0,R1,LSL#2]
3ED532:  LDR             R1, [R4,#0x14]
3ED534:  LDR             R0, [R0,#0x2C]
3ED536:  CMP             R1, #0
3ED538:  ADD.W           R2, R0, #0x18
3ED53C:  BEQ             loc_3ED560
3ED53E:  LDR             R0, [R2,#8]
3ED540:  VLDR            D16, [R2]
3ED544:  ADD             R2, SP, #0x38+var_28
3ED546:  STR             R0, [SP,#0x38+var_20]
3ED548:  ADD             R0, SP, #0x38+var_18
3ED54A:  VSTR            D16, [SP,#0x38+var_28]
3ED54E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3ED552:  VLDR            D16, [SP,#0x38+var_18]
3ED556:  LDR             R0, [SP,#0x38+var_10]
3ED558:  STR             R0, [SP,#0x38+var_30]
3ED55A:  VSTR            D16, [SP,#0x38+var_38]
3ED55E:  B               loc_3ED568
3ED560:  ADDS            R1, R4, #4
3ED562:  MOV             R0, SP
3ED564:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3ED568:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ED572)
3ED56A:  LDRSH.W         R1, [R4,#0x26]
3ED56E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ED570:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ED572:  LDR.W           R0, [R0,R1,LSL#2]
3ED576:  LDR             R1, =(TheCamera_ptr - 0x3ED57E)
3ED578:  LDR             R0, [R0,#0x2C]
3ED57A:  ADD             R1, PC; TheCamera_ptr
3ED57C:  LDR             R2, [R0,#0x24]; float
3ED57E:  LDR             R0, [R1]; TheCamera ; this
3ED580:  MOV             R1, SP; CVector *
3ED582:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
3ED586:  ADD             SP, SP, #0x30 ; '0'
3ED588:  POP             {R4,R6,R7,PC}
