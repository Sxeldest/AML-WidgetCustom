; =========================================================
; Game Engine Function: _Z13MakeUpperCasePc
; Address            : 0x5A8446 - 0x5A846A
; =========================================================

5A8446:  LDRB            R1, [R0]
5A8448:  CMP             R1, #0
5A844A:  IT EQ
5A844C:  BXEQ            LR
5A844E:  ADDS            R0, #1
5A8450:  SUB.W           R2, R1, #0x61 ; 'a'
5A8454:  UXTB            R2, R2
5A8456:  CMP             R2, #0x19
5A8458:  ITT LS
5A845A:  ADDLS           R1, #0xE0
5A845C:  STRBLS.W        R1, [R0,#-1]
5A8460:  LDRB.W          R1, [R0],#1
5A8464:  CMP             R1, #0
5A8466:  BNE             loc_5A8450
5A8468:  BX              LR
