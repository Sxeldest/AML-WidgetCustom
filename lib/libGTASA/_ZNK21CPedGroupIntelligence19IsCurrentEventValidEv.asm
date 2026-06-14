; =========================================================
; Game Engine Function: _ZNK21CPedGroupIntelligence19IsCurrentEventValidEv
; Address            : 0x4B3D2C - 0x4B3DA8
; =========================================================

4B3D2C:  PUSH            {R4,R5,R7,LR}
4B3D2E:  ADD             R7, SP, #8
4B3D30:  MOV             R4, R0
4B3D32:  LDR             R0, [R4,#4]
4B3D34:  CBZ             R0, loc_4B3DA0
4B3D36:  LDR             R0, [R0,#0x10]
4B3D38:  LDR             R1, [R0]
4B3D3A:  LDR             R1, [R1,#8]
4B3D3C:  BLX             R1
4B3D3E:  CMP             R0, #0x47 ; 'G'
4B3D40:  BNE             loc_4B3DA0
4B3D42:  LDR             R0, [R4,#4]
4B3D44:  LDR             R5, [R0,#0x10]
4B3D46:  LDR             R0, [R5]
4B3D48:  LDR             R1, [R0,#0x2C]
4B3D4A:  MOV             R0, R5
4B3D4C:  BLX             R1
4B3D4E:  CBZ             R0, loc_4B3DA0
4B3D50:  LDR             R0, [R5]
4B3D52:  LDR             R1, [R0,#0x2C]
4B3D54:  MOV             R0, R5
4B3D56:  BLX             R1
4B3D58:  LDRB.W          R0, [R0,#0x3A]
4B3D5C:  AND.W           R0, R0, #7
4B3D60:  CMP             R0, #3
4B3D62:  BNE             loc_4B3DA0
4B3D64:  LDR             R0, [R5]
4B3D66:  LDR             R1, [R0,#0x2C]
4B3D68:  MOV             R0, R5
4B3D6A:  BLX             R1
4B3D6C:  CBZ             R0, loc_4B3DA0
4B3D6E:  LDR             R1, [R4]
4B3D70:  LDR             R2, [R1,#0xC]
4B3D72:  CMP             R2, R0
4B3D74:  ITT NE
4B3D76:  LDRNE           R2, [R1,#0x10]
4B3D78:  CMPNE           R2, R0
4B3D7A:  BEQ             loc_4B3DA4
4B3D7C:  LDR             R2, [R1,#0x14]
4B3D7E:  CMP             R2, R0
4B3D80:  ITT NE
4B3D82:  LDRNE           R2, [R1,#0x18]
4B3D84:  CMPNE           R2, R0
4B3D86:  BEQ             loc_4B3DA4
4B3D88:  LDR             R2, [R1,#0x1C]
4B3D8A:  CMP             R2, R0
4B3D8C:  ITT NE
4B3D8E:  LDRNE           R2, [R1,#0x20]
4B3D90:  CMPNE           R2, R0
4B3D92:  BEQ             loc_4B3DA4
4B3D94:  LDR             R2, [R1,#0x24]
4B3D96:  CMP             R2, R0
4B3D98:  ITT NE
4B3D9A:  LDRNE           R1, [R1,#0x28]
4B3D9C:  CMPNE           R1, R0
4B3D9E:  BEQ             loc_4B3DA4
4B3DA0:  MOVS            R0, #1
4B3DA2:  POP             {R4,R5,R7,PC}
4B3DA4:  MOVS            R0, #0
4B3DA6:  POP             {R4,R5,R7,PC}
