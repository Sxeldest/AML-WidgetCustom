; =========================================================
; Game Engine Function: _Z36RpAnimBlendClumpGetMainAssociation_NP7RpClumpi
; Address            : 0x390B4C - 0x390B7A
; =========================================================

390B4C:  LDR             R2, =(ClumpOffset_ptr - 0x390B52)
390B4E:  ADD             R2, PC; ClumpOffset_ptr
390B50:  LDR             R2, [R2]; ClumpOffset
390B52:  LDR             R2, [R2]
390B54:  LDR             R0, [R0,R2]
390B56:  MOVS            R2, #0
390B58:  B               loc_390B66
390B5A:  ADDS            R3, R2, #1
390B5C:  CMP             R2, R1
390B5E:  MOV             R2, R3
390B60:  ITT EQ
390B62:  SUBEQ           R0, #4
390B64:  BXEQ            LR
390B66:  LDR             R0, [R0]
390B68:  CMP             R0, #0
390B6A:  ITT EQ
390B6C:  MOVEQ           R0, #0
390B6E:  BXEQ            LR
390B70:  LDRB.W          R3, [R0,#0x2A]
390B74:  LSLS            R3, R3, #0x1B
390B76:  BMI             loc_390B66
390B78:  B               loc_390B5A
