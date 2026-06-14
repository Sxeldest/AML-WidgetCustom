; =========================================================
; Game Engine Function: _Z16OS_GamepadButtonjj
; Address            : 0x2683F4 - 0x268422
; =========================================================

2683F4:  CMP             R1, #0x1F
2683F6:  BHI             loc_26841E
2683F8:  LDR             R2, =(lastGamepadType_ptr - 0x2683FE)
2683FA:  ADD             R2, PC; lastGamepadType_ptr
2683FC:  LDR             R2, [R2]; lastGamepadType
2683FE:  LDR.W           R2, [R2,R0,LSL#2]
268402:  ADDS            R2, #1
268404:  BEQ             loc_26841E
268406:  LDR             R2, =(lastGamepadMask_ptr - 0x26840C)
268408:  ADD             R2, PC; lastGamepadMask_ptr
26840A:  LDR             R2, [R2]; lastGamepadMask
26840C:  LDR.W           R0, [R2,R0,LSL#2]
268410:  MOVS            R2, #1
268412:  LSL.W           R1, R2, R1
268416:  ANDS            R0, R1
268418:  IT NE
26841A:  MOVNE           R0, #1
26841C:  BX              LR
26841E:  MOVS            R0, #0
268420:  BX              LR
