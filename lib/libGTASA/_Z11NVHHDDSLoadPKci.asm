; =========================================================
; Game Engine Function: _Z11NVHHDDSLoadPKci
; Address            : 0x274238 - 0x274962
; =========================================================

274238:  PUSH            {R4-R7,LR}
27423A:  ADD             R7, SP, #0xC
27423C:  PUSH.W          {R8-R11}
274240:  SUB             SP, SP, #0xD4
274242:  MOV             R4, R0
274244:  LDR.W           R0, =(NVLogDebug_ptr - 0x274252)
274248:  STR             R1, [SP,#0xF0+var_B8]
27424A:  ADR.W           R1, aNvhhddsloadFil; "NVHHDDSLoad file: %s"
27424E:  ADD             R0, PC; NVLogDebug_ptr
274250:  MOV             R2, R4
274252:  LDR             R0, [R0]; NVLogDebug
274254:  LDR             R3, [R0]; NVDefaultLogDebug(char const*,char const*,...)
274256:  ADR.W           R0, aNvhhddsload; "NVHHDDSLoad"
27425A:  BLX             R3; NVDefaultLogDebug(char const*,char const*,...)
27425C:  LDR.W           R0, =(byte_61CD7E - 0x27426A)
274260:  MOV             R1, R4; char *
274262:  MOVS            R2, #0; bool
274264:  MOVS            R3, #1; bool
274266:  ADD             R0, PC; byte_61CD7E ; char *
274268:  BLX             j__Z7NvFOpenPKcS0_bb; NvFOpen(char const*,char const*,bool,bool)
27426C:  MOV             R6, R0
27426E:  CBZ             R6, loc_274288
274270:  LDRD.W          R9, R10, [R6]
274274:  CMP.W           R9, #1
274278:  BNE             loc_2742A2
27427A:  ADD             R0, SP, #0xF0+ptr; ptr
27427C:  MOVS            R1, #1; size
27427E:  MOVS            R2, #4; n
274280:  MOV             R3, R10; stream
274282:  BLX             fread
274286:  B               loc_2742CC
274288:  LDR.W           R0, =(NVLogWarn_ptr - 0x274296)
27428C:  MOV             R2, R4
27428E:  LDR.W           R1, =(aCouldNotOpenFi - 0x274298); "Could not open file: %s"
274292:  ADD             R0, PC; NVLogWarn_ptr
274294:  ADD             R1, PC; "Could not open file: %s"
274296:  LDR             R0, [R0]; NVLogWarn
274298:  LDR             R3, [R0]; NVDefaultLogWarn(char const*,char const*,...)
27429A:  ADR.W           R0, aNvhhddsload; "NVHHDDSLoad"
27429E:  BLX             R3; NVDefaultLogWarn(char const*,char const*,...)
2742A0:  B               loc_274922
2742A2:  MOV             R0, R10; asset
2742A4:  BLX             AAsset_getLength
2742A8:  MOV             R8, R0
2742AA:  MOV             R0, R10; asset
2742AC:  BLX             AAsset_getLength
2742B0:  MOV             R5, R0
2742B2:  MOV             R0, R10; asset
2742B4:  BLX             AAsset_getRemainingLength
2742B8:  SUBS            R0, R0, R5
2742BA:  ADD             R1, SP, #0xF0+ptr; buf
2742BC:  ADD.W           R2, R0, R8
2742C0:  MOV             R0, R10; asset
2742C2:  CMP             R2, #4
2742C4:  IT GE
2742C6:  MOVGE           R2, #4; count
2742C8:  BLX             AAsset_read
2742CC:  LDR             R0, [SP,#0xF0+ptr]
2742CE:  MOV             R1, #0x20534444
2742D6:  MOVS            R2, #0
2742D8:  CMP             R0, R1
2742DA:  IT NE
2742DC:  MOVNE           R2, #1
2742DE:  CBZ             R2, loc_274304
2742E0:  LDR.W           R0, =(NVLogError_ptr - 0x2742EE)
2742E4:  ADR.W           R1, aNoDdsMarkerInF; "!> No DDS marker in file header: %s"
2742E8:  MOV             R2, R4
2742EA:  ADD             R0, PC; NVLogError_ptr
2742EC:  LDR             R0, [R0]; NVLogError
2742EE:  LDR             R3, [R0]; NVDefaultLogError(char const*,char const*,...)
2742F0:  ADR.W           R0, aNvhhddsload; "NVHHDDSLoad"
2742F4:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2742F6:  MOV             R0, R10; asset
2742F8:  CMP.W           R9, #1
2742FC:  BNE             loc_27432E
2742FE:  BLX             fclose
274302:  B               loc_274332
274304:  MOVW            R0, #0x62C; unsigned int
274308:  STRD.W          R4, R6, [SP,#0xF0+var_D8]
27430C:  BLX             _Znwj; operator new(uint)
274310:  MOVW            R1, #0x62C
274314:  MOV             R11, R0
274316:  BLX             j___aeabi_memclr8_0
27431A:  CMP.W           R9, #1
27431E:  BNE             loc_27433A
274320:  ADD             R0, SP, #0xF0+buf; ptr
274322:  MOVS            R1, #0x7C ; '|'; size
274324:  MOVS            R2, #1; n
274326:  MOV             R3, R10; stream
274328:  BLX             fread
27432C:  B               loc_274362
27432E:  BLX             AAsset_close
274332:  MOV             R0, R6; p
274334:  BLX             free
274338:  B               loc_274922
27433A:  MOV             R0, R10; asset
27433C:  BLX             AAsset_getLength
274340:  MOV             R4, R0
274342:  MOV             R0, R10; asset
274344:  BLX             AAsset_getLength
274348:  MOV             R5, R0
27434A:  MOV             R0, R10; asset
27434C:  BLX             AAsset_getRemainingLength
274350:  SUBS            R0, R0, R5
274352:  ADD             R1, SP, #0xF0+buf; buf
274354:  ADDS            R2, R0, R4
274356:  MOV             R0, R10; asset
274358:  CMP             R2, #0x7C ; '|'
27435A:  IT GE
27435C:  MOVGE           R2, #0x7C ; '|'; count
27435E:  BLX             AAsset_read
274362:  LDR             R0, [SP,#0xF0+var_2C]
274364:  TST.W           R0, #0x200
274368:  BNE             loc_274370
27436A:  MOV.W           R8, #0
27436E:  B               loc_27437E
274370:  AND.W           R1, R0, #0xFC00
274374:  CMP.W           R1, #0xFC00
274378:  BNE             loc_274444
27437A:  MOV.W           R8, #1
27437E:  LSLS            R0, R0, #0xA
274380:  STR.W           R8, [R11,#0x1C]
274384:  BPL             loc_27439A
274386:  LDR             R0, [SP,#0xF0+var_84]
274388:  CBZ             R0, loc_27439A
27438A:  LDR.W           R0, =(NVLogError_ptr - 0x274396)
27438E:  LDR.W           R1, =(aAttemptToLoadA - 0x27439A); "Attempt to load a volume image (current"...
274392:  ADD             R0, PC; NVLogError_ptr
274394:  LDR             R2, [SP,#0xF0+var_D8]
274396:  ADD             R1, PC; "Attempt to load a volume image (current"...
274398:  B               loc_2748F0
27439A:  LDRB.W          R0, [SP,#0xF0+var_4C]
27439E:  LSLS            R0, R0, #0x1D
2743A0:  BMI             loc_274400
2743A2:  LDR             R0, [SP,#0xF0+var_44]
2743A4:  CMP             R0, #8
2743A6:  BEQ             loc_274454
2743A8:  CMP             R0, #0x10
2743AA:  BEQ             loc_27449A
2743AC:  CMP             R0, #0x20 ; ' '
2743AE:  BNE.W           loc_2748E6
2743B2:  LDR             R0, [SP,#0xF0+var_40]
2743B4:  CMP.W           R0, #0xFF0000
2743B8:  BEQ.W           loc_27484A
2743BC:  CMP             R0, #0xFF
2743BE:  ITT EQ
2743C0:  LDREQ           R0, [SP,#0xF0+var_3C]
2743C2:  CMPEQ.W         R0, #0xFF00
2743C6:  BNE.W           loc_2748E6
2743CA:  LDR             R0, [SP,#0xF0+var_38]
2743CC:  CMP.W           R0, #0xFF0000
2743D0:  ITT EQ
2743D2:  LDREQ           R0, [SP,#0xF0+var_34]
2743D4:  CMPEQ.W         R0, #0xFF000000
2743D8:  BNE.W           loc_2748E6
2743DC:  MOVS            R2, #4
2743DE:  MOVW            R0, #0x1908
2743E2:  STR.W           R2, [R11,#8]
2743E6:  MOVS            R4, #0
2743E8:  STR.W           R0, [R11,#0x20]
2743EC:  MOV.W           R12, #0x14
2743F0:  MOV.W           LR, #1
2743F4:  MOVS            R3, #0x24 ; '$'
2743F6:  MOVS            R5, #0x10
2743F8:  MOVW            R6, #0x1401
2743FC:  MOVS            R0, #0xC
2743FE:  B               loc_27443E
274400:  LDR             R2, [SP,#0xF0+var_48]
274402:  MOV             R0, #0x35545844
27440A:  CMP             R2, R0
27440C:  BEQ             loc_2744D6
27440E:  MOV             R0, #0x33545844
274416:  CMP             R2, R0
274418:  BEQ             loc_2744EE
27441A:  MOV             R0, #0x31545844
274422:  CMP             R2, R0
274424:  BNE.W           loc_274808
274428:  MOVS            R4, #0
27442A:  MOV.W           R12, #0x24 ; '$'
27442E:  MOV.W           LR, #1
274432:  MOVS            R3, #0x14
274434:  MOVS            R2, #3
274436:  MOVS            R5, #8
274438:  MOVW            R6, #0x83F1
27443C:  MOVS            R0, #0x20 ; ' '
27443E:  MOVS            R1, #0
274440:  STR             R1, [SP,#0xF0+var_E8]
274442:  B               loc_274508
274444:  LDR.W           R0, =(NVLogError_ptr - 0x274450)
274448:  LDR.W           R1, =(aAttemptToLoadC - 0x274454); "Attempt to load cubemap that doesn't co"...
27444C:  ADD             R0, PC; NVLogError_ptr
27444E:  LDR             R2, [SP,#0xF0+var_D8]
274450:  ADD             R1, PC; "Attempt to load cubemap that doesn't co"...
274452:  B               loc_2748F0
274454:  LDR             R0, [SP,#0xF0+var_40]
274456:  CMP             R0, #0xFF
274458:  BEQ.W           loc_274886
27445C:  CMP             R0, #0
27445E:  ITT EQ
274460:  LDREQ           R0, [SP,#0xF0+var_3C]
274462:  CMPEQ           R0, #0
274464:  BNE.W           loc_2748E6
274468:  LDR             R0, [SP,#0xF0+var_38]
27446A:  CMP             R0, #0
27446C:  ITT EQ
27446E:  LDREQ           R0, [SP,#0xF0+var_34]
274470:  CMPEQ           R0, #0xFF
274472:  BNE.W           loc_2748E6
274476:  MOVS            R6, #1
274478:  MOVW            R0, #0x1906
27447C:  STR.W           R6, [R11,#8]
274480:  MOVS            R4, #0
274482:  STR.W           R0, [R11,#0x20]
274486:  MOV.W           R12, #0x14
27448A:  MOVS            R3, #0x10
27448C:  MOVW            R2, #0x1401
274490:  MOVS            R5, #0xC
274492:  MOVS            R0, #0x24 ; '$'
274494:  MOV.W           LR, #1
274498:  B               loc_27443E
27449A:  LDR             R0, [SP,#0xF0+var_40]
27449C:  CMP.W           R0, #0xF800
2744A0:  ITT EQ
2744A2:  LDREQ           R0, [SP,#0xF0+var_3C]
2744A4:  CMPEQ.W         R0, #0x7E0
2744A8:  BNE             loc_2744B8
2744AA:  LDR             R0, [SP,#0xF0+var_38]
2744AC:  CMP             R0, #0x1F
2744AE:  ITT EQ
2744B0:  LDREQ           R0, [SP,#0xF0+var_34]
2744B2:  CMPEQ           R0, #0
2744B4:  BEQ.W           loc_274930
2744B8:  LDR             R0, [SP,#0xF0+var_40]
2744BA:  CMP             R0, #0xFF
2744BC:  BNE.W           loc_2748E6
2744C0:  LDR             R0, [SP,#0xF0+var_3C]
2744C2:  CMP             R0, #0xFF
2744C4:  BEQ.W           loc_2748B4
2744C8:  CMP             R0, #0
2744CA:  ITT EQ
2744CC:  LDREQ           R0, [SP,#0xF0+var_38]
2744CE:  CMPEQ           R0, #0
2744D0:  BNE.W           loc_2748E6
2744D4:  B               loc_2748BA
2744D6:  MOVS            R0, #0
2744D8:  MOV.W           R12, #0x24 ; '$'
2744DC:  STR             R0, [SP,#0xF0+var_E8]
2744DE:  MOV.W           LR, #1
2744E2:  MOVS            R3, #0x14
2744E4:  MOVS            R2, #4
2744E6:  MOVS            R5, #8
2744E8:  MOVW            R6, #0x83F3
2744EC:  B               loc_274504
2744EE:  MOVS            R0, #0
2744F0:  MOV.W           R12, #0x24 ; '$'
2744F4:  MOV.W           LR, #1
2744F8:  MOVS            R3, #0x14
2744FA:  MOVS            R2, #4
2744FC:  MOVS            R5, #8
2744FE:  MOVW            R6, #0x83F2
274502:  STR             R0, [SP,#0xF0+var_E8]
274504:  MOVS            R0, #0x20 ; ' '
274506:  MOVS            R4, #1
274508:  STR.W           R6, [R11,R0]
27450C:  LDR             R0, [SP,#0xF0+var_94]
27450E:  STR.W           R2, [R11,R5]
274512:  TST.W           R0, #0x80000
274516:  STR.W           LR, [R11,R3]
27451A:  STR.W           R4, [R11,R12]
27451E:  BNE             loc_274532
274520:  LDR             R1, [SP,#0xF0+var_88]
274522:  MOV             R2, #0xF7166ED
27452A:  CMP             R1, R2
27452C:  IT EQ
27452E:  MOVEQ.W         R8, #1
274532:  LDRD.W          R2, R1, [SP,#0xF0+var_90]
274536:  LSLS            R0, R0, #0xE
274538:  STRD.W          R1, R2, [R11]
27453C:  LDR             R2, [SP,#0xF0+var_80]
27453E:  IT PL
274540:  MOVPL           R2, #1
274542:  LDR             R0, [SP,#0xF0+var_B8]
274544:  STR.W           R2, [R11,#0x18]
274548:  CMP             R0, #0
27454A:  IT NE
27454C:  MOVNE           R0, #1
27454E:  CMP             R2, #0x11
274550:  STR             R0, [SP,#0xF0+var_B8]
274552:  BLT             loc_27456C
274554:  LDR.W           R0, =(NVLogError_ptr - 0x274560)
274558:  LDR.W           R1, =(aTooManyMipmaps - 0x274564); "Too many mipmaps (image->numMipmaps = %"...
27455C:  ADD             R0, PC; NVLogError_ptr
27455E:  LDR             R3, [SP,#0xF0+var_D8]
274560:  ADD             R1, PC; "Too many mipmaps (image->numMipmaps = %"...
274562:  LDR             R0, [R0]; NVLogError
274564:  LDR             R6, [R0]; NVDefaultLogError(char const*,char const*,...)
274566:  MOVS            R0, #0x10
274568:  STR             R0, [SP,#0xF0+var_F0]
27456A:  B               loc_274814
27456C:  MOV             R0, R11
27456E:  BLX             j__Z16NVHHDDSAllocDataP12NVHHDDSImage; NVHHDDSAllocData(NVHHDDSImage *)
274572:  LDR.W           R0, [R11,#0x28]
274576:  CMP             R0, #0
274578:  BEQ.W           loc_27483A
27457C:  LDRD.W          R0, R1, [R11,#0x18]
274580:  CMP             R1, #0
274582:  MOV.W           R2, #1
274586:  MOV.W           R6, #0
27458A:  IT NE
27458C:  MOVNE           R2, #6
27458E:  MOVS            R1, #0
274590:  STR             R2, [SP,#0xF0+var_E4]
274592:  STR             R1, [SP,#0xF0+var_E0]
274594:  STRD.W          R8, R9, [SP,#0xF0+var_C0]
274598:  STR.W           R11, [SP,#0xF0+var_DC]
27459C:  STR.W           R10, [SP,#0xF0+stream]
2745A0:  CMP             R0, #1
2745A2:  BLT.W           loc_274776
2745A6:  LDR.W           R0, [R11]
2745AA:  MOVS            R1, #0
2745AC:  STR             R0, [SP,#0xF0+var_AC]
2745AE:  LDR.W           R0, [R11,#4]
2745B2:  STR             R0, [SP,#0xF0+var_A8]
2745B4:  STRD.W          R1, R6, [SP,#0xF0+var_B4]
2745B8:  ADD.W           R6, R11, R6,LSL#2
2745BC:  CMP.W           R9, #1
2745C0:  LDR.W           R5, [R6,#0x2C]!
2745C4:  LDR.W           R4, [R6,#0x180]
2745C8:  BNE             loc_2745D8
2745CA:  MOV             R0, R5; ptr
2745CC:  MOV             R1, R4; size
2745CE:  MOVS            R2, #1; n
2745D0:  MOV             R3, R10; stream
2745D2:  BLX             fread
2745D6:  B               loc_27460C
2745D8:  MOV             R0, R10; asset
2745DA:  BLX             AAsset_getLength
2745DE:  MOV             R8, R0
2745E0:  MOV             R0, R10; asset
2745E2:  BLX             AAsset_getLength
2745E6:  MOV             R9, R0
2745E8:  MOV             R0, R10; asset
2745EA:  BLX             AAsset_getRemainingLength
2745EE:  SUB.W           R0, R0, R9
2745F2:  LDR.W           R9, [SP,#0xF0+var_BC]
2745F6:  ADD             R0, R8
2745F8:  LDR.W           R8, [SP,#0xF0+var_C0]
2745FC:  CMP             R4, R0
2745FE:  MOV             R1, R5; buf
274600:  IT GT
274602:  MOVGT           R4, R0
274604:  MOV             R0, R10; asset
274606:  MOV             R2, R4; count
274608:  BLX             AAsset_read
27460C:  LDR             R0, [SP,#0xF0+var_B8]
27460E:  CMP             R8, R0
274610:  BEQ.W           loc_274730
274614:  LDR.W           R0, [R11,#0x14]
274618:  LDR             R6, [R6]
27461A:  CMP             R0, #0
27461C:  BEQ             loc_2746D6
27461E:  LDR.W           R0, [R11,#0x20]
274622:  MOVW            R1, #0x83F1
274626:  SUBS            R0, R0, R1
274628:  CMP             R0, #2
27462A:  BHI.W           loc_27481A
27462E:  LDR             R2, [SP,#0xF0+var_A8]
274630:  STR             R6, [SP,#0xF0+var_CC]
274632:  ASRS            R1, R2, #0x1F
274634:  ADD.W           R1, R2, R1,LSR#30
274638:  LDR             R2, [SP,#0xF0+var_AC]
27463A:  ASRS            R4, R1, #2
27463C:  ASRS            R1, R2, #0x1F
27463E:  ADD.W           R1, R2, R1,LSR#30
274642:  ASRS            R2, R1, #2
274644:  ADR.W           R1, dword_274A04
274648:  STR             R2, [SP,#0xF0+var_A0]
27464A:  LDR.W           R1, [R1,R0,LSL#2]
27464E:  MUL.W           R8, R1, R2
274652:  LDR.W           R1, =(off_661F38 - 0x27465A)
274656:  ADD             R1, PC; off_661F38
274658:  LDR.W           R9, [R1,R0,LSL#2]
27465C:  MOV             R0, R8; unsigned int
27465E:  BLX             _Znaj; operator new[](uint)
274662:  MOV             R10, R0
274664:  ASRS            R0, R4, #1
274666:  CMP             R0, #1
274668:  STR             R4, [SP,#0xF0+var_C4]
27466A:  STR             R0, [SP,#0xF0+var_C8]
27466C:  BLT             loc_2746B8
27466E:  LDR             R0, [SP,#0xF0+var_C4]
274670:  LDR.W           R11, [SP,#0xF0+var_CC]
274674:  SUBS            R0, #1
274676:  LDR             R6, [SP,#0xF0+var_C8]
274678:  MLA.W           R4, R8, R0, R11
27467C:  RSB.W           R0, R8, #0
274680:  STR             R0, [SP,#0xF0+var_A4]
274682:  LDR             R5, [SP,#0xF0+var_A0]
274684:  MOV             R0, R11
274686:  MOV             R1, R5
274688:  BLX             R9
27468A:  MOV             R0, R4
27468C:  MOV             R1, R5
27468E:  BLX             R9
274690:  MOV             R0, R10; void *
274692:  MOV             R1, R4; void *
274694:  MOV             R2, R8; size_t
274696:  BLX             memcpy_1
27469A:  MOV             R0, R4; void *
27469C:  MOV             R1, R11; void *
27469E:  MOV             R2, R8; size_t
2746A0:  BLX             memcpy_1
2746A4:  MOV             R0, R11; void *
2746A6:  MOV             R1, R10; void *
2746A8:  MOV             R2, R8; size_t
2746AA:  BLX             memcpy_1
2746AE:  LDR             R0, [SP,#0xF0+var_A4]
2746B0:  ADD             R11, R8
2746B2:  SUBS            R6, #1
2746B4:  ADD             R4, R0
2746B6:  BNE             loc_274682
2746B8:  LDR             R0, [SP,#0xF0+var_C4]
2746BA:  LDR             R1, [SP,#0xF0+var_A0]
2746BC:  LSLS            R0, R0, #0x1F
2746BE:  BEQ             loc_2746CA
2746C0:  LDRD.W          R2, R0, [SP,#0xF0+var_CC]
2746C4:  MLA.W           R0, R8, R0, R2
2746C8:  BLX             R9
2746CA:  MOV             R0, R10; void *
2746CC:  BLX             _ZdaPv; operator delete[](void *)
2746D0:  LDR.W           R11, [SP,#0xF0+var_DC]
2746D4:  B               loc_274728
2746D6:  LDR.W           R0, [R11,#0x10]
2746DA:  LDR             R1, [SP,#0xF0+var_AC]
2746DC:  MUL.W           R10, R0, R1
2746E0:  MOV             R0, R10; unsigned int
2746E2:  BLX             _Znaj; operator new[](uint)
2746E6:  MOV             R8, R0
2746E8:  LDR             R0, [SP,#0xF0+var_A8]
2746EA:  ASRS            R5, R0, #1
2746EC:  CMP             R5, #1
2746EE:  BLT             loc_274722
2746F0:  LDR             R0, [SP,#0xF0+var_A8]
2746F2:  RSB.W           R9, R10, #0
2746F6:  SUBS            R0, #1
2746F8:  MLA.W           R4, R10, R0, R6
2746FC:  MOV             R0, R8; void *
2746FE:  MOV             R1, R4; void *
274700:  MOV             R2, R10; size_t
274702:  BLX             memcpy_1
274706:  MOV             R0, R4; void *
274708:  MOV             R1, R6; void *
27470A:  MOV             R2, R10; size_t
27470C:  BLX             memcpy_1
274710:  MOV             R0, R6; void *
274712:  MOV             R1, R8; void *
274714:  MOV             R2, R10; size_t
274716:  BLX             memcpy_1
27471A:  ADD             R6, R10
27471C:  ADD             R4, R9
27471E:  SUBS            R5, #1
274720:  BNE             loc_2746FC
274722:  MOV             R0, R8; void *
274724:  BLX             _ZdaPv; operator delete[](void *)
274728:  LDR.W           R10, [SP,#0xF0+stream]
27472C:  LDRD.W          R8, R9, [SP,#0xF0+var_C0]
274730:  LDR             R1, [SP,#0xF0+var_A8]
274732:  MOVS            R3, #0
274734:  LDR.W           R2, [R11,#0x14]
274738:  ASRS            R0, R1, #1
27473A:  CMP.W           R3, R1,ASR#1
27473E:  IT EQ
274740:  MOVEQ           R0, #1
274742:  LDR             R6, [SP,#0xF0+var_AC]
274744:  ASRS            R1, R6, #1
274746:  CMP.W           R3, R6,ASR#1
27474A:  IT EQ
27474C:  MOVEQ           R1, #1
27474E:  CBZ             R2, loc_274760
274750:  CMP             R0, #4
274752:  MOV.W           R2, #4
274756:  IT LE
274758:  MOVLE           R0, R2
27475A:  CMP             R1, #4
27475C:  IT LE
27475E:  MOVLE           R1, R2
274760:  STRD.W          R1, R0, [SP,#0xF0+var_AC]
274764:  LDRD.W          R1, R6, [SP,#0xF0+var_B4]
274768:  LDR.W           R0, [R11,#0x18]
27476C:  ADDS            R6, #1
27476E:  ADDS            R1, #1
274770:  CMP             R1, R0
274772:  BLT.W           loc_2745B4
274776:  LDR             R1, [SP,#0xF0+var_E0]
274778:  MOV             R3, R1
27477A:  LDR             R1, [SP,#0xF0+var_E4]
27477C:  ADDS            R3, #1
27477E:  CMP             R3, R1
274780:  MOV             R2, R3
274782:  STR             R2, [SP,#0xF0+var_E0]
274784:  BLT.W           loc_2745A0
274788:  LDR             R1, [SP,#0xF0+var_E8]
27478A:  CBZ             R1, loc_2747F8
27478C:  MOV.W           LR, #0
274790:  MOV.W           R12, #0
274794:  MOV.W           R8, #0
274798:  CMP             R0, #1
27479A:  BLT             loc_2747E8
27479C:  LDRD.W          R5, R4, [R11]
2747A0:  MOVS            R6, #0
2747A2:  MUL.W           R2, R4, R5
2747A6:  CMP             R2, #1
2747A8:  BLT             loc_2747C4
2747AA:  ADD.W           R0, R11, R8,LSL#2
2747AE:  LDR             R0, [R0,#0x2C]
2747B0:  LDRB            R1, [R0]
2747B2:  SUBS            R2, #1
2747B4:  LDRB            R3, [R0,#2]
2747B6:  STRB            R3, [R0]
2747B8:  STRB            R1, [R0,#2]
2747BA:  ADD.W           R0, R0, #4
2747BE:  BNE             loc_2747B0
2747C0:  LDR.W           R0, [R11,#0x18]
2747C4:  ASRS            R1, R4, #1
2747C6:  CMP.W           LR, R4,ASR#1
2747CA:  IT EQ
2747CC:  MOVEQ           R1, #1
2747CE:  ASRS            R2, R5, #1
2747D0:  CMP.W           LR, R5,ASR#1
2747D4:  ADD.W           R6, R6, #1
2747D8:  IT EQ
2747DA:  MOVEQ           R2, #1
2747DC:  ADD.W           R8, R8, #1
2747E0:  CMP             R6, R0
2747E2:  MOV             R4, R1
2747E4:  MOV             R5, R2
2747E6:  BLT             loc_2747A2
2747E8:  LDR             R1, [SP,#0xF0+var_E4]
2747EA:  ADD.W           R12, R12, #1
2747EE:  CMP             R12, R1
2747F0:  BLT             loc_274798
2747F2:  LDR             R0, [SP,#0xF0+p]
2747F4:  LDRD.W          R9, R10, [R0]
2747F8:  MOV             R0, R10; asset
2747FA:  CMP.W           R9, #1
2747FE:  BNE.W           loc_274956
274802:  BLX             fclose
274806:  B               loc_27495A
274808:  LDR             R0, =(NVLogError_ptr - 0x274812)
27480A:  ADR             R1, aUnsupportedFou; "Unsupported FOURCC code = [0x%x], from "...
27480C:  LDR             R3, [SP,#0xF0+var_D8]
27480E:  ADD             R0, PC; NVLogError_ptr
274810:  LDR             R0, [R0]; NVLogError
274812:  LDR             R6, [R0]; NVDefaultLogError(char const*,char const*,...)
274814:  ADR             R0, aNvhhddsload; "NVHHDDSLoad"
274816:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
274818:  B               loc_2748F8
27481A:  LDR             R0, =(NVLogError_ptr - 0x274822)
27481C:  LDR             R1, =(aVerticalFlipOf - 0x274826); "Vertical flip of image data failed: %s"
27481E:  ADD             R0, PC; NVLogError_ptr
274820:  LDR             R2, [SP,#0xF0+var_D8]
274822:  ADD             R1, PC; "Vertical flip of image data failed: %s"
274824:  LDR             R0, [R0]; NVLogError
274826:  LDR             R3, [R0]; NVDefaultLogError(char const*,char const*,...)
274828:  ADR             R0, aNvhhddsload; "NVHHDDSLoad"
27482A:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
27482C:  CMP.W           R9, #1
274830:  BNE             loc_274846
274832:  LDR             R0, [SP,#0xF0+stream]; stream
274834:  BLX             fclose
274838:  B               loc_27490A
27483A:  LDR             R0, =(NVLogError_ptr - 0x274842)
27483C:  LDR             R1, =(aFailedToAlloca - 0x274846); "Failed to allocate memory block for ima"...
27483E:  ADD             R0, PC; NVLogError_ptr
274840:  LDR             R2, [SP,#0xF0+var_D8]
274842:  ADD             R1, PC; "Failed to allocate memory block for ima"...
274844:  B               loc_2748F0
274846:  LDR             R0, [SP,#0xF0+stream]; asset
274848:  B               loc_274906
27484A:  LDR             R0, [SP,#0xF0+var_3C]
27484C:  CMP.W           R0, #0xFF00
274850:  BNE             loc_2748E6
274852:  LDR             R0, [SP,#0xF0+var_38]
274854:  CMP             R0, #0xFF
274856:  ITT EQ
274858:  LDREQ           R0, [SP,#0xF0+var_34]
27485A:  CMPEQ.W         R0, #0xFF000000
27485E:  BNE             loc_2748E6
274860:  MOVS            R2, #4
274862:  MOVW            R0, #0x1908
274866:  STR.W           R2, [R11,#8]
27486A:  MOV.W           LR, #1
27486E:  STR.W           R0, [R11,#0x20]
274872:  MOVS            R4, #0
274874:  MOV.W           R12, #0x14
274878:  MOVS            R3, #0x24 ; '$'
27487A:  MOVS            R5, #0x10
27487C:  MOVW            R6, #0x1401
274880:  MOVS            R0, #0xC
274882:  MOVS            R1, #1
274884:  B               loc_274440
274886:  LDR             R0, [SP,#0xF0+var_3C]
274888:  CBNZ            R0, loc_2748E6
27488A:  LDR             R0, [SP,#0xF0+var_38]
27488C:  CMP             R0, #0
27488E:  ITT EQ
274890:  LDREQ           R0, [SP,#0xF0+var_34]
274892:  CMPEQ           R0, #0
274894:  BNE             loc_2748E6
274896:  MOV.W           LR, #1
27489A:  MOVW            R0, #0x1909
27489E:  MOVS            R6, #0
2748A0:  MOV.W           R12, #0x14
2748A4:  MOVS            R3, #0x10
2748A6:  MOVW            R2, #0x1401
2748AA:  STR.W           LR, [R11,#8]
2748AE:  STR.W           R0, [R11,#0x20]
2748B2:  B               loc_27494E
2748B4:  LDR             R0, [SP,#0xF0+var_38]
2748B6:  CMP             R0, #0xFF
2748B8:  BNE             loc_2748E6
2748BA:  LDR             R0, [SP,#0xF0+var_34]
2748BC:  CMP.W           R0, #0xFF00
2748C0:  BNE             loc_2748E6
2748C2:  MOV.W           LR, #2
2748C6:  MOVW            R0, #0x190A
2748CA:  STR.W           LR, [R11,#8]
2748CE:  MOVS            R4, #0
2748D0:  STR.W           R0, [R11,#0x20]
2748D4:  MOV.W           R12, #0x14
2748D8:  MOVS            R3, #0x10
2748DA:  MOVW            R2, #0x1401
2748DE:  MOVS            R5, #0xC
2748E0:  MOVS            R6, #1
2748E2:  MOVS            R0, #0x24 ; '$'
2748E4:  B               loc_27443E
2748E6:  LDR             R0, =(NVLogError_ptr - 0x2748EE)
2748E8:  LDR             R1, =(aImageDataIsNot - 0x2748F2); "Image data is not DXTC or supported RGB"...
2748EA:  ADD             R0, PC; NVLogError_ptr
2748EC:  LDR             R2, [SP,#0xF0+var_D8]
2748EE:  ADD             R1, PC; "Image data is not DXTC or supported RGB"...
2748F0:  LDR             R0, [R0]; NVLogError
2748F2:  LDR             R3, [R0]; NVDefaultLogError(char const*,char const*,...)
2748F4:  ADR             R0, aNvhhddsload; "NVHHDDSLoad"
2748F6:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2748F8:  MOV             R0, R10; stream
2748FA:  CMP.W           R9, #1
2748FE:  BNE             loc_274906
274900:  BLX             fclose
274904:  B               loc_27490A
274906:  BLX             AAsset_close
27490A:  LDR             R0, [SP,#0xF0+p]; p
27490C:  BLX             free
274910:  LDR.W           R0, [R11,#0x28]; void *
274914:  CMP             R0, #0
274916:  IT NE
274918:  BLXNE           _ZdaPv; operator delete[](void *)
27491C:  MOV             R0, R11; void *
27491E:  BLX             _ZdlPv; operator delete(void *)
274922:  MOV.W           R11, #0
274926:  MOV             R0, R11
274928:  ADD             SP, SP, #0xD4
27492A:  POP.W           {R8-R11}
27492E:  POP             {R4-R7,PC}
274930:  MOVS            R0, #3
274932:  MOVS            R6, #0
274934:  STR.W           R0, [R11,#8]
274938:  MOVW            R0, #0x1907
27493C:  STR.W           R0, [R11,#0x20]
274940:  MOV.W           R12, #0x14
274944:  MOV.W           LR, #2
274948:  MOVS            R3, #0x10
27494A:  MOVW            R2, #0x8363
27494E:  MOVS            R5, #0xC
274950:  MOVS            R0, #0x24 ; '$'
274952:  MOVS            R4, #0
274954:  B               loc_27443E
274956:  BLX             AAsset_close
27495A:  LDR             R0, [SP,#0xF0+p]; p
27495C:  BLX             free
274960:  B               loc_274926
