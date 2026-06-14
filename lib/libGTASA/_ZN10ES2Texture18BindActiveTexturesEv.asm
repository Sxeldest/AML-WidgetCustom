; =========================================================
; Game Engine Function: _ZN10ES2Texture18BindActiveTexturesEv
; Address            : 0x1D1208 - 0x1D12E0
; =========================================================

1D1208:  PUSH            {R4,R6,R7,LR}
1D120A:  ADD             R7, SP, #8
1D120C:  LDR             R0, =(_ZN10ES2Texture14activeTexturesE_ptr - 0x1D1212)
1D120E:  ADD             R0, PC; _ZN10ES2Texture14activeTexturesE_ptr
1D1210:  LDR             R0, [R0]; ES2Texture::activeTextures ...
1D1212:  LDR             R4, [R0]; ES2Texture::activeTextures
1D1214:  CBZ             R4, loc_1D1250
1D1216:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D121C)
1D1218:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D121A:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D121C:  LDR             R0, [R0]; ES2Texture::boundTextures
1D121E:  CMP             R0, R4
1D1220:  BEQ             loc_1D1250
1D1222:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D1228)
1D1224:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D1226:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D1228:  LDR             R0, [R0]; ES2Texture::curActiveTexture
1D122A:  CBZ             R0, loc_1D123E
1D122C:  MOVW            R0, #0x84C0; texture
1D1230:  BLX             glActiveTexture
1D1234:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D123C)
1D1236:  MOVS            R1, #0
1D1238:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D123A:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D123C:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D123E:  MOVW            R0, #0xDE1; target
1D1242:  MOV             R1, R4; texture
1D1244:  BLX             glBindTexture
1D1248:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D124E)
1D124A:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D124C:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D124E:  STR             R4, [R0]; ES2Texture::boundTextures
1D1250:  LDR             R0, =(_ZN10ES2Texture14activeTexturesE_ptr - 0x1D1256)
1D1252:  ADD             R0, PC; _ZN10ES2Texture14activeTexturesE_ptr
1D1254:  LDR             R0, [R0]; ES2Texture::activeTextures ...
1D1256:  LDR             R4, [R0,#(dword_6BCC1C - 0x6BCC18)]
1D1258:  CBZ             R4, loc_1D1296
1D125A:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D1260)
1D125C:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D125E:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D1260:  LDR             R0, [R0,#(dword_67A27C - 0x67A278)]
1D1262:  CMP             R0, R4
1D1264:  BEQ             loc_1D1296
1D1266:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D126C)
1D1268:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D126A:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D126C:  LDR             R0, [R0]; ES2Texture::curActiveTexture
1D126E:  CMP             R0, #1
1D1270:  BEQ             loc_1D1284
1D1272:  MOVW            R0, #0x84C1; texture
1D1276:  BLX             glActiveTexture
1D127A:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D1282)
1D127C:  MOVS            R1, #1
1D127E:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D1280:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D1282:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D1284:  MOVW            R0, #0xDE1; target
1D1288:  MOV             R1, R4; texture
1D128A:  BLX             glBindTexture
1D128E:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D1294)
1D1290:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D1292:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D1294:  STR             R4, [R0,#(dword_67A27C - 0x67A278)]
1D1296:  LDR             R0, =(_ZN10ES2Texture14activeTexturesE_ptr - 0x1D129C)
1D1298:  ADD             R0, PC; _ZN10ES2Texture14activeTexturesE_ptr
1D129A:  LDR             R0, [R0]; ES2Texture::activeTextures ...
1D129C:  LDR             R4, [R0,#(dword_6BCC20 - 0x6BCC18)]
1D129E:  CBZ             R4, locret_1D12DE
1D12A0:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D12A6)
1D12A2:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D12A4:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D12A6:  LDR             R0, [R0,#(dword_67A280 - 0x67A278)]
1D12A8:  CMP             R0, R4
1D12AA:  IT EQ
1D12AC:  POPEQ           {R4,R6,R7,PC}
1D12AE:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D12B4)
1D12B0:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D12B2:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D12B4:  LDR             R0, [R0]; ES2Texture::curActiveTexture
1D12B6:  CMP             R0, #2
1D12B8:  BEQ             loc_1D12CC
1D12BA:  MOVW            R0, #0x84C2; texture
1D12BE:  BLX             glActiveTexture
1D12C2:  LDR             R0, =(_ZN10ES2Texture16curActiveTextureE_ptr - 0x1D12CA)
1D12C4:  MOVS            R1, #2
1D12C6:  ADD             R0, PC; _ZN10ES2Texture16curActiveTextureE_ptr
1D12C8:  LDR             R0, [R0]; ES2Texture::curActiveTexture ...
1D12CA:  STR             R1, [R0]; ES2Texture::curActiveTexture
1D12CC:  MOVW            R0, #0xDE1; target
1D12D0:  MOV             R1, R4; texture
1D12D2:  BLX             glBindTexture
1D12D6:  LDR             R0, =(_ZN10ES2Texture13boundTexturesE_ptr - 0x1D12DC)
1D12D8:  ADD             R0, PC; _ZN10ES2Texture13boundTexturesE_ptr
1D12DA:  LDR             R0, [R0]; ES2Texture::boundTextures ...
1D12DC:  STR             R4, [R0,#(dword_67A280 - 0x67A278)]
1D12DE:  POP             {R4,R6,R7,PC}
