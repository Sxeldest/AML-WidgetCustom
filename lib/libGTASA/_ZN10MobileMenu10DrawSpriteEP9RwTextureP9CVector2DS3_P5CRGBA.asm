; =========================================================
; Game Engine Function: _ZN10MobileMenu10DrawSpriteEP9RwTextureP9CVector2DS3_P5CRGBA
; Address            : 0x298B84 - 0x298C60
; =========================================================

298B84:  PUSH            {R4-R7,LR}
298B86:  ADD             R7, SP, #0xC
298B88:  PUSH.W          {R11}
298B8C:  MOV             R5, R1
298B8E:  LDR             R1, [R0]
298B90:  MOVS            R0, #1
298B92:  MOV             R4, R3
298B94:  MOV             R6, R2
298B96:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298B9A:  LDR             R0, =(maVertices_ptr - 0x298BA8)
298B9C:  MOV.W           R12, #0x3F800000
298BA0:  LDRD.W          LR, R3, [R6]
298BA4:  ADD             R0, PC; maVertices_ptr
298BA6:  LDR             R1, [R0]; maVertices
298BA8:  LDRD.W          R0, R2, [R5]
298BAC:  STM.W           R1, {R0,R2,R12}
298BB0:  STR.W           R12, [R1,#(dword_6E0144 - 0x6E0138)]
298BB4:  STRD.W          LR, R3, [R1,#(dword_6E014C - 0x6E0138)]
298BB8:  LDRB            R0, [R4]
298BBA:  STRB            R0, [R1,#(byte_6E0148 - 0x6E0138)]
298BBC:  LDRB            R0, [R4,#1]
298BBE:  STRB            R0, [R1,#(byte_6E0149 - 0x6E0138)]
298BC0:  LDRB            R0, [R4,#2]
298BC2:  STRB            R0, [R1,#(byte_6E014A - 0x6E0138)]
298BC4:  LDRB            R0, [R4,#3]
298BC6:  STRB            R0, [R1,#(byte_6E014B - 0x6E0138)]
298BC8:  LDRD.W          LR, R2, [R6,#8]
298BCC:  LDRD.W          R3, R0, [R5,#8]
298BD0:  STRD.W          R12, R12, [R1,#(dword_6E015C - 0x6E0138)]
298BD4:  STRD.W          LR, R2, [R1,#(dword_6E0168 - 0x6E0138)]
298BD8:  STRD.W          R3, R0, [R1,#(dword_6E0154 - 0x6E0138)]
298BDC:  LDRB            R0, [R4,#4]
298BDE:  STRB.W          R0, [R1,#(byte_6E0164 - 0x6E0138)]
298BE2:  LDRB            R0, [R4,#5]
298BE4:  STRB.W          R0, [R1,#(byte_6E0165 - 0x6E0138)]
298BE8:  LDRB            R0, [R4,#6]
298BEA:  STRB.W          R0, [R1,#(byte_6E0166 - 0x6E0138)]
298BEE:  LDRB            R0, [R4,#7]
298BF0:  STRB.W          R0, [R1,#(byte_6E0167 - 0x6E0138)]
298BF4:  LDRD.W          LR, R2, [R6,#0x10]
298BF8:  LDRD.W          R3, R0, [R5,#0x10]
298BFC:  STRD.W          R12, R12, [R1,#(dword_6E0178 - 0x6E0138)]
298C00:  STRD.W          LR, R2, [R1,#(dword_6E0184 - 0x6E0138)]
298C04:  STRD.W          R3, R0, [R1,#(dword_6E0170 - 0x6E0138)]
298C08:  LDRB            R0, [R4,#8]
298C0A:  STRB.W          R0, [R1,#(byte_6E0180 - 0x6E0138)]
298C0E:  LDRB            R0, [R4,#9]
298C10:  STRB.W          R0, [R1,#(byte_6E0181 - 0x6E0138)]
298C14:  LDRB            R0, [R4,#0xA]
298C16:  STRB.W          R0, [R1,#(byte_6E0182 - 0x6E0138)]
298C1A:  LDRB            R0, [R4,#0xB]
298C1C:  STRB.W          R0, [R1,#(byte_6E0183 - 0x6E0138)]
298C20:  LDRD.W          R0, R2, [R6,#0x18]
298C24:  LDRD.W          R3, R6, [R5,#0x18]
298C28:  STR.W           R12, [R1,#(dword_6E0198 - 0x6E0138)]
298C2C:  STRD.W          R0, R2, [R1,#(dword_6E01A0 - 0x6E0138)]
298C30:  ADD.W           R0, R1, #0x54 ; 'T'
298C34:  STM.W           R0, {R3,R6,R12}
298C38:  MOVS            R2, #4
298C3A:  LDRB            R0, [R4,#0xC]
298C3C:  STRB.W          R0, [R1,#(byte_6E019C - 0x6E0138)]
298C40:  LDRB            R0, [R4,#0xD]
298C42:  STRB.W          R0, [R1,#(byte_6E019D - 0x6E0138)]
298C46:  LDRB            R0, [R4,#0xE]
298C48:  STRB.W          R0, [R1,#(byte_6E019E - 0x6E0138)]
298C4C:  LDRB            R0, [R4,#0xF]
298C4E:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
298C52:  MOVS            R0, #4
298C54:  POP.W           {R11}
298C58:  POP.W           {R4-R7,LR}
298C5C:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
