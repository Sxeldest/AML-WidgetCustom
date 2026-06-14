; =========================================================
; Game Engine Function: _Z43RpAnimBlendClumpGetMainPartialAssociation_NP7RpClumpi
; Address            : 0x390B80 - 0x390BAE
; =========================================================

390B80:  LDR             R2, =(ClumpOffset_ptr - 0x390B86)
390B82:  ADD             R2, PC; ClumpOffset_ptr
390B84:  LDR             R2, [R2]; ClumpOffset
390B86:  LDR             R2, [R2]
390B88:  LDR             R0, [R0,R2]
390B8A:  MOVS            R2, #0
390B8C:  B               loc_390B9A
390B8E:  ADDS            R3, R2, #1
390B90:  CMP             R2, R1
390B92:  MOV             R2, R3
390B94:  ITT EQ
390B96:  SUBEQ           R0, #4
390B98:  BXEQ            LR
390B9A:  LDR             R0, [R0]
390B9C:  CMP             R0, #0
390B9E:  ITT EQ
390BA0:  MOVEQ           R0, #0
390BA2:  BXEQ            LR
390BA4:  LDRB.W          R3, [R0,#0x2A]
390BA8:  LSLS            R3, R3, #0x1B
390BAA:  BPL             loc_390B9A
390BAC:  B               loc_390B8E
