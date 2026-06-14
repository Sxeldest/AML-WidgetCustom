; =========================================================
; Game Engine Function: png_app_error
; Address            : 0x1F2C02 - 0x1F2C14
; =========================================================

1F2C02:  LDRB.W          R2, [R0,#0x13A]
1F2C06:  LSLS            R2, R2, #0x19
1F2C08:  IT MI
1F2C0A:  BMI             png_warning
1F2C0C:  PUSH            {R7,LR}
1F2C0E:  MOV             R7, SP
1F2C10:  BLX             j_png_error
