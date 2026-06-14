; =========================================================
; Game Engine Function: INT123_samples_to_bytes
; Address            : 0x2251EE - 0x225200
; =========================================================

2251EE:  MOVW            R2, #0xB2B4
2251F2:  LDR             R2, [R0,R2]
2251F4:  MULS            R1, R2
2251F6:  MOVW            R2, #0xB2B8
2251FA:  LDR             R0, [R0,R2]
2251FC:  MULS            R0, R1
2251FE:  BX              LR
