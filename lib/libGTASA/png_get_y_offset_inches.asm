; =========================================================
; Game Engine Function: png_get_y_offset_inches
; Address            : 0x1F3548 - 0x1F357C
; =========================================================

1F3548:  VLDR            S0, =0.0
1F354C:  CBZ             R0, loc_1F3576
1F354E:  CMP             R1, #0
1F3550:  ITT NE
1F3552:  LDRBNE          R0, [R1,#9]
1F3554:  MOVSNE.W        R0, R0,LSL#31
1F3558:  BEQ             loc_1F3576
1F355A:  LDRB.W          R0, [R1,#0xBC]
1F355E:  CMP             R0, #1
1F3560:  BNE             loc_1F3576
1F3562:  VLDR            S0, [R1,#0xB8]
1F3566:  VLDR            D17, =0.00003937
1F356A:  VCVT.F64.S32    D16, S0
1F356E:  VMUL.F64        D16, D16, D17
1F3572:  VCVT.F32.F64    S0, D16
1F3576:  VMOV            R0, S0
1F357A:  BX              LR
