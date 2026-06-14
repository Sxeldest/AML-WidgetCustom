; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnim11UseFatHandsEP4CPed
; Address            : 0x4D7B30 - 0x4D7B50
; =========================================================

4D7B30:  LDRSH.W         R0, [R1,#0x26]
4D7B34:  SUB.W           R1, R0, #0x67 ; 'g'
4D7B38:  CMP             R1, #4
4D7B3A:  BHI             loc_4D7B4C
4D7B3C:  MOVS            R0, #1
4D7B3E:  LSL.W           R1, R0, R1
4D7B42:  TST.W           R1, #0x15
4D7B46:  IT EQ
4D7B48:  MOVEQ           R0, #0
4D7B4A:  BX              LR
4D7B4C:  MOVS            R0, #0
4D7B4E:  BX              LR
