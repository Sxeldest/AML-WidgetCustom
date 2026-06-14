; =========================================================
; Game Engine Function: sub_EB5F0
; Address            : 0xEB5F0 - 0xEB608
; =========================================================

EB5F0:  LDRB            R1, [R0]
EB5F2:  LSLS            R1, R1, #0x1F
EB5F4:  BNE             loc_EB5FC
EB5F6:  MOVS            R1, #0
EB5F8:  STRB            R1, [R0]
EB5FA:  B               loc_EB602
EB5FC:  LDR             R1, [R0,#8]
EB5FE:  MOVS            R2, #0
EB600:  STR             R2, [R1]
EB602:  MOVS            R1, #0
EB604:  STR             R1, [R0,#4]
EB606:  BX              LR
