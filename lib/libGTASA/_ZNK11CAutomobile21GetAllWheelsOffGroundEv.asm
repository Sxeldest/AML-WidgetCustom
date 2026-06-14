; =========================================================
; Game Engine Function: _ZNK11CAutomobile21GetAllWheelsOffGroundEv
; Address            : 0x55CA90 - 0x55CA9E
; =========================================================

55CA90:  LDRB.W          R1, [R0,#0x975]
55CA94:  MOVS            R0, #0
55CA96:  CMP             R1, #0
55CA98:  IT EQ
55CA9A:  MOVEQ           R0, #1
55CA9C:  BX              LR
