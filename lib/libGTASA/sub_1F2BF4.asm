; =========================================================
; Game Engine Function: sub_1F2BF4
; Address            : 0x1F2BF4 - 0x1F2C02
; =========================================================

1F2BF4:  LSLS            R2, R2, #0x1A
1F2BF6:  IT MI
1F2BF8:  BMI             png_warning
1F2BFA:  PUSH            {R7,LR}
1F2BFC:  MOV             R7, SP
1F2BFE:  BLX             j_png_error
