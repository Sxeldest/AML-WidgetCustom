; =========================================================
; Game Engine Function: _ZN7CGarage29FindMaxNumStoredCarsForGarageEv
; Address            : 0x3126BC - 0x3126CA
; =========================================================

3126BC:  LDRB.W          R1, [R0,#0x4C]
3126C0:  MOVS            R0, #4
3126C2:  CMP             R1, #0x10
3126C4:  IT EQ
3126C6:  MOVEQ           R0, #2
3126C8:  BX              LR
