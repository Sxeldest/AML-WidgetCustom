; =========================================================
; Game Engine Function: sub_1E723A
; Address            : 0x1E723A - 0x1E7264
; =========================================================

1E723A:  CMP             R0, #0
1E723C:  ITT NE
1E723E:  LDRBNE          R1, [R0]
1E7240:  CMPNE           R1, #0
1E7242:  BEQ             locret_1E7262
1E7244:  ADDS            R2, R0, #1
1E7246:  SUB.W           R3, R1, #0x41 ; 'A'
1E724A:  UXTB            R3, R3
1E724C:  CMP             R3, #0x19
1E724E:  ITT LS
1E7250:  ADDLS           R1, #0x20 ; ' '
1E7252:  STRBLS.W        R1, [R2,#-1]
1E7256:  LDRB.W          R1, [R2],#1
1E725A:  CMP             R1, #0
1E725C:  IT EQ
1E725E:  BXEQ            LR
1E7260:  B               loc_1E7246
1E7262:  BX              LR
