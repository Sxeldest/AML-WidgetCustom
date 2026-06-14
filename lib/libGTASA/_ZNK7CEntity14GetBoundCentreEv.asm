; =========================================================
; Game Engine Function: _ZNK7CEntity14GetBoundCentreEv
; Address            : 0x3EBF3C - 0x3EBF90
; =========================================================

3EBF3C:  PUSH            {R4,R6,R7,LR}
3EBF3E:  ADD             R7, SP, #8
3EBF40:  SUB             SP, SP, #0x20
3EBF42:  MOV             R4, R0
3EBF44:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBF4C)
3EBF46:  MOV             R3, R1
3EBF48:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBF4A:  LDRSH.W         R1, [R3,#0x26]
3EBF4E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3EBF50:  LDR.W           R0, [R0,R1,LSL#2]
3EBF54:  LDR             R1, [R3,#0x14]
3EBF56:  LDR             R0, [R0,#0x2C]
3EBF58:  CMP             R1, #0
3EBF5A:  ADD.W           R2, R0, #0x18
3EBF5E:  BEQ             loc_3EBF84
3EBF60:  LDR             R0, [R2,#8]
3EBF62:  VLDR            D16, [R2]
3EBF66:  MOV             R2, SP
3EBF68:  STR             R0, [SP,#0x28+var_20]
3EBF6A:  ADD             R0, SP, #0x28+var_18
3EBF6C:  VSTR            D16, [SP,#0x28+var_28]
3EBF70:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBF74:  VLDR            D16, [SP,#0x28+var_18]
3EBF78:  LDR             R0, [SP,#0x28+var_10]
3EBF7A:  STR             R0, [R4,#8]
3EBF7C:  VSTR            D16, [R4]
3EBF80:  ADD             SP, SP, #0x20 ; ' '
3EBF82:  POP             {R4,R6,R7,PC}
3EBF84:  ADDS            R1, R3, #4
3EBF86:  MOV             R0, R4
3EBF88:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
3EBF8C:  ADD             SP, SP, #0x20 ; ' '
3EBF8E:  POP             {R4,R6,R7,PC}
