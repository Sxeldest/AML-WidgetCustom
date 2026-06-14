; =========================================================
; Game Engine Function: sub_83AF0
; Address            : 0x83AF0 - 0x83B08
; =========================================================

83AF0:  LDR             R0, =(byte_1A6FA7 - 0x83AF6)
83AF2:  ADD             R0, PC; byte_1A6FA7
83AF4:  LDRB            R1, [R0]
83AF6:  CMP             R1, #0
83AF8:  IT EQ
83AFA:  BXEQ            LR
83AFC:  LDR             R1, =(dword_1A6FA8 - 0x83B06)
83AFE:  MOVS            R2, #0
83B00:  STRB            R2, [R0]
83B02:  ADD             R1, PC; dword_1A6FA8
83B04:  STR             R2, [R1]
83B06:  BX              LR
