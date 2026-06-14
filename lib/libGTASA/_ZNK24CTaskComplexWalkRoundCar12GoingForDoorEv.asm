; =========================================================
; Game Engine Function: _ZNK24CTaskComplexWalkRoundCar12GoingForDoorEv
; Address            : 0x50CCF0 - 0x50CD0A
; =========================================================

50CCF0:  LDRB            R1, [R0,#0xD]
50CCF2:  LSLS            R1, R1, #0x1F
50CCF4:  ITT NE
50CCF6:  LDRNE           R0, [R0,#0x1C]
50CCF8:  CMPNE           R0, #0
50CCFA:  BNE             loc_50CD00
50CCFC:  MOVS            R0, #0
50CCFE:  BX              LR
50CD00:  LDRB.W          R0, [R0,#0x42D]
50CD04:  UBFX.W          R0, R0, #2, #1
50CD08:  BX              LR
