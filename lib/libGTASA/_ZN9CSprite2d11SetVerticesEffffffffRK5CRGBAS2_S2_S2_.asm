; =========================================================
; Game Engine Function: _ZN9CSprite2d11SetVerticesEffffffffRK5CRGBAS2_S2_S2_
; Address            : 0x5C9D04 - 0x5C9DEC
; =========================================================

5C9D04:  PUSH            {R4-R7,LR}
5C9D06:  ADD             R7, SP, #0xC
5C9D08:  PUSH.W          {R8,R9,R11}
5C9D0C:  LDR             R4, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C9D1E)
5C9D0E:  MOV.W           R8, #0
5C9D12:  LDR             R6, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C9D20)
5C9D14:  MOV.W           R9, #0x3F800000
5C9D18:  LDR             R5, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C9D28)
5C9D1A:  ADD             R4, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C9D1C:  ADD             R6, PC; _ZN9CSprite2d10maVerticesE_ptr
5C9D1E:  VLDR            S0, [R7,#arg_0]
5C9D22:  LDR             R4, [R4]; CSprite2d::RecipNearClip ...
5C9D24:  ADD             R5, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C9D26:  LDR.W           R12, [R6]; CSprite2d::maVertices ...
5C9D2A:  LDR             R6, [R5]; CSprite2d::NearScreenZ ...
5C9D2C:  LDR             R4, [R4]; CSprite2d::RecipNearClip
5C9D2E:  VLDR            S2, [R7,#arg_4]
5C9D32:  LDR             R5, [R7,#arg_18]
5C9D34:  LDR.W           LR, [R6]; CSprite2d::NearScreenZ
5C9D38:  VSTR            S0, [R12]
5C9D3C:  VSTR            S2, [R12,#4]
5C9D40:  STRD.W          R8, R8, [R12,#(dword_A7C278 - 0xA7C264)]
5C9D44:  STRD.W          LR, R4, [R12,#(dword_A7C26C - 0xA7C264)]
5C9D48:  LDRB            R6, [R5]
5C9D4A:  STRB.W          R6, [R12,#(byte_A7C274 - 0xA7C264)]
5C9D4E:  LDRB            R6, [R5,#1]
5C9D50:  STRB.W          R6, [R12,#(byte_A7C275 - 0xA7C264)]
5C9D54:  LDRB            R6, [R5,#2]
5C9D56:  STRB.W          R6, [R12,#(byte_A7C276 - 0xA7C264)]
5C9D5A:  VLDR            S0, [R7,#arg_C]
5C9D5E:  VLDR            S2, [R7,#arg_8]
5C9D62:  LDR             R6, [R7,#arg_1C]
5C9D64:  LDRB            R5, [R5,#3]
5C9D66:  STRD.W          LR, R4, [R12,#(dword_A7C288 - 0xA7C264)]
5C9D6A:  STRD.W          R9, R8, [R12,#(dword_A7C294 - 0xA7C264)]
5C9D6E:  VSTR            S2, [R12,#0x1C]
5C9D72:  VSTR            S0, [R12,#0x20]
5C9D76:  STRB.W          R5, [R12,#(byte_A7C277 - 0xA7C264)]
5C9D7A:  LDRB            R5, [R6]
5C9D7C:  STRB.W          R5, [R12,#(byte_A7C290 - 0xA7C264)]
5C9D80:  LDRB            R5, [R6,#1]
5C9D82:  STRB.W          R5, [R12,#(byte_A7C291 - 0xA7C264)]
5C9D86:  LDRB            R5, [R6,#2]
5C9D88:  STRB.W          R5, [R12,#(byte_A7C292 - 0xA7C264)]
5C9D8C:  LDRB            R5, [R6,#3]
5C9D8E:  LDR             R6, [R7,#arg_10]
5C9D90:  STR.W           R4, [R12,#(dword_A7C2A8 - 0xA7C264)]
5C9D94:  STRD.W          R8, R9, [R12,#(dword_A7C2B0 - 0xA7C264)]
5C9D98:  ADD.W           R8, R12, #0x38 ; '8'
5C9D9C:  STM.W           R8, {R0,R1,LR}
5C9DA0:  STRB.W          R5, [R12,#(byte_A7C293 - 0xA7C264)]
5C9DA4:  LDRB            R0, [R6]
5C9DA6:  STRB.W          R0, [R12,#(byte_A7C2AC - 0xA7C264)]
5C9DAA:  LDRB            R0, [R6,#1]
5C9DAC:  STRB.W          R0, [R12,#(byte_A7C2AD - 0xA7C264)]
5C9DB0:  LDRB            R0, [R6,#2]
5C9DB2:  STRB.W          R0, [R12,#(byte_A7C2AE - 0xA7C264)]
5C9DB6:  LDR             R1, [R7,#arg_14]
5C9DB8:  LDRB            R0, [R6,#3]
5C9DBA:  STR.W           R4, [R12,#(dword_A7C2C4 - 0xA7C264)]
5C9DBE:  ADD.W           R4, R12, #0x54 ; 'T'
5C9DC2:  STRD.W          R9, R9, [R12,#(dword_A7C2CC - 0xA7C264)]
5C9DC6:  STM.W           R4, {R2,R3,LR}
5C9DCA:  STRB.W          R0, [R12,#(byte_A7C2AF - 0xA7C264)]
5C9DCE:  LDRB            R0, [R1]
5C9DD0:  STRB.W          R0, [R12,#(byte_A7C2C8 - 0xA7C264)]
5C9DD4:  LDRB            R0, [R1,#1]
5C9DD6:  STRB.W          R0, [R12,#(byte_A7C2C9 - 0xA7C264)]
5C9DDA:  LDRB            R0, [R1,#2]
5C9DDC:  STRB.W          R0, [R12,#(byte_A7C2CA - 0xA7C264)]
5C9DE0:  LDRB            R0, [R1,#3]
5C9DE2:  STRB.W          R0, [R12,#(byte_A7C2CB - 0xA7C264)]
5C9DE6:  POP.W           {R8,R9,R11}
5C9DEA:  POP             {R4-R7,PC}
