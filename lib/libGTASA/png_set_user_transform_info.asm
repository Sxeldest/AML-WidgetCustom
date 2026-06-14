; =========================================================
; Game Engine Function: png_set_user_transform_info
; Address            : 0x203824 - 0x203852
; =========================================================

203824:  CMP             R0, #0
203826:  IT EQ
203828:  BXEQ            LR
20382A:  LDRB.W          R12, [R0,#0x135]
20382E:  MOVS.W          R12, R12,LSL#24
203832:  ITT MI
203834:  LDRBMI.W        R12, [R0,#0x138]
203838:  MOVSMI.W        R12, R12,LSL#25
20383C:  BMI             loc_20384C
20383E:  STRB.W          R2, [R0,#0x130]
203842:  STR.W           R1, [R0,#0x12C]
203846:  STRB.W          R3, [R0,#0x131]
20384A:  BX              LR
20384C:  ADR             R1, aInfoChangeAfte; "info change after png_start_read_image "...
20384E:  B.W             j_j_png_app_error
