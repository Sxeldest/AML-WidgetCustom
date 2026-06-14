; =========================================================
; Game Engine Function: _ZN5CBike21GetAllWheelsOffGroundEv
; Address            : 0x566A88 - 0x566A96
; =========================================================

566A88:  LDRB.W          R1, [R0,#0x819]
566A8C:  MOVS            R0, #0
566A8E:  CMP             R1, #0
566A90:  IT EQ
566A92:  MOVEQ           R0, #1
566A94:  BX              LR
