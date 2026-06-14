; =========================================================
; Game Engine Function: _ZN10Interior_c18GetFurnitureEntityEP7CEntity
; Address            : 0x446248 - 0x446268
; =========================================================

446248:  LDR             R0, [R0,#0x5C]
44624A:  CMP             R0, #0
44624C:  ITT EQ
44624E:  MOVEQ           R0, #0
446250:  BXEQ            LR
446252:  B               loc_44625E
446254:  LDR             R0, [R0,#4]
446256:  CMP             R0, #0
446258:  ITT EQ
44625A:  MOVEQ           R0, #0
44625C:  BXEQ            LR
44625E:  LDR             R2, [R0,#8]
446260:  CMP             R2, R1
446262:  IT EQ
446264:  BXEQ            LR
446266:  B               loc_446254
