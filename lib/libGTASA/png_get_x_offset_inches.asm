; =========================================================
; Game Engine Function: png_get_x_offset_inches
; Address            : 0x1F3500 - 0x1F3534
; =========================================================

1F3500:  VLDR            S0, =0.0
1F3504:  CBZ             R0, loc_1F352E
1F3506:  CMP             R1, #0
1F3508:  ITT NE
1F350A:  LDRBNE          R0, [R1,#9]
1F350C:  MOVSNE.W        R0, R0,LSL#31
1F3510:  BEQ             loc_1F352E
1F3512:  LDRB.W          R0, [R1,#0xBC]
1F3516:  CMP             R0, #1
1F3518:  BNE             loc_1F352E
1F351A:  VLDR            S0, [R1,#0xB4]
1F351E:  VLDR            D17, =0.00003937
1F3522:  VCVT.F64.S32    D16, S0
1F3526:  VMUL.F64        D16, D16, D17
1F352A:  VCVT.F32.F64    S0, D16
1F352E:  VMOV            R0, S0
1F3532:  BX              LR
