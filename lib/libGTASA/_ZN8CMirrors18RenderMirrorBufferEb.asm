; =========================================================
; Game Engine Function: _ZN8CMirrors18RenderMirrorBufferEb
; Address            : 0x5C5178 - 0x5C55F8
; =========================================================

5C5178:  PUSH            {R4-R7,LR}
5C517A:  ADD             R7, SP, #0xC
5C517C:  PUSH.W          {R8-R11}
5C5180:  SUB             SP, SP, #4
5C5182:  VPUSH           {D8-D10}
5C5186:  SUB             SP, SP, #8
5C5188:  MOV             R4, R0
5C518A:  LDR.W           R0, =(_ZN8CMirrors12TypeOfMirrorE_ptr - 0x5C5192)
5C518E:  ADD             R0, PC; _ZN8CMirrors12TypeOfMirrorE_ptr
5C5190:  LDR             R0, [R0]; CMirrors::TypeOfMirror ...
5C5192:  LDR             R0, [R0]; CMirrors::TypeOfMirror
5C5194:  CMP             R0, #0
5C5196:  BEQ.W           loc_5C55EA
5C519A:  LDR.W           R0, =(Scene_ptr - 0x5C51A2)
5C519E:  ADD             R0, PC; Scene_ptr
5C51A0:  LDR             R0, [R0]; Scene
5C51A2:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5C51A4:  LDR             R0, [R0,#0x60]
5C51A6:  VLDR            S0, [R0,#0xC]
5C51AA:  VLDR            S2, [R0,#0x10]
5C51AE:  VCVT.F32.S32    S18, S2
5C51B2:  VCVT.F32.S32    S16, S0
5C51B6:  BLX.W           j__Z12DefinedStatev; DefinedState(void)
5C51BA:  MOVS            R0, #9
5C51BC:  MOVS            R1, #2
5C51BE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51C2:  MOVS            R0, #0xE
5C51C4:  MOVS            R1, #0
5C51C6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51CA:  MOVS            R0, #6
5C51CC:  MOVS            R1, #0
5C51CE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51D2:  MOVS            R0, #8
5C51D4:  MOVS            R1, #0
5C51D6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51DA:  LDR.W           R0, =(_ZN8CMirrors7pBufferE_ptr - 0x5C51E2)
5C51DE:  ADD             R0, PC; _ZN8CMirrors7pBufferE_ptr
5C51E0:  LDR             R0, [R0]; CMirrors::pBuffer ...
5C51E2:  LDR             R1, [R0]; CMirrors::pBuffer
5C51E4:  MOVS            R0, #1
5C51E6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51EA:  MOVS            R0, #0xC
5C51EC:  MOVS            R1, #0
5C51EE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51F2:  MOVS            R0, #0xA
5C51F4:  MOVS            R1, #2
5C51F6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C51FA:  MOVS            R0, #0xB
5C51FC:  MOVS            R1, #1
5C51FE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C5202:  LDR.W           R0, =(_ZN8CMirrors11MirrorFlagsE_ptr - 0x5C520A)
5C5206:  ADD             R0, PC; _ZN8CMirrors11MirrorFlagsE_ptr
5C5208:  LDR             R0, [R0]; CMirrors::MirrorFlags ...
5C520A:  LDR             R0, [R0]; CMirrors::MirrorFlags
5C520C:  LSLS            R0, R0, #0x1E
5C520E:  BMI             loc_5C52DC
5C5210:  LDR.W           R0, =(bFudgeNow_ptr - 0x5C5218)
5C5214:  ADD             R0, PC; bFudgeNow_ptr
5C5216:  LDR             R0, [R0]; bFudgeNow
5C5218:  LDRB            R0, [R0]
5C521A:  CMP             R0, #0
5C521C:  BNE             loc_5C52DC
5C521E:  CMP             R4, #0
5C5220:  BNE.W           loc_5C55EA
5C5224:  LDR.W           R4, =(dword_A5A168 - 0x5C5232)
5C5228:  MOVS            R5, #0
5C522A:  LDR.W           R0, =(Scene_ptr - 0x5C5234)
5C522E:  ADD             R4, PC; dword_A5A168
5C5230:  ADD             R0, PC; Scene_ptr
5C5232:  STRD.W          R5, R5, [R4]
5C5236:  LDR             R6, [R0]; Scene
5C5238:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C523C:  VMOV.F32        S20, #1.0
5C5240:  LDR             R1, [R6,#(dword_9FC93C - 0x9FC938)]
5C5242:  STR             R0, [R4,#(dword_A5A170 - 0xA5A168)]
5C5244:  MOVW            R8, #0xDCDC
5C5248:  MOV.W           R9, #0x3F800000
5C524C:  MOVT            R8, #0xFFFF
5C5250:  VLDR            S0, [R1,#0x80]
5C5254:  STRD.W          R8, R9, [R4,#(dword_A5A178 - 0xA5A168)]
5C5258:  STRD.W          R5, R5, [R4,#(dword_A5A180 - 0xA5A168)]
5C525C:  VSTR            S18, [R4,#0x20]
5C5260:  VDIV.F32        S0, S20, S0
5C5264:  VSTR            S0, [R4,#0xC]
5C5268:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C526C:  STR             R0, [R4,#(dword_A5A18C - 0xA5A168)]
5C526E:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
5C5270:  VLDR            S0, [R0,#0x80]
5C5274:  STRD.W          R8, R9, [R4,#(dword_A5A194 - 0xA5A168)]
5C5278:  VDIV.F32        S0, S20, S0
5C527C:  STR.W           R9, [R4,#(dword_A5A19C - 0xA5A168)]
5C5280:  VSTR            S16, [R4,#0x38]
5C5284:  VSTR            S18, [R4,#0x3C]
5C5288:  VSTR            S0, [R4,#0x28]
5C528C:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C5290:  STR             R0, [R4,#(dword_A5A1A8 - 0xA5A168)]
5C5292:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
5C5294:  VLDR            S0, [R0,#0x80]
5C5298:  STRD.W          R8, R5, [R4,#(dword_A5A1B0 - 0xA5A168)]
5C529C:  VDIV.F32        S0, S20, S0
5C52A0:  STR.W           R9, [R4,#(dword_A5A1B8 - 0xA5A168)]
5C52A4:  STR             R5, [R4,#(dword_A5A1C0 - 0xA5A168)]
5C52A6:  VSTR            S16, [R4,#0x54]
5C52AA:  VSTR            S0, [R4,#0x44]
5C52AE:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5C52B2:  STR             R0, [R4,#(dword_A5A1C4 - 0xA5A168)]
5C52B4:  MOV             R1, R4
5C52B6:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
5C52B8:  MOVS            R2, #4
5C52BA:  LDR             R3, =(dword_6B23A4 - 0x5C52C4)
5C52BC:  VLDR            S0, [R0,#0x80]
5C52C0:  ADD             R3, PC; dword_6B23A4
5C52C2:  MOVS            R0, #6
5C52C4:  STRD.W          R8, R5, [R4,#(dword_A5A1CC - 0xA5A168)]
5C52C8:  VDIV.F32        S0, S20, S0
5C52CC:  STR             R5, [R4,#(dword_A5A1D4 - 0xA5A168)]
5C52CE:  VSTR            S0, [R4,#0x60]
5C52D2:  STR             R0, [SP,#0x40+var_40]
5C52D4:  MOVS            R0, #3
5C52D6:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C52DA:  B               loc_5C5470
5C52DC:  CMP             R4, #1
5C52DE:  BNE.W           loc_5C55EA
5C52E2:  MOVS            R0, #8
5C52E4:  MOVS            R1, #1
5C52E6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C52EA:  MOVS            R0, #6
5C52EC:  MOVS            R1, #1
5C52EE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C52F2:  MOVS            R0, #0xC
5C52F4:  MOVS            R1, #0
5C52F6:  MOV.W           R10, #0
5C52FA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C52FE:  MOVS            R0, #0xE
5C5300:  MOVS            R1, #1
5C5302:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C5306:  LDR             R0, =(Screens8Track_ptr - 0x5C5316)
5C5308:  MOV.W           R11, #0xFFFFFFFF
5C530C:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C5318)
5C530E:  MOV.W           R8, #0x3F800000
5C5312:  ADD             R0, PC; Screens8Track_ptr
5C5314:  ADD             R1, PC; TempVertexBuffer_ptr
5C5316:  LDR             R2, [R0]; Screens8Track
5C5318:  LDR             R0, [R1]; TempVertexBuffer
5C531A:  LDRD.W          R12, R3, [R2]
5C531E:  LDRD.W          R6, R4, [R2,#(dword_6B234C - 0x6B2344)]
5C5322:  LDRD.W          R5, R1, [R2,#(dword_6B2354 - 0x6B2344)]
5C5326:  LDRD.W          LR, R9, [R2,#(dword_6B235C - 0x6B2344)]
5C532A:  STR             R1, [R0,#(dword_A5A204 - 0xA5A1D8)]
5C532C:  STRD.W          R12, R3, [R0]
5C5330:  STR             R6, [R0,#(dword_A5A1E0 - 0xA5A1D8)]
5C5332:  STRD.W          R4, R5, [R0,#(dword_A5A1FC - 0xA5A1D8)]
5C5336:  LDRD.W          R3, R6, [R2,#(dword_6B2364 - 0x6B2344)]
5C533A:  LDRD.W          R5, R2, [R2,#(dword_6B236C - 0x6B2344)]
5C533E:  STR.W           LR, [R0,#(dword_A5A220 - 0xA5A1D8)]
5C5342:  STRD.W          R9, R3, [R0,#(dword_A5A224 - 0xA5A1D8)]
5C5346:  STR             R6, [R0,#(dword_A5A244 - 0xA5A1D8)]
5C5348:  MOVS            R6, #6
5C534A:  STR             R2, [R0,#(dword_A5A24C - 0xA5A1D8)]
5C534C:  LDR             R2, =(TempBufferIndicesStored_ptr - 0x5C5356)
5C534E:  LDR             R3, =(TempBufferVerticesStored_ptr - 0x5C5358)
5C5350:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C535C)
5C5352:  ADD             R2, PC; TempBufferIndicesStored_ptr
5C5354:  ADD             R3, PC; TempBufferVerticesStored_ptr
5C5356:  STR             R5, [R0,#(dword_A5A248 - 0xA5A1D8)]
5C5358:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C535A:  LDR             R5, =(dword_6B23A4 - 0x5C5364)
5C535C:  LDR             R2, [R2]; TempBufferIndicesStored
5C535E:  LDR             R3, [R3]; TempBufferVerticesStored
5C5360:  ADD             R5, PC; dword_6B23A4
5C5362:  LDR             R1, [R1]; TempBufferRenderIndexList
5C5364:  STR.W           R11, [R0,#(dword_A5A214 - 0xA5A1D8)]
5C5368:  STR.W           R11, [R0,#(dword_A5A238 - 0xA5A1D8)]
5C536C:  STR.W           R11, [R0,#(dword_A5A25C - 0xA5A1D8)]
5C5370:  STR.W           R10, [R0,#(dword_A5A1F8 - 0xA5A1D8)]
5C5374:  STRD.W          R11, R10, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
5C5378:  STR.W           R10, [R0,#(dword_A5A21C - 0xA5A1D8)]
5C537C:  STR.W           R8, [R0,#(dword_A5A218 - 0xA5A1D8)]
5C5380:  STRD.W          R8, R8, [R0,#(dword_A5A23C - 0xA5A1D8)]
5C5384:  STR             R6, [R2]
5C5386:  MOVS            R2, #4
5C5388:  STR             R2, [R3]
5C538A:  LDR             R2, [R5]
5C538C:  LDR             R3, [R5,#(dword_6B23A8 - 0x6B23A4)]
5C538E:  LDR             R5, [R5,#(dword_6B23AC - 0x6B23A4)]
5C5390:  STR             R2, [R1]
5C5392:  MOVS            R2, #0
5C5394:  STR             R3, [R1,#(dword_A7A1DC - 0xA7A1D8)]
5C5396:  MOVS            R3, #1
5C5398:  STR             R5, [R1,#(dword_A7A1E0 - 0xA7A1D8)]
5C539A:  MOVS            R1, #4
5C539C:  STR.W           R8, [R0,#(dword_A5A264 - 0xA5A1D8)]
5C53A0:  STR.W           R10, [R0,#(dword_A5A260 - 0xA5A1D8)]
5C53A4:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C53A8:  CBZ             R0, loc_5C53C2
5C53AA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C53B2)
5C53AC:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C53B4)
5C53AE:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C53B0:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C53B2:  LDR             R0, [R0]; TempBufferIndicesStored
5C53B4:  LDR             R1, [R1]; TempBufferRenderIndexList
5C53B6:  LDR             R2, [R0]
5C53B8:  MOVS            R0, #3
5C53BA:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C53BE:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C53C2:  LDR             R0, =(Screens8Track_ptr - 0x5C53CA)
5C53C4:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C53CC)
5C53C6:  ADD             R0, PC; Screens8Track_ptr
5C53C8:  ADD             R1, PC; TempVertexBuffer_ptr
5C53CA:  LDR             R2, [R0]; Screens8Track
5C53CC:  LDR             R0, [R1]; TempVertexBuffer
5C53CE:  ADD.W           R12, R2, #0x30 ; '0'
5C53D2:  ADD.W           LR, R2, #0x40 ; '@'
5C53D6:  LDM.W           R12, {R1,R3,R5,R12}
5C53DA:  LDM.W           LR, {R4,R6,LR}
5C53DE:  LDR.W           R9, [R2,#(dword_6B2390 - 0x6B2344)]
5C53E2:  STM.W           R0, {R1,R3,R5}
5C53E6:  STR             R6, [R0,#(dword_A5A204 - 0xA5A1D8)]
5C53E8:  ADD.W           R6, R2, #0x50 ; 'P'
5C53EC:  STRD.W          R12, R4, [R0,#(dword_A5A1FC - 0xA5A1D8)]
5C53F0:  LDM             R6, {R1,R3,R6}
5C53F2:  LDR             R2, [R2,#(dword_6B23A0 - 0x6B2344)]
5C53F4:  LDR             R4, =(TempBufferRenderIndexList_ptr - 0x5C5400)
5C53F6:  STR             R1, [R0,#(dword_A5A228 - 0xA5A1D8)]
5C53F8:  STRD.W          LR, R9, [R0,#(dword_A5A220 - 0xA5A1D8)]
5C53FC:  ADD             R4, PC; TempBufferRenderIndexList_ptr
5C53FE:  STR.W           R10, [R0,#(dword_A5A1F8 - 0xA5A1D8)]
5C5402:  STRD.W          R11, R10, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
5C5406:  STR.W           R10, [R0,#(dword_A5A21C - 0xA5A1D8)]
5C540A:  STRD.W          R11, R8, [R0,#(dword_A5A214 - 0xA5A1D8)]
5C540E:  STRD.W          R11, R8, [R0,#(dword_A5A238 - 0xA5A1D8)]
5C5412:  STRD.W          R8, R3, [R0,#(dword_A5A240 - 0xA5A1D8)]
5C5416:  STRD.W          R6, R2, [R0,#(dword_A5A248 - 0xA5A1D8)]
5C541A:  LDR             R6, =(TempBufferIndicesStored_ptr - 0x5C5424)
5C541C:  LDR             R5, =(TempBufferVerticesStored_ptr - 0x5C5426)
5C541E:  LDR             R1, =(dword_6B23A4 - 0x5C542A)
5C5420:  ADD             R6, PC; TempBufferIndicesStored_ptr
5C5422:  ADD             R5, PC; TempBufferVerticesStored_ptr
5C5424:  LDR             R4, [R4]; TempBufferRenderIndexList
5C5426:  ADD             R1, PC; dword_6B23A4
5C5428:  LDR             R6, [R6]; TempBufferIndicesStored
5C542A:  STRD.W          R11, R10, [R0,#(dword_A5A25C - 0xA5A1D8)]
5C542E:  LDR.W           R12, [R5]; TempBufferVerticesStored
5C5432:  MOVS            R5, #6
5C5434:  LDR             R2, [R1]
5C5436:  LDR             R3, [R1,#(dword_6B23A8 - 0x6B23A4)]
5C5438:  LDR             R1, [R1,#(dword_6B23AC - 0x6B23A4)]
5C543A:  STR             R2, [R4]
5C543C:  MOVS            R2, #0
5C543E:  STR             R3, [R4,#(dword_A7A1DC - 0xA7A1D8)]
5C5440:  MOVS            R3, #1
5C5442:  STR             R5, [R6]
5C5444:  MOVS            R6, #4
5C5446:  STR             R1, [R4,#(dword_A7A1E0 - 0xA7A1D8)]
5C5448:  MOVS            R1, #4
5C544A:  STR.W           R8, [R0,#(dword_A5A264 - 0xA5A1D8)]
5C544E:  STR.W           R6, [R12]
5C5452:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C5456:  CBZ             R0, loc_5C5470
5C5458:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C5460)
5C545A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C5462)
5C545C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C545E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C5460:  LDR             R0, [R0]; TempBufferIndicesStored
5C5462:  LDR             R1, [R1]; TempBufferRenderIndexList
5C5464:  LDR             R2, [R0]
5C5466:  MOVS            R0, #3
5C5468:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C546C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C5470:  LDR             R0, =(TheCamera_ptr - 0x5C547A)
5C5472:  VLDR            S0, =-216.0
5C5476:  ADD             R0, PC; TheCamera_ptr
5C5478:  VLDR            D16, =-7.89520763e21
5C547C:  LDR             R0, [R0]; TheCamera
5C547E:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5C5480:  ADD.W           R2, R1, #0x30 ; '0'
5C5484:  CMP             R1, #0
5C5486:  IT EQ
5C5488:  ADDEQ           R2, R0, #4
5C548A:  VLDR            S2, [R2]
5C548E:  VLDR            D17, [R2,#4]
5C5492:  VADD.F32        S0, S2, S0
5C5496:  VADD.F32        D16, D17, D16
5C549A:  VMUL.F32        D1, D16, D16
5C549E:  VMUL.F32        S0, S0, S0
5C54A2:  VADD.F32        S0, S0, S2
5C54A6:  VADD.F32        S0, S0, S3
5C54AA:  VLDR            S2, =50.0
5C54AE:  VSQRT.F32       S0, S0
5C54B2:  VCMPE.F32       S0, S2
5C54B6:  VMRS            APSR_nzcv, FPSCR
5C54BA:  BGE             loc_5C55A2
5C54BC:  MOVS            R0, #8
5C54BE:  MOVS            R1, #1
5C54C0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C54C4:  MOVS            R0, #0xC
5C54C6:  MOVS            R1, #0
5C54C8:  MOV.W           R8, #0
5C54CC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C54D0:  MOVS            R0, #0xA
5C54D2:  MOVS            R1, #1
5C54D4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C54D8:  MOVS            R0, #0xB
5C54DA:  MOVS            R1, #2
5C54DC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C54E0:  LDR             R0, =(TempVertexBuffer_ptr - 0x5C54F0)
5C54E2:  MOVW            R2, #0x8000
5C54E6:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C54F4)
5C54E8:  MOVS            R4, #0
5C54EA:  LDR             R6, =(TempBufferRenderIndexList_ptr - 0x5C54F6)
5C54EC:  ADD             R0, PC; TempVertexBuffer_ptr
5C54EE:  LDR             R5, =(TempBufferIndicesStored_ptr - 0x5C54FA)
5C54F0:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C54F2:  ADD             R6, PC; TempBufferRenderIndexList_ptr
5C54F4:  LDR             R0, [R0]; TempVertexBuffer
5C54F6:  ADD             R5, PC; TempBufferIndicesStored_ptr
5C54F8:  MOVW            R10, #0
5C54FC:  LDR.W           R9, [R1]; TempBufferVerticesStored
5C5500:  MOVW            LR, #0
5C5504:  LDR             R1, [R6]; TempBufferRenderIndexList
5C5506:  MOVT            R2, #0x447B
5C550A:  LDR             R6, [R5]; TempBufferIndicesStored
5C550C:  MOVS            R5, #0
5C550E:  LDR.W           R12, =(dword_6B23A4 - 0x5C553A)
5C5512:  MOVT            R5, #0xC234
5C5516:  MOVT            R4, #0x4358
5C551A:  MOVT            R10, #0x447A
5C551E:  MOV.W           R3, #0xFFFFFFFF
5C5522:  STR             R5, [R0,#(dword_A5A1DC - 0xA5A1D8)]
5C5524:  STR             R4, [R0]
5C5526:  MOVT            LR, #0xC21C
5C552A:  STR.W           R10, [R0,#(dword_A5A1E0 - 0xA5A1D8)]
5C552E:  ADD.W           R11, R0, #0x3C ; '<'
5C5532:  STRD.W          R3, R8, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
5C5536:  ADD             R12, PC; dword_6B23A4
5C5538:  STRD.W          R8, R4, [R0,#(dword_A5A1F8 - 0xA5A1D8)]
5C553C:  STRD.W          R5, R2, [R0,#(dword_A5A200 - 0xA5A1D8)]
5C5540:  MOV.W           R5, #0x3F800000
5C5544:  STM.W           R11, {R3,R5,R8}
5C5548:  STRD.W          R4, LR, [R0,#(dword_A5A220 - 0xA5A1D8)]
5C554C:  STR             R2, [R0,#(dword_A5A228 - 0xA5A1D8)]
5C554E:  MOVS            R2, #6
5C5550:  STRD.W          R3, R5, [R0,#(dword_A5A238 - 0xA5A1D8)]
5C5554:  STRD.W          R5, R4, [R0,#(dword_A5A240 - 0xA5A1D8)]
5C5558:  STRD.W          LR, R10, [R0,#(dword_A5A248 - 0xA5A1D8)]
5C555C:  STRD.W          R3, R8, [R0,#(dword_A5A25C - 0xA5A1D8)]
5C5560:  STR             R2, [R6]
5C5562:  MOVS            R2, #4
5C5564:  STR.W           R2, [R9]
5C5568:  LDR.W           R2, [R12]
5C556C:  LDR.W           R3, [R12,#(dword_6B23A8 - 0x6B23A4)]
5C5570:  LDR.W           R6, [R12,#(dword_6B23AC - 0x6B23A4)]
5C5574:  STR             R2, [R1]
5C5576:  MOVS            R2, #0
5C5578:  STR             R3, [R1,#(dword_A7A1DC - 0xA7A1D8)]
5C557A:  MOVS            R3, #1
5C557C:  STR             R6, [R1,#(dword_A7A1E0 - 0xA7A1D8)]
5C557E:  MOVS            R1, #4
5C5580:  STR.W           R5, [R0,#(dword_A5A264 - 0xA5A1D8)]
5C5584:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C5588:  CBZ             R0, loc_5C55A2
5C558A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C5592)
5C558C:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C5594)
5C558E:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C5590:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C5592:  LDR             R0, [R0]; TempBufferIndicesStored
5C5594:  LDR             R1, [R1]; TempBufferRenderIndexList
5C5596:  LDR             R2, [R0]
5C5598:  MOVS            R0, #3
5C559A:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C559E:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C55A2:  MOVS            R0, #0xE
5C55A4:  MOVS            R1, #0
5C55A6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55AA:  MOVS            R0, #6
5C55AC:  MOVS            R1, #1
5C55AE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55B2:  MOVS            R0, #8
5C55B4:  MOVS            R1, #1
5C55B6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55BA:  MOVS            R0, #1
5C55BC:  MOVS            R1, #0
5C55BE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55C2:  MOVS            R0, #0xC
5C55C4:  MOVS            R1, #0
5C55C6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55CA:  MOVS            R0, #0xA
5C55CC:  MOVS            R1, #5
5C55CE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C55D2:  MOVS            R0, #0xB
5C55D4:  MOVS            R1, #6
5C55D6:  ADD             SP, SP, #8
5C55D8:  VPOP            {D8-D10}
5C55DC:  ADD             SP, SP, #4
5C55DE:  POP.W           {R8-R11}
5C55E2:  POP.W           {R4-R7,LR}
5C55E6:  B.W             sub_192888
5C55EA:  ADD             SP, SP, #8
5C55EC:  VPOP            {D8-D10}
5C55F0:  ADD             SP, SP, #4
5C55F2:  POP.W           {R8-R11}
5C55F6:  POP             {R4-R7,PC}
