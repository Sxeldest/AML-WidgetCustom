; =========================================================
; Game Engine Function: _Z13MakeLowerCasePc
; Address            : 0x5A846A - 0x5A848E
; =========================================================

5A846A:  LDRB            R1, [R0]
5A846C:  CMP             R1, #0
5A846E:  IT EQ
5A8470:  BXEQ            LR
5A8472:  ADDS            R0, #1
5A8474:  SUB.W           R2, R1, #0x41 ; 'A'
5A8478:  UXTB            R2, R2
5A847A:  CMP             R2, #0x19
5A847C:  ITT LS
5A847E:  ADDLS           R1, #0x20 ; ' '
5A8480:  STRBLS.W        R1, [R0,#-1]
5A8484:  LDRB.W          R1, [R0],#1
5A8488:  CMP             R1, #0
5A848A:  BNE             loc_5A8474
5A848C:  BX              LR
