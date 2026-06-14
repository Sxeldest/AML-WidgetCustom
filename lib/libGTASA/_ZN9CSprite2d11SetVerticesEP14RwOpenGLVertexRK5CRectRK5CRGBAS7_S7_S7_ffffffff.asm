; =========================================================
; Game Engine Function: _ZN9CSprite2d11SetVerticesEP14RwOpenGLVertexRK5CRectRK5CRGBAS7_S7_S7_ffffffff
; Address            : 0x5C8D18 - 0x5C8E0E
; =========================================================

5C8D18:  PUSH            {R4-R7,LR}
5C8D1A:  ADD             R7, SP, #0xC
5C8D1C:  PUSH.W          {R11}
5C8D20:  LDR             R4, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C8D2A)
5C8D22:  LDR.W           R12, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C8D2E)
5C8D26:  ADD             R4, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C8D28:  LDR             R5, [R1]
5C8D2A:  ADD             R12, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C8D2C:  VLDR            S0, [R7,#arg_8]
5C8D30:  LDR             R4, [R4]; CSprite2d::NearScreenZ ...
5C8D32:  LDR.W           R12, [R12]; CSprite2d::RecipNearClip ...
5C8D36:  VLDR            S2, [R7,#arg_C]
5C8D3A:  LDR.W           LR, [R4]; CSprite2d::NearScreenZ
5C8D3E:  STR             R5, [R0]
5C8D40:  LDR             R4, [R1,#0xC]
5C8D42:  STRD.W          R4, LR, [R0,#4]
5C8D46:  LDR             R5, [R7,#arg_0]
5C8D48:  LDR.W           R4, [R12]; CSprite2d::RecipNearClip
5C8D4C:  STR             R4, [R0,#0xC]
5C8D4E:  VSTR            S0, [R0,#0x14]
5C8D52:  VSTR            S2, [R0,#0x18]
5C8D56:  LDRB            R6, [R5]
5C8D58:  STRB            R6, [R0,#0x10]
5C8D5A:  LDRB            R6, [R5,#1]
5C8D5C:  STRB            R6, [R0,#0x11]
5C8D5E:  LDRB            R6, [R5,#2]
5C8D60:  STRB            R6, [R0,#0x12]
5C8D62:  LDRB            R5, [R5,#3]
5C8D64:  STRB            R5, [R0,#0x13]
5C8D66:  LDR             R5, [R1,#8]
5C8D68:  STR             R5, [R0,#0x1C]
5C8D6A:  VLDR            S0, [R7,#arg_10]
5C8D6E:  LDR             R6, [R7,#arg_4]
5C8D70:  VLDR            S2, [R7,#arg_14]
5C8D74:  LDR             R5, [R1,#0xC]
5C8D76:  STRD.W          R5, LR, [R0,#0x20]
5C8D7A:  STR             R4, [R0,#0x28]
5C8D7C:  VSTR            S0, [R0,#0x30]
5C8D80:  VSTR            S2, [R0,#0x34]
5C8D84:  LDRB            R5, [R6]
5C8D86:  STRB.W          R5, [R0,#0x2C]
5C8D8A:  LDRB            R5, [R6,#1]
5C8D8C:  STRB.W          R5, [R0,#0x2D]
5C8D90:  LDRB            R5, [R6,#2]
5C8D92:  STRB.W          R5, [R0,#0x2E]
5C8D96:  LDRB            R5, [R6,#3]
5C8D98:  STRB.W          R5, [R0,#0x2F]
5C8D9C:  LDR             R5, [R1,#8]
5C8D9E:  STR             R5, [R0,#0x38]
5C8DA0:  VLDR            S0, [R7,#arg_20]
5C8DA4:  VLDR            S2, [R7,#arg_24]
5C8DA8:  LDR             R5, [R1,#4]
5C8DAA:  STRD.W          R5, LR, [R0,#0x3C]
5C8DAE:  STR             R4, [R0,#0x44]
5C8DB0:  VSTR            S0, [R0,#0x4C]
5C8DB4:  VSTR            S2, [R0,#0x50]
5C8DB8:  LDRB            R4, [R3]
5C8DBA:  STRB.W          R4, [R0,#0x48]
5C8DBE:  LDRB            R4, [R3,#1]
5C8DC0:  STRB.W          R4, [R0,#0x49]
5C8DC4:  LDRB            R4, [R3,#2]
5C8DC6:  STRB.W          R4, [R0,#0x4A]
5C8DCA:  LDRB            R3, [R3,#3]
5C8DCC:  STRB.W          R3, [R0,#0x4B]
5C8DD0:  LDR             R3, [R1]
5C8DD2:  STR             R3, [R0,#0x54]
5C8DD4:  LDR             R1, [R1,#4]
5C8DD6:  STRD.W          R1, LR, [R0,#0x58]
5C8DDA:  VLDR            S0, [R7,#arg_18]
5C8DDE:  VLDR            S2, [R7,#arg_1C]
5C8DE2:  LDR.W           R1, [R12]; CSprite2d::RecipNearClip
5C8DE6:  STR             R1, [R0,#0x60]
5C8DE8:  VSTR            S0, [R0,#0x68]
5C8DEC:  VSTR            S2, [R0,#0x6C]
5C8DF0:  LDRB            R1, [R2]
5C8DF2:  STRB.W          R1, [R0,#0x64]
5C8DF6:  LDRB            R1, [R2,#1]
5C8DF8:  STRB.W          R1, [R0,#0x65]
5C8DFC:  LDRB            R1, [R2,#2]
5C8DFE:  STRB.W          R1, [R0,#0x66]
5C8E02:  LDRB            R1, [R2,#3]
5C8E04:  STRB.W          R1, [R0,#0x67]
5C8E08:  POP.W           {R11}
5C8E0C:  POP             {R4-R7,PC}
