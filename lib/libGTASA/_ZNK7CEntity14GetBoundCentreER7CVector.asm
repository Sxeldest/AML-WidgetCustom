; =========================================================
; Game Engine Function: _ZNK7CEntity14GetBoundCentreER7CVector
; Address            : 0x3EBF94 - 0x3EBFE4
; =========================================================

3EBF94:  PUSH            {R4,R6,R7,LR}
3EBF96:  ADD             R7, SP, #8
3EBF98:  SUB             SP, SP, #0x20
3EBF9A:  MOV             R4, R1
3EBF9C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EBFA6)
3EBF9E:  LDRSH.W         R2, [R0,#0x26]
3EBFA2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EBFA4:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3EBFA6:  LDR.W           R1, [R1,R2,LSL#2]
3EBFAA:  LDR             R2, [R1,#0x2C]
3EBFAC:  LDR             R1, [R0,#0x14]
3EBFAE:  ADDS            R2, #0x18
3EBFB0:  CBZ             R1, loc_3EBFD6
3EBFB2:  LDR             R0, [R2,#8]
3EBFB4:  VLDR            D16, [R2]
3EBFB8:  MOV             R2, SP
3EBFBA:  STR             R0, [SP,#0x28+var_20]
3EBFBC:  ADD             R0, SP, #0x28+var_18
3EBFBE:  VSTR            D16, [SP,#0x28+var_28]
3EBFC2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3EBFC6:  VLDR            D16, [SP,#0x28+var_18]
3EBFCA:  LDR             R0, [SP,#0x28+var_10]
3EBFCC:  STR             R0, [R4,#8]
3EBFCE:  VSTR            D16, [R4]
3EBFD2:  ADD             SP, SP, #0x20 ; ' '
3EBFD4:  POP             {R4,R6,R7,PC}
3EBFD6:  ADDS            R1, R0, #4
3EBFD8:  MOV             R0, R4
3EBFDA:  ADD             SP, SP, #0x20 ; ' '
3EBFDC:  POP.W           {R4,R6,R7,LR}
3EBFE0:  B.W             sub_194124
