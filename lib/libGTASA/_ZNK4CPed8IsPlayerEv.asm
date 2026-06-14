; =========================================================
; Game Engine Function: _ZNK4CPed8IsPlayerEv
; Address            : 0x49F61E - 0x49F632
; =========================================================

49F61E:  LDR.W           R0, [R0,#0x59C]
49F622:  CMP             R0, #0
49F624:  ITT EQ
49F626:  MOVEQ           R0, #1
49F628:  BXEQ            LR
49F62A:  CMP             R0, #1
49F62C:  IT NE
49F62E:  MOVNE           R0, #0
49F630:  BX              LR
