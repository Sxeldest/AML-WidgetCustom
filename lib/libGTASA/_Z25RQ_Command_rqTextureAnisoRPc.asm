; =========================================================
; Game Engine Function: _Z25RQ_Command_rqTextureAnisoRPc
; Address            : 0x1D0470 - 0x1D04E8
; =========================================================

1D0470:  PUSH            {R4,R5,R7,LR}
1D0472:  ADD             R7, SP, #8
1D0474:  LDR             R1, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D047C)
1D0476:  LDR             R2, [R0]
1D0478:  ADD             R1, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D047A:  ADDS            R5, R2, #4
1D047C:  MOV             R3, R2
1D047E:  LDR             R1, [R1]; ES2Texture::curActiveTexture ...
1D0480:  LDR.W           R4, [R3],#8
1D0484:  STR             R5, [R0]
1D0486:  LDR             R5, [R2,#4]
1D0488:  STR             R3, [R0]
1D048A:  LDR             R0, [R1]; ES2Texture::curActiveTexture
1D048C:  LDR             R4, [R4,#0x28]
1D048E:  CMP             R0, #5
1D0490:  BEQ             loc_1D04A4
1D0492:  MOVW            R0, #0x84C5; texture
1D0496:  BLX             glActiveTexture
1D049A:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D04A2)
1D049C:  MOVS            R1, #5
1D049E:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D04A0:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D04A2:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D04A4:  MOVW            R0, #0xDE1; target
1D04A8:  MOV             R1, R4; texture
1D04AA:  BLX             glBindTexture
1D04AE:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D04B6)
1D04B0:  CMP             R5, #1
1D04B2:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D04B4:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D04B6:  STR             R4, [R0,#(dword_67A28C - 0x67A278)]
1D04B8:  BEQ             loc_1D04D4
1D04BA:  CMP             R5, #0
1D04BC:  IT NE
1D04BE:  POPNE           {R4,R5,R7,PC}
1D04C0:  MOVW            R0, #0xDE1; target
1D04C4:  MOVW            R1, #0x84FE; pname
1D04C8:  MOV.W           R2, #0x40000000; param
1D04CC:  POP.W           {R4,R5,R7,LR}
1D04D0:  B.W             j_glTexParameterf
1D04D4:  MOVW            R0, #0xDE1; target
1D04D8:  MOVW            R1, #0x84FE; pname
1D04DC:  MOV.W           R2, #0x40800000; param
1D04E0:  POP.W           {R4,R5,R7,LR}
1D04E4:  B.W             j_glTexParameterf
