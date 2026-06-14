; =========================================================
; Game Engine Function: png_icc_set_sRGB
; Address            : 0x1EFEA4 - 0x1EFF98
; =========================================================

1EFEA4:  PUSH            {R4-R7,LR}
1EFEA6:  ADD             R7, SP, #0xC
1EFEA8:  PUSH.W          {R8-R10}
1EFEAC:  MOV             R9, R0
1EFEAE:  MOV             R6, R2
1EFEB0:  LDR.W           R0, [R9,#0x2C8]
1EFEB4:  MOV             R8, R1
1EFEB6:  AND.W           R0, R0, #0x30 ; '0'
1EFEBA:  CMP             R0, #0x30 ; '0'
1EFEBC:  BEQ             loc_1EFF1A
1EFEBE:  LDR             R0, [R6,#0x54]
1EFEC0:  MOV.W           R12, #0x10000
1EFEC4:  LDR             R5, =(dword_5EE5D4 - 0x1EFED2)
1EFEC6:  MOVS            R4, #0
1EFEC8:  REV             R0, R0
1EFECA:  MOV.W           R10, #0
1EFECE:  ADD             R5, PC; dword_5EE5D4
1EFED0:  LDR             R2, [R5,#0xC]
1EFED2:  CMP             R0, R2
1EFED4:  BNE             loc_1EFF12
1EFED6:  LDR             R2, [R6,#0x58]
1EFED8:  LDR             R1, [R5,#0x10]
1EFEDA:  REV             R2, R2
1EFEDC:  CMP             R2, R1
1EFEDE:  BNE             loc_1EFF12
1EFEE0:  LDR             R1, [R6,#0x5C]
1EFEE2:  LDR             R2, [R5,#0x14]
1EFEE4:  REV             R1, R1
1EFEE6:  CMP             R1, R2
1EFEE8:  BNE             loc_1EFF12
1EFEEA:  LDR             R1, [R6,#0x60]
1EFEEC:  LDR             R2, [R5,#0x18]
1EFEEE:  REV             R1, R1
1EFEF0:  CMP             R1, R2
1EFEF2:  BNE             loc_1EFF12
1EFEF4:  CMP.W           R10, #0
1EFEF8:  BNE             loc_1EFF06
1EFEFA:  LDR             R1, [R6]
1EFEFC:  LDR             R2, [R6,#0x40]
1EFEFE:  REV.W           R10, R1
1EFF02:  REV.W           R12, R2
1EFF06:  LDR             R1, [R5,#8]
1EFF08:  CMP             R10, R1
1EFF0A:  ITT EQ
1EFF0C:  LDRHEQ          R1, [R5,#0x1E]
1EFF0E:  CMPEQ           R12, R1
1EFF10:  BEQ             loc_1EFF20
1EFF12:  ADDS            R4, #1
1EFF14:  ADDS            R5, #0x20 ; ' '
1EFF16:  CMP             R4, #7
1EFF18:  BCC             loc_1EFED0
1EFF1A:  POP.W           {R8-R10}
1EFF1E:  POP             {R4-R7,PC}
1EFF20:  CBNZ            R3, loc_1EFF36
1EFF22:  MOVS            R0, #0
1EFF24:  MOVS            R1, #0
1EFF26:  MOVS            R2, #0
1EFF28:  BLX             j_adler32
1EFF2C:  MOV             R1, R6
1EFF2E:  MOV             R2, R10
1EFF30:  BLX             j_adler32
1EFF34:  MOV             R3, R0
1EFF36:  LDR             R0, [R5]
1EFF38:  CMP             R3, R0
1EFF3A:  BNE             loc_1EFF62
1EFF3C:  MOVS            R0, #0
1EFF3E:  MOVS            R1, #0
1EFF40:  MOVS            R2, #0
1EFF42:  BLX             j_crc32
1EFF46:  MOV             R1, R6
1EFF48:  MOV             R2, R10
1EFF4A:  BLX             j_crc32
1EFF4E:  LDR             R1, [R5,#4]
1EFF50:  CMP             R0, R1
1EFF52:  BNE             loc_1EFF62
1EFF54:  SUBS            R0, R4, #5
1EFF56:  CMP             R0, #1
1EFF58:  BHI             loc_1EFF74
1EFF5A:  ADR             R1, aKnownIncorrect; "known incorrect sRGB profile"
1EFF5C:  MOV             R0, R9
1EFF5E:  MOVS            R2, #2
1EFF60:  B               loc_1EFF80
1EFF62:  ADR             R1, aNotRecognizing; "Not recognizing known sRGB profile that"...
1EFF64:  MOV             R0, R9
1EFF66:  MOVS            R2, #0
1EFF68:  POP.W           {R8-R10}
1EFF6C:  POP.W           {R4-R7,LR}
1EFF70:  B.W             j_j_png_chunk_report
1EFF74:  SUBS            R0, R4, #4
1EFF76:  CMP             R0, #2
1EFF78:  BHI             loc_1EFF84
1EFF7A:  ADR             R1, aOutOfDateSrgbP; "out-of-date sRGB profile with no signat"...
1EFF7C:  MOV             R0, R9
1EFF7E:  MOVS            R2, #0
1EFF80:  BLX             j_png_chunk_report
1EFF84:  LDR             R0, [R6,#0x40]
1EFF86:  MOV             R1, R8
1EFF88:  REV             R2, R0
1EFF8A:  MOV             R0, R9
1EFF8C:  POP.W           {R8-R10}
1EFF90:  POP.W           {R4-R7,LR}
1EFF94:  B.W             png_colorspace_set_sRGB
