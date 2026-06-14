; =========================================================
; Game Engine Function: _Z24RQ_Command_rqTextureWrapRPc
; Address            : 0x1D04F4 - 0x1D059E
; =========================================================

1D04F4:  PUSH            {R4-R7,LR}
1D04F6:  ADD             R7, SP, #0xC
1D04F8:  PUSH.W          {R11}
1D04FC:  LDR             R2, [R0]
1D04FE:  LDR             R1, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D050A)
1D0500:  ADDS            R6, R2, #4
1D0502:  ADD.W           R5, R2, #8
1D0506:  ADD             R1, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D0508:  MOV             R3, R2
1D050A:  LDR.W           R4, [R3],#0xC
1D050E:  STR             R6, [R0]
1D0510:  LDR             R1, [R1]; ES2Texture::curActiveTexture ...
1D0512:  LDR             R6, [R2,#4]
1D0514:  STR             R5, [R0]
1D0516:  LDR             R5, [R2,#8]
1D0518:  STR             R3, [R0]
1D051A:  LDR             R0, [R1]; ES2Texture::curActiveTexture
1D051C:  LDR             R4, [R4,#0x28]
1D051E:  CMP             R0, #5
1D0520:  BEQ             loc_1D0534
1D0522:  MOVW            R0, #0x84C5; texture
1D0526:  BLX             glActiveTexture
1D052A:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D0532)
1D052C:  MOVS            R1, #5
1D052E:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D0530:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D0532:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D0534:  MOVW            R0, #0xDE1; target
1D0538:  MOV             R1, R4; texture
1D053A:  BLX             glBindTexture
1D053E:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D0546)
1D0540:  CMP             R6, #0
1D0542:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D0544:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D0546:  STR             R4, [R0,#(dword_67A28C - 0x67A278)]
1D0548:  BEQ             loc_1D055C
1D054A:  CMP             R6, #1
1D054C:  BNE             loc_1D056C
1D054E:  MOVW            R0, #0xDE1
1D0552:  MOVW            R1, #0x2802
1D0556:  MOVW            R2, #0x812F
1D055A:  B               loc_1D0568
1D055C:  MOVW            R0, #0xDE1; target
1D0560:  MOVW            R1, #0x2802; pname
1D0564:  MOVW            R2, #0x2901; param
1D0568:  BLX             glTexParameteri
1D056C:  CBZ             R5, loc_1D0586
1D056E:  CMP             R5, #1
1D0570:  ITT NE
1D0572:  POPNE.W         {R11}
1D0576:  POPNE           {R4-R7,PC}
1D0578:  MOVW            R0, #0xDE1
1D057C:  MOVW            R1, #0x2803
1D0580:  MOVW            R2, #0x812F
1D0584:  B               loc_1D0592
1D0586:  MOVW            R0, #0xDE1; target
1D058A:  MOVW            R1, #0x2803; pname
1D058E:  MOVW            R2, #0x2901; param
1D0592:  POP.W           {R11}
1D0596:  POP.W           {R4-R7,LR}
1D059A:  B.W             j_glTexParameteri
