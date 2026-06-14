; =========================================================
; Game Engine Function: _Z9MakeUpperPc
; Address            : 0x1E72A2 - 0x1E72C6
; =========================================================

1E72A2:  LDRB            R1, [R0]
1E72A4:  CMP             R1, #0
1E72A6:  IT EQ
1E72A8:  BXEQ            LR
1E72AA:  ADDS            R0, #1
1E72AC:  SUB.W           R2, R1, #0x61 ; 'a'
1E72B0:  UXTB            R2, R2
1E72B2:  CMP             R2, #0x19
1E72B4:  ITT LS
1E72B6:  ADDLS           R1, #0xE0
1E72B8:  STRBLS.W        R1, [R0,#-1]
1E72BC:  LDRB.W          R1, [R0],#1
1E72C0:  CMP             R1, #0
1E72C2:  BNE             loc_1E72AC
1E72C4:  BX              LR
