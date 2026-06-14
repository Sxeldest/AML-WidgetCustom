; =========================================================
; Game Engine Function: _Z21RpGeometryStreamWritePK10RpGeometryP8RwStream
; Address            : 0x2161D4 - 0x2164C2
; =========================================================

2161D4:  PUSH            {R4-R7,LR}
2161D6:  ADD             R7, SP, #0xC
2161D8:  PUSH.W          {R8,R9,R11}
2161DC:  SUB             SP, SP, #0x30
2161DE:  MOV             R8, R1
2161E0:  MOV             R4, R0
2161E2:  BLX             j__Z23RpGeometryStreamGetSizePK10RpGeometry; RpGeometryStreamGetSize(RpGeometry const*)
2161E6:  MOVW            R9, #:lower16:(stru_35FF8.st_size+3)
2161EA:  MOV             R2, R0
2161EC:  MOVW            R0, #0xFFFF
2161F0:  MOVT            R9, #:upper16:(stru_35FF8.st_size+3)
2161F4:  STR             R0, [SP,#0x48+var_48]
2161F6:  MOV             R0, R8
2161F8:  MOVS            R1, #0xF
2161FA:  MOV             R3, R9
2161FC:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
216200:  CMP             R0, #0
216202:  BEQ.W           loc_2164B8
216206:  LDR             R1, [R4,#8]
216208:  TST.W           R1, #0x1000000
21620C:  BNE             loc_216246
21620E:  LDR             R0, [R4,#0x14]
216210:  MOVS            R2, #0x10
216212:  CBZ             R0, loc_21622A
216214:  LDR             R5, [R4,#0x1C]
216216:  ADD.W           R2, R2, R0,LSL#2
21621A:  LDR             R3, [R4,#0x10]
21621C:  LSLS            R1, R1, #0x1C
21621E:  IT PL
216220:  MOVPL           R2, #0x10
216222:  MLA.W           R3, R5, R0, R3
216226:  ADD.W           R2, R2, R3,LSL#3
21622A:  LDR             R1, [R4,#0x18]
21622C:  CMP             R1, #1
21622E:  BLT.W           loc_216336
216232:  ADD.W           R0, R0, R0,LSL#1
216236:  LDR.W           LR, [R4,#0x60]
21623A:  CMP             R1, #4
21623C:  MOV.W           R0, R0,LSL#2
216240:  BCS             loc_21624A
216242:  MOVS            R5, #0
216244:  B               loc_21630E
216246:  MOVS            R2, #0x28 ; '('
216248:  B               loc_216336
21624A:  ANDS.W          R5, R1, #3
21624E:  IT EQ
216250:  MOVEQ           R5, #4
216252:  SUBS.W          R12, R1, R5
216256:  MOV.W           R5, #0
21625A:  BEQ             loc_21630E
21625C:  VDUP.32         Q8, R5
216260:  VMOV.I32        Q10, #0x18
216264:  VDUP.32         Q9, R0
216268:  ADD.W           R3, LR, #0x14
21626C:  VMOV.32         D16[0], R2
216270:  MOV             R5, R12
216272:  ADD.W           R6, R3, #0x50 ; 'P'
216276:  MOV             R2, R3
216278:  VLD1.32         {D24-D25}, [R6]
21627C:  ADD.W           R6, R3, #0x30 ; '0'
216280:  SUBS            R5, #4
216282:  VLD1.32         {D26-D27}, [R6]
216286:  VMOV            Q0, Q13
21628A:  VEXT.8          Q15, Q13, Q12, #0xC
21628E:  VMOV            Q1, Q13
216292:  VLD1.32         {D22-D23}, [R2]!
216296:  VLD1.32         {D28-D29}, [R2]
21629A:  ADD.W           R2, R3, #0x20 ; ' '
21629E:  ADD.W           R3, R3, #0x70 ; 'p'
2162A2:  VZIP.32         Q0, Q15
2162A6:  VMOV            Q0, Q11
2162AA:  VEXT.8          Q14, Q14, Q11, #0xC
2162AE:  VZIP.32         Q11, Q0
2162B2:  VLD1.32         {D0-D1}, [R2]
2162B6:  VZIP.32         Q12, Q1
2162BA:  VREV64.32       Q12, Q14
2162BE:  VEXT.8          Q14, Q13, Q15, #8
2162C2:  VEXT.8          Q11, Q11, Q0, #0xC
2162C6:  VEXT.8          Q13, Q13, Q1, #4
2162CA:  VEXT.8          Q12, Q14, Q12, #8
2162CE:  VEXT.8          Q11, Q13, Q11, #8
2162D2:  VEXT.8          Q12, Q12, Q12, #8
2162D6:  VEXT.8          Q11, Q11, Q11, #8
2162DA:  VCEQ.I32        Q12, Q12, #0
2162DE:  VBIC            Q12, Q9, Q12
2162E2:  VCEQ.I32        Q11, Q11, #0
2162E6:  VBIC            Q11, Q9, Q11
2162EA:  VADD.I32        Q8, Q8, Q12
2162EE:  VADD.I32        Q8, Q8, Q11
2162F2:  VADD.I32        Q8, Q8, Q10
2162F6:  BNE             loc_216272
2162F8:  VEXT.8          Q9, Q8, Q8, #8
2162FC:  MOV             R5, R12
2162FE:  VADD.I32        Q8, Q8, Q9
216302:  VDUP.32         Q9, D16[1]
216306:  VADD.I32        Q8, Q8, Q9
21630A:  VMOV.32         R2, D16[0]
21630E:  RSB.W           R3, R5, R5,LSL#3
216312:  SUBS            R1, R1, R5
216314:  ADD.W           R3, LR, R3,LSL#2
216318:  ADDS            R3, #0x18
21631A:  LDR.W           R6, [R3,#-4]
21631E:  LDR             R5, [R3]
216320:  ADDS            R3, #0x1C
216322:  CMP             R6, #0
216324:  IT NE
216326:  ADDNE           R2, R0
216328:  CMP             R5, #0
21632A:  ADD.W           R2, R2, #0x18
21632E:  IT NE
216330:  ADDNE           R2, R0
216332:  SUBS            R1, #1
216334:  BNE             loc_21631A
216336:  MOVW            R0, #0xFFFF
21633A:  MOVS            R1, #1
21633C:  STR             R0, [SP,#0x48+var_48]
21633E:  MOV             R0, R8
216340:  MOV             R3, R9
216342:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
216346:  CMP             R0, #0
216348:  BEQ.W           loc_2164B8
21634C:  ADD.W           R6, R4, #0x10
216350:  LDR             R0, [R4,#8]
216352:  ADD.W           R12, SP, #0x48+var_28
216356:  LDM             R6, {R1-R3,R6}
216358:  LSLS            R6, R6, #0x10
21635A:  UXTB16.W        R6, R6
21635E:  ORRS            R0, R6
216360:  ADD             R6, SP, #0x48+var_28
216362:  STM.W           R12, {R0-R3}
216366:  MOVS            R1, #0x10; unsigned int
216368:  MOV             R0, R6; void *
21636A:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
21636E:  MOV             R0, R8; int
216370:  MOV             R1, R6; void *
216372:  MOVS            R2, #0x10; size_t
216374:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
216378:  CMP             R0, #0
21637A:  BEQ.W           loc_2164B8
21637E:  LDR             R1, [R4,#8]
216380:  TST.W           R1, #0x1000000
216384:  BNE             loc_216402
216386:  LDR             R0, [R4,#0x14]
216388:  CBZ             R0, loc_216402
21638A:  LSLS            R1, R1, #0x1C
21638C:  BPL             loc_21639E
21638E:  LDR             R1, [R4,#0x30]; void *
216390:  LSLS            R2, R0, #2; size_t
216392:  MOV             R0, R8; int
216394:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
216398:  CMP             R0, #0
21639A:  BEQ.W           loc_2164B8
21639E:  LDR             R0, [R4,#0x1C]
2163A0:  CMP             R0, #1
2163A2:  BLT             loc_2163C6
2163A4:  LDR             R0, [R4,#0x14]
2163A6:  ADD.W           R9, R4, #0x34 ; '4'
2163AA:  MOVS            R5, #0
2163AC:  LSLS            R6, R0, #3
2163AE:  LDR.W           R1, [R9,R5,LSL#2]; void *
2163B2:  MOV             R0, R8; int
2163B4:  MOV             R2, R6
2163B6:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
2163BA:  CMP             R0, #0
2163BC:  BEQ             loc_2164B8
2163BE:  LDR             R0, [R4,#0x1C]
2163C0:  ADDS            R5, #1
2163C2:  CMP             R5, R0
2163C4:  BLT             loc_2163AE
2163C6:  LDR             R5, [R4,#0x10]
2163C8:  CBZ             R5, loc_216402
2163CA:  LDR             R6, [R4,#0x2C]
2163CC:  ADD.W           R9, SP, #0x48+var_40
2163D0:  CBZ             R5, loc_216402
2163D2:  LDRH            R0, [R6]
2163D4:  LDRH            R1, [R6,#2]
2163D6:  ORR.W           R0, R1, R0,LSL#16
2163DA:  STR             R0, [SP,#0x48+var_40]
2163DC:  LDRH            R0, [R6,#4]
2163DE:  LDRH            R1, [R6,#6]
2163E0:  ORR.W           R0, R1, R0,LSL#16
2163E4:  STR             R0, [SP,#0x48+var_3C]
2163E6:  MOV             R0, R9; void *
2163E8:  MOVS            R1, #8; unsigned int
2163EA:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
2163EE:  MOV             R0, R8; int
2163F0:  MOV             R1, R9; void *
2163F2:  MOVS            R2, #8; size_t
2163F4:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2163F8:  ADDS            R6, #8
2163FA:  SUBS            R5, #1
2163FC:  CMP             R0, #0
2163FE:  BNE             loc_2163D0
216400:  B               loc_2164B8
216402:  LDR             R0, [R4,#0x18]
216404:  CMP             R0, #1
216406:  BLT             loc_216498
216408:  ADD.W           R9, SP, #0x48+var_40
21640C:  MOVS            R5, #0
21640E:  MOVS            R6, #0
216410:  LDR             R0, [R4,#0x60]
216412:  ADD             R0, R5
216414:  ADDS            R1, R0, #4
216416:  VLD1.32         {D16-D17}, [R1]
21641A:  VST1.64         {D16-D17}, [R9]
21641E:  LDRB            R1, [R4,#0xB]
216420:  LSLS            R1, R1, #0x1F
216422:  BNE             loc_216438
216424:  LDR             R1, [R0,#0x14]
216426:  CMP             R1, #0
216428:  IT NE
21642A:  MOVNE           R1, #1
21642C:  STR             R1, [SP,#0x48+var_30]
21642E:  LDR             R0, [R0,#0x18]
216430:  CMP             R0, #0
216432:  IT NE
216434:  MOVNE           R0, #1
216436:  B               loc_21643C
216438:  MOVS            R0, #0
21643A:  STR             R0, [SP,#0x48+var_30]
21643C:  STR             R0, [SP,#0x48+var_2C]
21643E:  MOV             R0, R9; void *
216440:  MOVS            R1, #0x10; unsigned int
216442:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216446:  MOV             R0, R9; void *
216448:  MOVS            R1, #0x18; unsigned int
21644A:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
21644E:  MOV             R0, R8; int
216450:  MOV             R1, R9; void *
216452:  MOVS            R2, #0x18; size_t
216454:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
216458:  CBZ             R0, loc_2164B8
21645A:  LDR             R0, [SP,#0x48+var_30]
21645C:  CBZ             R0, loc_216474
21645E:  LDR             R1, [R4,#0x60]
216460:  LDR             R0, [R4,#0x14]
216462:  ADD             R1, R5
216464:  ADD.W           R0, R0, R0,LSL#1
216468:  LDR             R1, [R1,#0x14]; void *
21646A:  LSLS            R2, R0, #2
21646C:  MOV             R0, R8; int
21646E:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
216472:  CBZ             R0, loc_2164B8
216474:  LDR             R0, [SP,#0x48+var_2C]
216476:  CBZ             R0, loc_21648E
216478:  LDR             R1, [R4,#0x60]
21647A:  LDR             R0, [R4,#0x14]
21647C:  ADD             R1, R5
21647E:  ADD.W           R0, R0, R0,LSL#1
216482:  LDR             R1, [R1,#0x18]; void *
216484:  LSLS            R2, R0, #2
216486:  MOV             R0, R8; int
216488:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
21648C:  CBZ             R0, loc_2164B8
21648E:  LDR             R0, [R4,#0x18]
216490:  ADDS            R6, #1
216492:  ADDS            R5, #0x1C
216494:  CMP             R6, R0
216496:  BLT             loc_216410
216498:  ADD.W           R0, R4, #0x20 ; ' '
21649C:  MOV             R1, R8
21649E:  BLX             j__Z26_rpMaterialListStreamWritePK14RpMaterialListP8RwStream; _rpMaterialListStreamWrite(RpMaterialList const*,RwStream *)
2164A2:  CBZ             R0, loc_2164B8
2164A4:  LDR             R0, =(dword_683B78 - 0x2164AE)
2164A6:  MOV             R1, R8
2164A8:  MOV             R2, R4
2164AA:  ADD             R0, PC; dword_683B78
2164AC:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
2164B0:  CMP             R0, #0
2164B2:  IT NE
2164B4:  MOVNE           R0, R4
2164B6:  B               loc_2164BA
2164B8:  MOVS            R0, #0
2164BA:  ADD             SP, SP, #0x30 ; '0'
2164BC:  POP.W           {R8,R9,R11}
2164C0:  POP             {R4-R7,PC}
