; =========================================================
; Game Engine Function: _ZN7CMatrix6DetachEv
; Address            : 0x44EDA2 - 0x44EDBC
; =========================================================

44EDA2:  PUSH            {R4,R6,R7,LR}
44EDA4:  ADD             R7, SP, #8
44EDA6:  MOV             R4, R0
44EDA8:  LDR             R0, [R4,#0x40]
44EDAA:  CBZ             R0, loc_44EDB6
44EDAC:  LDR             R1, [R4,#0x44]
44EDAE:  CMP             R1, #0
44EDB0:  IT NE
44EDB2:  BLXNE           j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
44EDB6:  MOVS            R0, #0
44EDB8:  STR             R0, [R4,#0x40]
44EDBA:  POP             {R4,R6,R7,PC}
