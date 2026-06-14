; =========================================================
; Game Engine Function: _ZN7CGarage15CloseThisGarageEv
; Address            : 0x313A0A - 0x313A1E
; =========================================================

313A0A:  LDRB.W          R1, [R0,#0x4D]
313A0E:  ORR.W           R1, R1, #2
313A12:  CMP             R1, #3
313A14:  ITT EQ
313A16:  MOVEQ           R1, #2
313A18:  STRBEQ.W        R1, [R0,#0x4D]
313A1C:  BX              LR
