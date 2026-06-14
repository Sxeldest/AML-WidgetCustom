; =========================================================
; Game Engine Function: _ZN10MobileMenu8DrawQuadEP9CVector2DP5CRGBA
; Address            : 0x298AB8 - 0x298B80
; =========================================================

298AB8:  PUSH            {R4-R7,LR}
298ABA:  ADD             R7, SP, #0xC
298ABC:  PUSH.W          {R11}
298AC0:  MOV             R4, R1
298AC2:  MOV             R5, R0
298AC4:  MOVS            R0, #1
298AC6:  MOVS            R1, #0
298AC8:  MOVS            R6, #0
298ACA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298ACE:  LDR             R0, =(maVertices_ptr - 0x298AD8)
298AD0:  LDRD.W          R2, R3, [R5]
298AD4:  ADD             R0, PC; maVertices_ptr
298AD6:  LDR             R1, [R0]; maVertices
298AD8:  MOV.W           R0, #0x3F800000
298ADC:  STR             R6, [R1,#(dword_6E0150 - 0x6E0138)]
298ADE:  STRD.W          R2, R3, [R1]
298AE2:  STRD.W          R0, R0, [R1,#(dword_6E0140 - 0x6E0138)]
298AE6:  STR             R6, [R1,#(dword_6E014C - 0x6E0138)]
298AE8:  LDRB            R2, [R4]
298AEA:  STRB            R2, [R1,#(byte_6E0148 - 0x6E0138)]
298AEC:  LDRB            R2, [R4,#1]
298AEE:  STRB            R2, [R1,#(byte_6E0149 - 0x6E0138)]
298AF0:  LDRB            R2, [R4,#2]
298AF2:  STRB            R2, [R1,#(byte_6E014A - 0x6E0138)]
298AF4:  LDRB            R2, [R4,#3]
298AF6:  STRB            R2, [R1,#(byte_6E014B - 0x6E0138)]
298AF8:  LDRD.W          R2, R3, [R5,#8]
298AFC:  STRD.W          R0, R0, [R1,#(dword_6E015C - 0x6E0138)]
298B00:  STRD.W          R6, R6, [R1,#(dword_6E0168 - 0x6E0138)]
298B04:  STRD.W          R2, R3, [R1,#(dword_6E0154 - 0x6E0138)]
298B08:  LDRB            R2, [R4,#4]
298B0A:  STRB.W          R2, [R1,#(byte_6E0164 - 0x6E0138)]
298B0E:  LDRB            R2, [R4,#5]
298B10:  STRB.W          R2, [R1,#(byte_6E0165 - 0x6E0138)]
298B14:  LDRB            R2, [R4,#6]
298B16:  STRB.W          R2, [R1,#(byte_6E0166 - 0x6E0138)]
298B1A:  LDRB            R2, [R4,#7]
298B1C:  STRB.W          R2, [R1,#(byte_6E0167 - 0x6E0138)]
298B20:  LDRD.W          R2, R3, [R5,#0x10]
298B24:  STRD.W          R0, R0, [R1,#(dword_6E0178 - 0x6E0138)]
298B28:  STRD.W          R6, R6, [R1,#(dword_6E0184 - 0x6E0138)]
298B2C:  STRD.W          R2, R3, [R1,#(dword_6E0170 - 0x6E0138)]
298B30:  LDRB            R2, [R4,#8]
298B32:  STRB.W          R2, [R1,#(byte_6E0180 - 0x6E0138)]
298B36:  LDRB            R2, [R4,#9]
298B38:  STRB.W          R2, [R1,#(byte_6E0181 - 0x6E0138)]
298B3C:  LDRB            R2, [R4,#0xA]
298B3E:  STRB.W          R2, [R1,#(byte_6E0182 - 0x6E0138)]
298B42:  LDRB            R2, [R4,#0xB]
298B44:  STRB.W          R2, [R1,#(byte_6E0183 - 0x6E0138)]
298B48:  LDRD.W          R2, R3, [R5,#0x18]
298B4C:  STRD.W          R0, R0, [R1,#(dword_6E0194 - 0x6E0138)]
298B50:  STRD.W          R6, R6, [R1,#(dword_6E01A0 - 0x6E0138)]
298B54:  STRD.W          R2, R3, [R1,#(dword_6E018C - 0x6E0138)]
298B58:  MOVS            R2, #4
298B5A:  LDRB            R0, [R4,#0xC]
298B5C:  STRB.W          R0, [R1,#(byte_6E019C - 0x6E0138)]
298B60:  LDRB            R0, [R4,#0xD]
298B62:  STRB.W          R0, [R1,#(byte_6E019D - 0x6E0138)]
298B66:  LDRB            R0, [R4,#0xE]
298B68:  STRB.W          R0, [R1,#(byte_6E019E - 0x6E0138)]
298B6C:  LDRB            R0, [R4,#0xF]
298B6E:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
298B72:  MOVS            R0, #4
298B74:  POP.W           {R11}
298B78:  POP.W           {R4-R7,LR}
298B7C:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
