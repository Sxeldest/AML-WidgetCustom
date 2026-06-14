; =========================================================
; Game Engine Function: _ZN10MobileMenu10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_
; Address            : 0x298C64 - 0x298D2E
; =========================================================

298C64:  PUSH            {R4-R7,LR}
298C66:  ADD             R7, SP, #0xC
298C68:  PUSH.W          {R8}
298C6C:  MOV             R4, R1
298C6E:  LDR             R1, [R0]
298C70:  MOVS            R0, #1
298C72:  MOV             R6, R3
298C74:  MOV             R8, R2
298C76:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298C7A:  LDR             R0, =(maVertices_ptr - 0x298C84)
298C7C:  LDRD.W          R5, R3, [R7,#arg_8]
298C80:  ADD             R0, PC; maVertices_ptr
298C82:  LDR             R1, [R0]; maVertices
298C84:  MOV.W           R0, #0x3F800000
298C88:  STRD.W          R8, R6, [R1]
298C8C:  STRD.W          R0, R0, [R1,#(dword_6E0140 - 0x6E0138)]
298C90:  STRD.W          R5, R3, [R1,#(dword_6E014C - 0x6E0138)]
298C94:  LDRB            R2, [R4]
298C96:  STRB            R2, [R1,#(byte_6E0148 - 0x6E0138)]
298C98:  LDRB            R2, [R4,#1]
298C9A:  STRB            R2, [R1,#(byte_6E0149 - 0x6E0138)]
298C9C:  LDRB            R2, [R4,#2]
298C9E:  STRB            R2, [R1,#(byte_6E014A - 0x6E0138)]
298CA0:  LDRB            R2, [R4,#3]
298CA2:  STR             R6, [R1,#(dword_6E0158 - 0x6E0138)]
298CA4:  LDR             R6, [R7,#arg_10]
298CA6:  STR             R3, [R1,#(dword_6E016C - 0x6E0138)]
298CA8:  LDR.W           R12, [R7,#arg_0]
298CAC:  STRD.W          R0, R0, [R1,#(dword_6E015C - 0x6E0138)]
298CB0:  STR             R6, [R1,#(dword_6E0168 - 0x6E0138)]
298CB2:  STR.W           R12, [R1,#(dword_6E0154 - 0x6E0138)]
298CB6:  STRB            R2, [R1,#(byte_6E014B - 0x6E0138)]
298CB8:  LDRB            R2, [R4]
298CBA:  STRB.W          R2, [R1,#(byte_6E0164 - 0x6E0138)]
298CBE:  LDRB            R2, [R4,#1]
298CC0:  STRB.W          R2, [R1,#(byte_6E0165 - 0x6E0138)]
298CC4:  LDRB            R2, [R4,#2]
298CC6:  STRB.W          R2, [R1,#(byte_6E0166 - 0x6E0138)]
298CCA:  LDRB            R2, [R4,#3]
298CCC:  STRB.W          R2, [R1,#(byte_6E0167 - 0x6E0138)]
298CD0:  LDR             R2, [R7,#arg_4]
298CD2:  STR             R5, [R1,#(dword_6E0184 - 0x6E0138)]
298CD4:  LDR             R5, [R7,#arg_14]
298CD6:  STRD.W          R0, R0, [R1,#(dword_6E0178 - 0x6E0138)]
298CDA:  STR             R5, [R1,#(dword_6E0188 - 0x6E0138)]
298CDC:  STRD.W          R8, R2, [R1,#(dword_6E0170 - 0x6E0138)]
298CE0:  LDRB            R3, [R4]
298CE2:  STRB.W          R3, [R1,#(byte_6E0180 - 0x6E0138)]
298CE6:  LDRB            R3, [R4,#1]
298CE8:  STRB.W          R3, [R1,#(byte_6E0181 - 0x6E0138)]
298CEC:  LDRB            R3, [R4,#2]
298CEE:  STRB.W          R3, [R1,#(byte_6E0182 - 0x6E0138)]
298CF2:  LDRB            R3, [R4,#3]
298CF4:  STRD.W          R2, R0, [R1,#(dword_6E0190 - 0x6E0138)]
298CF8:  MOVS            R2, #4
298CFA:  STR             R0, [R1,#(dword_6E0198 - 0x6E0138)]
298CFC:  STRB.W          R3, [R1,#(byte_6E0183 - 0x6E0138)]
298D00:  STRD.W          R6, R5, [R1,#(dword_6E01A0 - 0x6E0138)]
298D04:  STR.W           R12, [R1,#(dword_6E018C - 0x6E0138)]
298D08:  LDRB            R0, [R4]
298D0A:  STRB.W          R0, [R1,#(byte_6E019C - 0x6E0138)]
298D0E:  LDRB            R0, [R4,#1]
298D10:  STRB.W          R0, [R1,#(byte_6E019D - 0x6E0138)]
298D14:  LDRB            R0, [R4,#2]
298D16:  STRB.W          R0, [R1,#(byte_6E019E - 0x6E0138)]
298D1A:  LDRB            R0, [R4,#3]
298D1C:  STRB.W          R0, [R1,#(byte_6E019F - 0x6E0138)]
298D20:  MOVS            R0, #4
298D22:  POP.W           {R8}
298D26:  POP.W           {R4-R7,LR}
298D2A:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
