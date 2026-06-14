; =========================================================
; Game Engine Function: _Z24RQ_Command_rqInitTextureRPc
; Address            : 0x1D0234 - 0x1D036E
; =========================================================

1D0234:  PUSH            {R4-R7,LR}
1D0236:  ADD             R7, SP, #0xC
1D0238:  PUSH.W          {R11}
1D023C:  LDR             R1, [R0]
1D023E:  LDR.W           R6, [R1],#4
1D0242:  STR             R1, [R0]
1D0244:  LDRD.W          R0, R1, [R6,#4]
1D0248:  LDR             R2, [R6,#0x10]
1D024A:  BLX             j__ZN9RQTexture14GetTextureSizeEjj15RQTextureFormat; RQTexture::GetTextureSize(uint,uint,RQTextureFormat)
1D024E:  LDR             R1, =(es2TexPool_ptr - 0x1D0254)
1D0250:  ADD             R1, PC; es2TexPool_ptr
1D0252:  LDR             R1, [R1]; es2TexPool
1D0254:  LDR             R1, [R1,#(dword_6BCC08 - 0x6BCC00)]
1D0256:  CBZ             R1, loc_1D028A
1D0258:  LDR             R2, =(es2TexPool_ptr - 0x1D0260)
1D025A:  MOVS            R3, #0
1D025C:  ADD             R2, PC; es2TexPool_ptr
1D025E:  LDR             R2, [R2]; es2TexPool
1D0260:  LDR             R2, [R2,#(dword_6BCC0C - 0x6BCC00)]
1D0262:  LDR.W           R5, [R2,R3,LSL#3]
1D0266:  CMP             R5, R0
1D0268:  BEQ             loc_1D0294
1D026A:  ADDS            R3, #1
1D026C:  CMP             R3, R1
1D026E:  BCC             loc_1D0262
1D0270:  ADD.W           R3, R0, R0,LSL#1
1D0274:  LSRS            R5, R3, #1
1D0276:  MOVS            R3, #0
1D0278:  LDR.W           R4, [R2,R3,LSL#3]
1D027C:  CMP             R4, R0
1D027E:  BLS             loc_1D0284
1D0280:  CMP             R4, R5
1D0282:  BLS             loc_1D0292
1D0284:  ADDS            R3, #1
1D0286:  CMP             R3, R1
1D0288:  BCC             loc_1D0278
1D028A:  MOVS            R0, #0
1D028C:  STR.W           R0, [R6,#0x28]!
1D0290:  B               loc_1D02CC
1D0292:  MOV             R0, R4
1D0294:  LDR             R5, =(es2TexPool_ptr - 0x1D029E)
1D0296:  ADD.W           LR, R2, R3,LSL#3
1D029A:  ADD             R5, PC; es2TexPool_ptr
1D029C:  LDR             R4, [R5]; es2TexPool
1D029E:  LDR.W           R5, [LR,#4]
1D02A2:  LDR.W           R12, [R4,#(dword_6BCC14 - 0x6BCC00)]
1D02A6:  CMP             R5, #0
1D02A8:  SUB.W           R0, R12, R0
1D02AC:  STR             R0, [R4,#(dword_6BCC14 - 0x6BCC00)]
1D02AE:  ADD.W           R0, R2, R1,LSL#3
1D02B2:  LDRD.W          R1, R0, [R0,#-8]
1D02B6:  STR.W           R1, [R2,R3,LSL#3]
1D02BA:  STR.W           R0, [LR,#4]
1D02BE:  LDR             R0, [R4,#(dword_6BCC08 - 0x6BCC00)]
1D02C0:  SUB.W           R0, R0, #1
1D02C4:  STR             R0, [R4,#(dword_6BCC08 - 0x6BCC00)]
1D02C6:  STR.W           R5, [R6,#0x28]!
1D02CA:  BNE             loc_1D02D6
1D02CC:  MOVS            R0, #1; n
1D02CE:  MOV             R1, R6; textures
1D02D0:  BLX             glGenTextures
1D02D4:  LDR             R5, [R6]
1D02D6:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D02DC)
1D02D8:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D02DA:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D02DC:  LDR             R0, [R0]; ES2Texture::curActiveTexture
1D02DE:  CMP             R0, #5
1D02E0:  BEQ             loc_1D02F4
1D02E2:  MOVW            R0, #0x84C5; texture
1D02E6:  BLX             glActiveTexture
1D02EA:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D02F2)
1D02EC:  MOVS            R1, #5
1D02EE:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D02F0:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D02F2:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D02F4:  MOVW            R0, #0xDE1; target
1D02F8:  MOV             R1, R5; texture
1D02FA:  BLX             glBindTexture
1D02FE:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D030C)
1D0300:  MOVW            R1, #0x2801; pname
1D0304:  MOVW            R2, #0x2601; param
1D0308:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D030A:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D030C:  STR             R5, [R0,#(dword_67A28C - 0x67A278)]
1D030E:  MOVW            R0, #0xDE1; target
1D0312:  BLX             glTexParameteri
1D0316:  MOVW            R0, #0xDE1; target
1D031A:  MOV.W           R1, #0x2800; pname
1D031E:  MOVW            R2, #0x2601; param
1D0322:  BLX             glTexParameteri
1D0326:  MOVW            R0, #0xDE1; target
1D032A:  MOVW            R1, #0x2802; pname
1D032E:  MOVW            R2, #0x812F; param
1D0332:  BLX             glTexParameteri
1D0336:  MOVW            R0, #0xDE1; target
1D033A:  MOVW            R1, #0x2803; pname
1D033E:  MOVW            R2, #0x812F; param
1D0342:  BLX             glTexParameteri
1D0346:  LDR             R0, =(RQCaps_ptr - 0x1D034C)
1D0348:  ADD             R0, PC; RQCaps_ptr
1D034A:  LDR             R0, [R0]; RQCaps
1D034C:  LDRB            R0, [R0,#(byte_6B8BA3 - 0x6B8B9C)]
1D034E:  CBZ             R0, loc_1D0368
1D0350:  MOVW            R0, #0xDE1; target
1D0354:  MOVW            R1, #0x84FE; pname
1D0358:  MOV.W           R2, #0x40000000; param
1D035C:  POP.W           {R11}
1D0360:  POP.W           {R4-R7,LR}
1D0364:  B.W             j_glTexParameterf
1D0368:  POP.W           {R11}
1D036C:  POP             {R4-R7,PC}
