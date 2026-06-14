; =========================================================
; Game Engine Function: sub_213144
; Address            : 0x213144 - 0x2134E0
; =========================================================

213144:  PUSH            {R4-R7,LR}
213146:  ADD             R7, SP, #0xC
213148:  PUSH.W          {R8-R11}
21314C:  SUB             SP, SP, #0x44
21314E:  MOV             R11, R3
213150:  ADD             R3, SP, #0x60+var_4C
213152:  MOV             R10, R2
213154:  MOV             R5, R1
213156:  MOVS            R1, #1
213158:  MOVS            R2, #0
21315A:  MOV             R9, R0
21315C:  MOVS            R4, #0
21315E:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
213162:  CMP             R0, #0
213164:  BEQ.W           loc_2134D6
213168:  LDR             R0, [SP,#0x60+var_4C]
21316A:  MOVS            R2, #0x80000013
213170:  MOVW            R1, #0x2004
213174:  SUB.W           R0, R0, #0x34000
213178:  CMP             R0, R1
21317A:  BCC             loc_213192
21317C:  SUB.W           R0, R2, #0xF; int
213180:  MOVS            R4, #0
213182:  STR             R4, [SP,#0x60+var_48]
213184:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
213188:  STR             R0, [SP,#0x60+var_44]
21318A:  ADD             R0, SP, #0x60+var_48
21318C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
213190:  B               loc_2134D6
213192:  ADD             R6, SP, #0x60+var_48
213194:  MOV             R0, R9; int
213196:  MOVS            R2, #0x2C ; ','; size_t
213198:  MOV             R1, R6; void *
21319A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
21319E:  CMP             R0, #0x2C ; ','
2131A0:  BNE.W           loc_21339A
2131A4:  MOV             R0, R6; void *
2131A6:  MOVS            R1, #0x2C ; ','; unsigned int
2131A8:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
2131AC:  ADD.W           R4, R6, #0xC
2131B0:  MOVS            R1, #0xC; unsigned int
2131B2:  MOV             R0, R4; void *
2131B4:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
2131B8:  ADD.W           R8, R6, #0x18
2131BC:  MOVS            R1, #0xC; unsigned int
2131BE:  MOV             R0, R8; void *
2131C0:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
2131C4:  LDR             R0, =(sectorTKList_ptr - 0x2131CC)
2131C6:  LDR             R6, [R5]
2131C8:  ADD             R0, PC; sectorTKList_ptr
2131CA:  CMP             R6, #0
2131CC:  LDR             R0, [R0]; sectorTKList
2131CE:  LDR             R0, [R0]
2131D0:  ADD             R0, R6
2131D2:  STR             R0, [R5]
2131D4:  BEQ.W           loc_21339E
2131D8:  MOV.W           R0, #0xFFFFFFFF
2131DC:  ADD.W           R12, R6, #4
2131E0:  STR             R0, [R6]
2131E2:  ADD.W           R1, R6, #0x24 ; '$'
2131E6:  VLDR            D16, [R4]
2131EA:  ADD.W           R2, R6, #0x40 ; '@'
2131EE:  LDR             R0, [R4,#8]
2131F0:  ADD.W           R3, R6, #0x48 ; 'H'
2131F4:  STR             R0, [R6,#0x7C]
2131F6:  MOVS            R4, #0
2131F8:  VSTR            D16, [R6,#0x74]
2131FC:  VLDR            D16, [R8]
213200:  LDR.W           R0, [R8,#8]
213204:  STR             R0, [R6,#0x70]
213206:  VSTR            D16, [R6,#0x68]
21320A:  VMOV.I32        Q8, #0
21320E:  LDR             R0, [SP,#0x60+var_48]
213210:  STRH.W          R0, [R6,#0x88]
213214:  LDR             R0, [SP,#0x60+var_44]
213216:  STRH.W          R0, [R6,#0x8C]
21321A:  LDR             R0, [SP,#0x60+var_40]
21321C:  VST1.32         {D16-D17}, [R12]
213220:  VST1.32         {D16-D17}, [R1]
213224:  ADD.W           R1, R6, #0x14
213228:  VST1.32         {D16-D17}, [R1]
21322C:  ADD.W           R1, R6, #0x38 ; '8'
213230:  STRD.W          R4, R1, [R6,#0x34]
213234:  STRD.W          R1, R2, [R6,#0x3C]
213238:  STRD.W          R2, R3, [R6,#0x44]
21323C:  STR             R3, [R6,#0x4C]
21323E:  STR.W           R4, [R6,#0x84]
213242:  STRH.W          R0, [R6,#0x8A]
213246:  STR.W           R4, [R6,#0x80]
21324A:  LDRB.W          R0, [R10,#0xB]
21324E:  LSLS            R0, R0, #0x1F
213250:  BNE.W           loc_213494
213254:  LDR             R0, [SP,#0x60+var_40]
213256:  STR.W           R12, [SP,#0x60+var_58]
21325A:  CMP             R0, #0
21325C:  BEQ             loc_21331C
21325E:  LDR             R1, [R5]
213260:  ADD.W           R0, R0, R0,LSL#1
213264:  ADD.W           R2, R1, R0,LSL#2
213268:  STR             R2, [R5]
21326A:  LSLS            R2, R0, #2
21326C:  CMP             R1, #0
21326E:  STR             R1, [R6,#8]
213270:  BEQ.W           loc_2133BE
213274:  MOV             R0, R9
213276:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
21327A:  MOVS            R3, #0x13
21327C:  CMP             R0, #0
21327E:  MOVT            R3, #0x8000
213282:  BEQ.W           loc_21339A
213286:  MOVS.W          R0, R11,LSL#27
21328A:  BPL             loc_2132B4
21328C:  LDR             R0, [SP,#0x60+var_40]
21328E:  LDR             R1, [R5]; void *
213290:  MOV.W           R8, R0,LSL#2
213294:  CMP             R1, #0
213296:  ADD.W           R2, R1, R0,LSL#2
21329A:  STR             R2, [R5]
21329C:  STR             R1, [R6,#0xC]
21329E:  BEQ.W           loc_2133DA
2132A2:  MOV             R0, R9; int
2132A4:  MOV             R2, R8; size_t
2132A6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2132AA:  MOVS            R3, #0x13
2132AC:  CMP             R0, R8
2132AE:  MOVT            R3, #0x8000
2132B2:  BNE             loc_21339A
2132B4:  MOVS.W          R0, R11,LSL#28
2132B8:  BPL             loc_2132D8
2132BA:  LDR             R0, [SP,#0x60+var_40]
2132BC:  LDR             R1, [R5]; void *
2132BE:  ADD.W           R2, R1, R0,LSL#2
2132C2:  STR             R2, [R5]
2132C4:  LSLS            R2, R0, #2; size_t
2132C6:  CMP             R1, #0
2132C8:  STR             R1, [R6,#0x30]
2132CA:  BEQ.W           loc_2133EE
2132CE:  MOV             R0, R9; int
2132D0:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2132D4:  CMP             R0, #0
2132D6:  BEQ             loc_21339A
2132D8:  LDR.W           R0, [R10,#0x20]
2132DC:  CMP             R0, #1
2132DE:  BLT             loc_21331C
2132E0:  ADD.W           R0, R6, #0x10
2132E4:  STR             R0, [SP,#0x60+var_5C]
2132E6:  LDRH.W          R0, [R6,#0x8A]
2132EA:  MOV.W           R8, #0
2132EE:  MOV.W           R11, R0,LSL#3
2132F2:  LDR             R1, [R5]
2132F4:  ADD.W           R0, R1, R11
2132F8:  STR             R0, [R5]
2132FA:  LDR             R0, [SP,#0x60+var_5C]
2132FC:  CMP             R1, #0
2132FE:  STR.W           R1, [R0,R8,LSL#2]
213302:  BEQ             loc_2133CC
213304:  MOV             R0, R9
213306:  MOV             R2, R11
213308:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
21330C:  CMP             R0, #0
21330E:  BEQ             loc_21339A
213310:  LDR.W           R0, [R10,#0x20]
213314:  ADD.W           R8, R8, #1
213318:  CMP             R8, R0
21331A:  BLT             loc_2132F2
21331C:  LDR             R0, [SP,#0x60+var_44]
21331E:  LDR.W           R8, [SP,#0x60+var_58]
213322:  CMP             R0, #0
213324:  BEQ.W           loc_213494
213328:  LDR             R1, [R5]; void *
21332A:  MOV.W           R11, R0,LSL#3
21332E:  CMP             R1, #0
213330:  ADD.W           R2, R1, R0,LSL#3
213334:  STR             R2, [R5]
213336:  STR.W           R1, [R8]
21333A:  BEQ             loc_2133CC
21333C:  LDR             R0, [SP,#0x60+var_4C]
21333E:  ADD.W           R2, R11, R11,LSR#31
213342:  MOV             R5, R11
213344:  CMP.W           R0, #0x30400
213348:  MOV             R0, R9; int
21334A:  IT CC
21334C:  ASRCC           R5, R2, #1
21334E:  MOV             R2, R5; size_t
213350:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
213354:  CMP             R0, R5
213356:  BNE             loc_21339A
213358:  LDR             R0, [SP,#0x60+var_4C]
21335A:  LDR.W           R10, [R8]
21335E:  LSRS            R0, R0, #0xA
213360:  CMP             R0, #0xC0
213362:  BHI             loc_2133E4
213364:  LDR             R0, =(RwEngineInstance_ptr - 0x21336E)
213366:  LDRH.W          R11, [R6,#0x8C]
21336A:  ADD             R0, PC; RwEngineInstance_ptr
21336C:  LDR             R0, [R0]; RwEngineInstance
21336E:  MOV.W           R5, R11,LSL#2
213372:  LDR             R0, [R0]
213374:  LDR.W           R1, [R0,#0x12C]
213378:  MOV             R0, R5
21337A:  BLX             R1
21337C:  MOV             R1, R10; void *
21337E:  MOV             R2, R5; size_t
213380:  STR             R0, [SP,#0x60+var_58]
213382:  BLX             memcpy_1
213386:  CMP.W           R11, #0
21338A:  BEQ             loc_213484
21338C:  CMP.W           R11, #8
213390:  BCS             loc_2133F4
213392:  MOVS            R1, #0
213394:  LDR.W           R8, [SP,#0x60+var_58]
213398:  B               loc_213450
21339A:  MOVS            R4, #0
21339C:  B               loc_2134D6
21339E:  LDR             R0, =(sectorTKList_ptr - 0x2133A8)
2133A0:  MOVS            R4, #0
2133A2:  STR             R4, [SP,#0x60+var_54]
2133A4:  ADD             R0, PC; sectorTKList_ptr
2133A6:  LDR             R0, [R0]; sectorTKList
2133A8:  LDR             R1, [R0]
2133AA:  MOVS            R0, #0x80000013; int
2133B0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2133B4:  STR             R0, [SP,#0x60+var_50]
2133B6:  ADD             R0, SP, #0x60+var_54
2133B8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2133BC:  B               loc_2134D6
2133BE:  MOVS            R0, #0x13
2133C0:  MOVS            R4, #0
2133C2:  MOVT            R0, #0x8000
2133C6:  STR             R4, [SP,#0x60+var_54]
2133C8:  MOV             R1, R2
2133CA:  B               loc_2133B0
2133CC:  MOVS            R0, #0x13
2133CE:  MOVS            R4, #0
2133D0:  STR             R4, [SP,#0x60+var_54]
2133D2:  MOVT            R0, #0x8000
2133D6:  MOV             R1, R11
2133D8:  B               loc_2133B0
2133DA:  MOVS            R4, #0
2133DC:  MOV             R0, R3
2133DE:  STR             R4, [SP,#0x60+var_54]
2133E0:  MOV             R1, R8
2133E2:  B               loc_2133B0
2133E4:  MOV             R0, R10; void *
2133E6:  MOV             R1, R11; unsigned int
2133E8:  BLX             j__Z13RwMemNative16Pvj; RwMemNative16(void *,uint)
2133EC:  B               loc_213494
2133EE:  MOVS            R4, #0
2133F0:  MOV             R0, R3
2133F2:  B               loc_2133C6
2133F4:  AND.W           R12, R11, #7
2133F8:  LDR             R2, [SP,#0x60+var_58]
2133FA:  SUBS.W          R1, R11, R12
2133FE:  BEQ             loc_213410
213400:  ADD.W           R0, R2, R11,LSL#2
213404:  CMP             R0, R10
213406:  BLS             loc_213416
213408:  ADD.W           R0, R10, R11,LSL#3
21340C:  CMP             R2, R0
21340E:  BCS             loc_213416
213410:  MOVS            R1, #0
213412:  MOV             R8, R2
213414:  B               loc_213450
213416:  MOV.W           R0, R12,LSL#2
21341A:  MOV             R3, R1
21341C:  UXTH            R0, R0
21341E:  MOV             R5, R2
213420:  RSB.W           R0, R0, R11,LSL#2
213424:  ADD.W           R8, R2, R0
213428:  MOV             R2, R10
21342A:  VLD4.8          {D16-D19}, [R5]!
21342E:  SUBS            R3, #8
213430:  VMOVL.U8        Q13, D19
213434:  VMOVL.U8        Q12, D18
213438:  VMOVL.U8        Q11, D17
21343C:  VMOVL.U8        Q10, D16
213440:  VST4.16         {D20,D22,D24,D26}, [R2]!
213444:  VST4.16         {D21,D23,D25,D27}, [R2]!
213448:  BNE             loc_21342A
21344A:  CMP.W           R12, #0
21344E:  BEQ             loc_213484
213450:  ADD.W           LR, R10, R1,LSL#3
213454:  SUB.W           R12, R11, R1
213458:  ADD.W           R3, LR, #6
21345C:  MOVS            R5, #0
21345E:  LDRB.W          R2, [R8,R5,LSL#2]
213462:  ADD.W           R0, LR, R5,LSL#3
213466:  STRH.W          R2, [R3,#-6]
21346A:  ADD.W           R2, R8, R5,LSL#2
21346E:  ADDS            R5, #1
213470:  CMP             R12, R5
213472:  LDRB            R1, [R2,#1]
213474:  STRH            R1, [R0,#2]
213476:  LDRB            R1, [R2,#2]
213478:  STRH            R1, [R0,#4]
21347A:  LDRB            R0, [R2,#3]
21347C:  STRH            R0, [R3]
21347E:  ADD.W           R3, R3, #8
213482:  BNE             loc_21345E
213484:  LDR             R0, =(RwEngineInstance_ptr - 0x21348A)
213486:  ADD             R0, PC; RwEngineInstance_ptr
213488:  LDR             R0, [R0]; RwEngineInstance
21348A:  LDR             R0, [R0]
21348C:  LDR.W           R1, [R0,#0x130]
213490:  LDR             R0, [SP,#0x60+var_58]
213492:  BLX             R1
213494:  LDR             R0, =(sectorTKList_ptr - 0x21349C)
213496:  MOV             R1, R6
213498:  ADD             R0, PC; sectorTKList_ptr
21349A:  LDR             R5, [R0]; sectorTKList
21349C:  MOV             R0, R5
21349E:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
2134A2:  LDR             R0, =(dword_6BD534 - 0x2134AC)
2134A4:  MOV             R2, R6
2134A6:  LDR             R1, =(dword_6BD538 - 0x2134AE)
2134A8:  ADD             R0, PC; dword_6BD534
2134AA:  ADD             R1, PC; dword_6BD538
2134AC:  STR             R4, [R0]
2134AE:  MOV             R0, R5; int
2134B0:  STR             R4, [R1]
2134B2:  MOV             R1, R9; int
2134B4:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
2134B8:  CBZ             R0, loc_2134D6
2134BA:  LDR             R0, =(dword_6BD534 - 0x2134C0)
2134BC:  ADD             R0, PC; dword_6BD534
2134BE:  LDR             R1, [R0]
2134C0:  CBZ             R1, loc_2134D4
2134C2:  LDR             R0, =(dword_6BD538 - 0x2134CA)
2134C4:  LDR             R2, =(sectorTKList_ptr - 0x2134CC)
2134C6:  ADD             R0, PC; dword_6BD538
2134C8:  ADD             R2, PC; sectorTKList_ptr
2134CA:  LDR             R3, [R0]
2134CC:  LDR             R0, [R2]; sectorTKList
2134CE:  MOV             R2, R6
2134D0:  BLX             j__Z29_rwPluginRegistryInvokeRightsPK16RwPluginRegistryjPvj; _rwPluginRegistryInvokeRights(RwPluginRegistry const*,uint,void *,uint)
2134D4:  MOV             R4, R6
2134D6:  MOV             R0, R4
2134D8:  ADD             SP, SP, #0x44 ; 'D'
2134DA:  POP.W           {R8-R11}
2134DE:  POP             {R4-R7,PC}
