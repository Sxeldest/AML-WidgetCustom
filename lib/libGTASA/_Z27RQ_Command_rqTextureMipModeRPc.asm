; =========================================================
; Game Engine Function: _Z27RQ_Command_rqTextureMipModeRPc
; Address            : 0x1D03D0 - 0x1D0464
; =========================================================

1D03D0:  PUSH            {R4,R5,R7,LR}
1D03D2:  ADD             R7, SP, #8
1D03D4:  LDR             R1, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D03DC)
1D03D6:  LDR             R2, [R0]
1D03D8:  ADD             R1, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D03DA:  ADDS            R5, R2, #4
1D03DC:  MOV             R3, R2
1D03DE:  LDR             R1, [R1]; ES2Texture::curActiveTexture ...
1D03E0:  LDR.W           R4, [R3],#8
1D03E4:  STR             R5, [R0]
1D03E6:  LDR             R5, [R2,#4]
1D03E8:  STR             R3, [R0]
1D03EA:  LDR             R0, [R1]; ES2Texture::curActiveTexture
1D03EC:  LDR             R4, [R4,#0x28]
1D03EE:  CMP             R0, #5
1D03F0:  BEQ             loc_1D0404
1D03F2:  MOVW            R0, #0x84C5; texture
1D03F6:  BLX             glActiveTexture
1D03FA:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D0402)
1D03FC:  MOVS            R1, #5
1D03FE:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D0400:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D0402:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D0404:  MOVW            R0, #0xDE1; target
1D0408:  MOV             R1, R4; texture
1D040A:  BLX             glBindTexture
1D040E:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D0416)
1D0410:  CMP             R5, #2
1D0412:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D0414:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D0416:  STR             R4, [R0,#(dword_67A28C - 0x67A278)]
1D0418:  BEQ             loc_1D0432
1D041A:  CMP             R5, #1
1D041C:  BEQ             loc_1D0440
1D041E:  CMP             R5, #0
1D0420:  IT NE
1D0422:  POPNE           {R4,R5,R7,PC}
1D0424:  MOVW            R0, #0xDE1
1D0428:  MOVW            R1, #0x2801
1D042C:  MOVW            R2, #0x2601
1D0430:  B               loc_1D044C
1D0432:  MOVW            R0, #0xDE1
1D0436:  MOVW            R1, #0x2801
1D043A:  MOVW            R2, #0x2703
1D043E:  B               loc_1D044C
1D0440:  MOVW            R0, #0xDE1; target
1D0444:  MOVW            R1, #0x2801; pname
1D0448:  MOVW            R2, #0x2701; param
1D044C:  BLX             glTexParameteri
1D0450:  MOVW            R0, #0xDE1; target
1D0454:  MOV.W           R1, #0x2800; pname
1D0458:  MOVW            R2, #0x2601; param
1D045C:  POP.W           {R4,R5,R7,LR}
1D0460:  B.W             j_glTexParameteri
