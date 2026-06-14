; =========================================================
; Game Engine Function: _Z16FindCBFunctionIDPFvP21CAnimBlendAssociationPvE
; Address            : 0x450C40 - 0x450C5E
; =========================================================

450C40:  LDR             R2, =(CBArray_ptr - 0x450C48)
450C42:  MOVS            R1, #0
450C44:  ADD             R2, PC; CBArray_ptr
450C46:  LDR             R2, [R2]; CBArray
450C48:  LDR.W           R3, [R2,R1,LSL#2]
450C4C:  CMP             R3, R0
450C4E:  BEQ             loc_450C5A
450C50:  ADDS            R3, R1, #1
450C52:  CMP             R1, #0x2C ; ','
450C54:  MOV             R1, R3
450C56:  BLT             loc_450C48
450C58:  MOVS            R1, #0
450C5A:  UXTB            R0, R1
450C5C:  BX              LR
