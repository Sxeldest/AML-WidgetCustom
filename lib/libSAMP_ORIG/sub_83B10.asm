; =========================================================
; Game Engine Function: sub_83B10
; Address            : 0x83B10 - 0x83B26
; =========================================================

83B10:  LDR             R0, =(byte_1A6FA7 - 0x83B16)
83B12:  ADD             R0, PC; byte_1A6FA7
83B14:  LDRB            R0, [R0]
83B16:  CMP             R0, #0
83B18:  IT EQ
83B1A:  BXEQ            LR
83B1C:  LDR             R0, =(byte_1A6FAC - 0x83B24)
83B1E:  MOVS            R1, #1
83B20:  ADD             R0, PC; byte_1A6FAC
83B22:  STRB            R1, [R0]
83B24:  BX              LR
