; =========================================================
; Game Engine Function: sub_216B88
; Address            : 0x216B88 - 0x216BAC
; =========================================================

216B88:  LDR             R0, [R0]
216B8A:  LDRD.W          R0, R1, [R0]
216B8E:  CMP             R1, R0
216B90:  ITT EQ
216B92:  MOVEQ           R0, #1
216B94:  BXEQ            LR
216B96:  LDRB            R1, [R0]
216B98:  MOVS            R0, #1
216B9A:  CMP             R1, #0x2E ; '.'
216B9C:  IT NE
216B9E:  CMPNE           R1, #0x45 ; 'E'
216BA0:  BNE             loc_216BA4
216BA2:  BX              LR
216BA4:  CMP             R1, #0x5F ; '_'
216BA6:  IT NE
216BA8:  MOVNE           R0, #0
216BAA:  BX              LR
