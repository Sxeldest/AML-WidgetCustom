; =========================================================
; Game Engine Function: sub_FFA68
; Address            : 0xFFA68 - 0xFFA92
; =========================================================

FFA68:  CBZ             R0, loc_FFA86
FFA6A:  CBZ             R1, loc_FFA86
FFA6C:  LDR.W           R2, [R1,#0x590]
FFA70:  CBZ             R2, loc_FFA86
FFA72:  LDRH            R2, [R2,#0x26]
FFA74:  MOVW            R3, #0x3E0A
FFA78:  SUBS            R3, R2, R3
FFA7A:  CMP             R3, #2
FFA7C:  BCC             loc_FFA86
FFA7E:  MOVW            R3, #0x4218
FFA82:  CMP             R2, R3
FFA84:  BNE             loc_FFA8A
FFA86:  MOVS            R0, #0
FFA88:  BX              LR
FFA8A:  LDR             R2, =(off_25B1FC - 0xFFA90)
FFA8C:  ADD             R2, PC; off_25B1FC
FFA8E:  LDR             R2, [R2]
FFA90:  BX              R2
