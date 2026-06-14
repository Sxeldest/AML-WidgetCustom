; =========================================================
; Game Engine Function: _ZN8CVehicle14SetHasslePosIdEib
; Address            : 0x58D4A6 - 0x58D4C2
; =========================================================

58D4A6:  LDRB.W          R12, [R0,#0x52B]
58D4AA:  MOVS            R3, #1
58D4AC:  LSL.W           R1, R3, R1
58D4B0:  CMP             R2, #0
58D4B2:  EOR.W           R3, R1, R12
58D4B6:  IT NE
58D4B8:  ORRNE.W         R3, R1, R12
58D4BC:  STRB.W          R3, [R0,#0x52B]
58D4C0:  BX              LR
