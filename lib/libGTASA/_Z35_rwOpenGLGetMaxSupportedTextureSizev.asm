; =========================================================
; Game Engine Function: _Z35_rwOpenGLGetMaxSupportedTextureSizev
; Address            : 0x1B1044 - 0x1B105A
; =========================================================

1B1044:  LDR             R0, =(byte_6B3294 - 0x1B104A)
1B1046:  ADD             R0, PC; byte_6B3294
1B1048:  LDRB            R0, [R0]
1B104A:  CBNZ            R0, loc_1B1054
1B104C:  LDR             R0, =(byte_6B3294 - 0x1B1054)
1B104E:  MOVS            R1, #1
1B1050:  ADD             R0, PC; byte_6B3294
1B1052:  STRB            R1, [R0]
1B1054:  MOV.W           R0, #0x800
1B1058:  BX              LR
