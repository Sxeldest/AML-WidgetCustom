; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr14GetBoatPointerEh
; Address            : 0x57102E - 0x57104E
; =========================================================

57102E:  ADD.W           R2, R1, #0x51 ; 'Q'
571032:  MOVS            R3, #0
571034:  UXTB            R2, R2
571036:  CMP             R2, #0xC
571038:  IT CC
57103A:  SUBCC.W         R3, R1, #0xAF
57103E:  RSB.W           R1, R3, R3,LSL#4
571042:  ADD.W           R0, R0, R1,LSL#2
571046:  MOVW            R1, #0xC354
57104A:  ADD             R0, R1
57104C:  BX              LR
