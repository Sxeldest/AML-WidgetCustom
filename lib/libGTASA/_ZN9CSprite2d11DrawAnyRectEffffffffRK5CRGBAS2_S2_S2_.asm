; =========================================================
; Game Engine Function: _ZN9CSprite2d11DrawAnyRectEffffffffRK5CRGBAS2_S2_S2_
; Address            : 0x5CA6E4 - 0x5CA814
; =========================================================

5CA6E4:  PUSH            {R4-R7,LR}
5CA6E6:  ADD             R7, SP, #0xC
5CA6E8:  PUSH.W          {R8-R11}
5CA6EC:  SUB             SP, SP, #4
5CA6EE:  LDR             R4, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5CA6FE)
5CA6F0:  MOV.W           R9, #0
5CA6F4:  LDR             R5, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5CA702)
5CA6F6:  MOV.W           R8, #0x3F800000
5CA6FA:  ADD             R4, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5CA6FC:  LDR             R6, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5CA70A)
5CA6FE:  ADD             R5, PC; _ZN9CSprite2d11NearScreenZE_ptr
5CA700:  VLDR            S0, [R7,#arg_0]
5CA704:  LDR             R4, [R4]; CSprite2d::RecipNearClip ...
5CA706:  ADD             R6, PC; _ZN9CSprite2d10maVerticesE_ptr
5CA708:  LDR             R5, [R5]; CSprite2d::NearScreenZ ...
5CA70A:  LDR.W           LR, [R6]; CSprite2d::maVertices ...
5CA70E:  LDR.W           R11, [R4]; CSprite2d::RecipNearClip
5CA712:  VLDR            S2, [R7,#arg_4]
5CA716:  LDR.W           R12, [R7,#arg_18]
5CA71A:  LDR             R6, [R5]; CSprite2d::NearScreenZ
5CA71C:  VSTR            S0, [LR]
5CA720:  VSTR            S2, [LR,#4]
5CA724:  STRD.W          R9, R9, [LR,#(dword_A7C278 - 0xA7C264)]
5CA728:  STRD.W          R6, R11, [LR,#(dword_A7C26C - 0xA7C264)]
5CA72C:  LDRB.W          R4, [R12]
5CA730:  STRB.W          R4, [LR,#(byte_A7C274 - 0xA7C264)]
5CA734:  LDRB.W          R4, [R12,#1]
5CA738:  STRB.W          R4, [LR,#(byte_A7C275 - 0xA7C264)]
5CA73C:  LDRB.W          R4, [R12,#2]
5CA740:  VLDR            S0, [R7,#arg_C]
5CA744:  STRB.W          R4, [LR,#(byte_A7C276 - 0xA7C264)]
5CA748:  VLDR            S2, [R7,#arg_8]
5CA74C:  LDR             R4, [R7,#arg_1C]
5CA74E:  LDRB.W          R10, [R12,#3]
5CA752:  STRD.W          R6, R11, [LR,#(dword_A7C288 - 0xA7C264)]
5CA756:  STRD.W          R8, R9, [LR,#(dword_A7C294 - 0xA7C264)]
5CA75A:  VSTR            S2, [LR,#0x1C]
5CA75E:  VSTR            S0, [LR,#0x20]
5CA762:  STRB.W          R10, [LR,#(byte_A7C277 - 0xA7C264)]
5CA766:  LDRB            R5, [R4]
5CA768:  STRB.W          R5, [LR,#(byte_A7C290 - 0xA7C264)]
5CA76C:  LDRB            R5, [R4,#1]
5CA76E:  STRB.W          R5, [LR,#(byte_A7C291 - 0xA7C264)]
5CA772:  LDRB            R5, [R4,#2]
5CA774:  STRB.W          R5, [LR,#(byte_A7C292 - 0xA7C264)]
5CA778:  LDRB            R5, [R4,#3]
5CA77A:  STR.W           R9, [LR,#(dword_A7C2B0 - 0xA7C264)]
5CA77E:  STRD.W          R0, R1, [LR,#(dword_A7C29C - 0xA7C264)]
5CA782:  LDR             R0, [R7,#arg_10]
5CA784:  STRD.W          R6, R11, [LR,#(dword_A7C2A4 - 0xA7C264)]
5CA788:  STR.W           R8, [LR,#(dword_A7C2B4 - 0xA7C264)]
5CA78C:  STRB.W          R5, [LR,#(byte_A7C293 - 0xA7C264)]
5CA790:  LDRB            R1, [R0]
5CA792:  STRB.W          R1, [LR,#(byte_A7C2AC - 0xA7C264)]
5CA796:  LDRB            R1, [R0,#1]
5CA798:  STRB.W          R1, [LR,#(byte_A7C2AD - 0xA7C264)]
5CA79C:  LDRB            R1, [R0,#2]
5CA79E:  STRB.W          R1, [LR,#(byte_A7C2AE - 0xA7C264)]
5CA7A2:  LDRB            R1, [R0,#3]
5CA7A4:  STR.W           R6, [LR,#(dword_A7C2C0 - 0xA7C264)]
5CA7A8:  LDR             R5, [R7,#arg_14]
5CA7AA:  STR.W           R11, [LR,#(dword_A7C2C4 - 0xA7C264)]
5CA7AE:  STRD.W          R8, R8, [LR,#(dword_A7C2CC - 0xA7C264)]
5CA7B2:  STRD.W          R2, R3, [LR,#(dword_A7C2B8 - 0xA7C264)]
5CA7B6:  STRB.W          R1, [LR,#(byte_A7C2AF - 0xA7C264)]
5CA7BA:  LDRB            R1, [R5]
5CA7BC:  STRB.W          R1, [LR,#(byte_A7C2C8 - 0xA7C264)]
5CA7C0:  LDRB            R1, [R5,#1]
5CA7C2:  STRB.W          R1, [LR,#(byte_A7C2C9 - 0xA7C264)]
5CA7C6:  LDRB            R1, [R5,#2]
5CA7C8:  STRB.W          R1, [LR,#(byte_A7C2CA - 0xA7C264)]
5CA7CC:  LDRB            R1, [R5,#3]
5CA7CE:  STRB.W          R1, [LR,#(byte_A7C2CB - 0xA7C264)]
5CA7D2:  LDRB            R0, [R0,#3]
5CA7D4:  LDRB            R1, [R5,#3]
5CA7D6:  ANDS            R0, R1
5CA7D8:  UXTB            R0, R0
5CA7DA:  CMP             R0, #0xFF
5CA7DC:  ITTTT EQ
5CA7DE:  LDRBEQ.W        R0, [R12,#3]
5CA7E2:  LDRBEQ          R1, [R4,#3]
5CA7E4:  ANDEQ           R0, R1
5CA7E6:  UXTBEQ          R0, R0
5CA7E8:  IT EQ
5CA7EA:  CMPEQ           R0, #0xFF
5CA7EC:  BNE             loc_5CA7F4
5CA7EE:  MOVS            R0, #0xC
5CA7F0:  MOVS            R1, #0
5CA7F2:  B               loc_5CA7F8
5CA7F4:  MOVS            R0, #0xC
5CA7F6:  MOVS            R1, #1
5CA7F8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CA7FC:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5CA804)
5CA7FE:  MOVS            R2, #4
5CA800:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
5CA802:  LDR             R1, [R0]; CSprite2d::maVertices ...
5CA804:  MOVS            R0, #4
5CA806:  ADD             SP, SP, #4
5CA808:  POP.W           {R8-R11}
5CA80C:  POP.W           {R4-R7,LR}
5CA810:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
