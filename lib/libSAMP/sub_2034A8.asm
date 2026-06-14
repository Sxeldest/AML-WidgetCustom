; =========================================================
; Game Engine Function: sub_2034A8
; Address            : 0x2034A8 - 0x2034C0
; =========================================================

2034A8:  LDRB            R1, [R0]
2034AA:  LSLS            R1, R1, #0x1F
2034AC:  BNE             loc_2034B4
2034AE:  MOVS            R1, #0
2034B0:  STRB            R1, [R0]
2034B2:  B               loc_2034BA
2034B4:  LDR             R1, [R0,#8]
2034B6:  MOVS            R2, #0
2034B8:  STR             R2, [R1]
2034BA:  MOVS            R1, #0
2034BC:  STR             R1, [R0,#4]
2034BE:  BX              LR
