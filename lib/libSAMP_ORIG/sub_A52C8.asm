; =========================================================
; Game Engine Function: sub_A52C8
; Address            : 0xA52C8 - 0xA52F0
; =========================================================

A52C8:  LDRH            R2, [R1,#6]
A52CA:  LDRH            R3, [R0,#6]
A52CC:  CMP             R3, R2
A52CE:  ITT HI
A52D0:  MOVHI.W         R0, #0xFFFFFFFF
A52D4:  BXHI            LR
A52D6:  ITT CC
A52D8:  MOVCC           R0, #1
A52DA:  BXCC            LR
A52DC:  LDRH            R2, [R0,#4]
A52DE:  MOVS            R0, #0
A52E0:  LDRH            R1, [R1,#4]
A52E2:  CMP             R2, R1
A52E4:  IT CC
A52E6:  MOVCC           R0, #1
A52E8:  IT HI
A52EA:  MOVHI.W         R0, #0xFFFFFFFF
A52EE:  BX              LR
