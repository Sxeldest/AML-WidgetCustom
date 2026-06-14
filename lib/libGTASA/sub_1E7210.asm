; =========================================================
; Game Engine Function: sub_1E7210
; Address            : 0x1E7210 - 0x1E723A
; =========================================================

1E7210:  CMP             R0, #0
1E7212:  ITT NE
1E7214:  LDRBNE          R1, [R0]
1E7216:  CMPNE           R1, #0
1E7218:  BEQ             locret_1E7238
1E721A:  ADDS            R2, R0, #1
1E721C:  SUB.W           R3, R1, #0x61 ; 'a'
1E7220:  UXTB            R3, R3
1E7222:  CMP             R3, #0x19
1E7224:  ITT LS
1E7226:  ADDLS           R1, #0xE0
1E7228:  STRBLS.W        R1, [R2,#-1]
1E722C:  LDRB.W          R1, [R2],#1
1E7230:  CMP             R1, #0
1E7232:  IT EQ
1E7234:  BXEQ            LR
1E7236:  B               loc_1E721C
1E7238:  BX              LR
