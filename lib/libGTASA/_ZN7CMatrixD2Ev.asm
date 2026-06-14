; =========================================================
; Game Engine Function: _ZN7CMatrixD2Ev
; Address            : 0x44ECB0 - 0x44ECC8
; =========================================================

44ECB0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CMatrix::~CMatrix()'
44ECB2:  ADD             R7, SP, #8
44ECB4:  MOV             R4, R0
44ECB6:  LDR             R0, [R4,#0x44]
44ECB8:  CBZ             R0, loc_44ECC4
44ECBA:  LDR             R0, [R4,#0x40]
44ECBC:  CMP             R0, #0
44ECBE:  IT NE
44ECC0:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
44ECC4:  MOV             R0, R4
44ECC6:  POP             {R4,R6,R7,PC}
