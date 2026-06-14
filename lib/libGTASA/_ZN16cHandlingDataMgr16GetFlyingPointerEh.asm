; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr16GetFlyingPointerEh
; Address            : 0x571010 - 0x57102E
; =========================================================

571010:  ADD.W           R2, R1, #0x46 ; 'F'
571014:  MOVS            R3, #0
571016:  UXTB            R2, R2
571018:  CMP             R2, #0x18
57101A:  IT CC
57101C:  SUBCC.W         R3, R1, #0xBA
571020:  MOVS            R1, #0x58 ; 'X'
571022:  MLA.W           R0, R3, R1, R0
571026:  MOVW            R1, #0xBB14
57102A:  ADD             R0, R1
57102C:  BX              LR
