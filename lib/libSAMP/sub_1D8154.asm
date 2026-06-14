; =========================================================
; Game Engine Function: sub_1D8154
; Address            : 0x1D8154 - 0x1D8858
; =========================================================

1D8154:  PUSH            {R4-R11,LR}
1D8158:  ADD             R11, SP, #0x1C
1D815C:  SUB             SP, SP, #0x9C
1D8160:  MOV             R8, R0
1D8164:  LDR             R0, =(dword_382930 - 0x1D8178)
1D8168:  LDR             R1, =(byte_382938 - 0x1D817C)
1D816C:  MOV             R2, R8; stream
1D8170:  LDR             R6, [PC,R0]; dword_382930
1D8174:  ADD             R0, PC, R1; byte_382938 ; s
1D8178:  MOV             R1, #0x400; n
1D817C:  BL              fgets
1D8180:  CMP             R0, #0
1D8184:  BEQ             loc_1D8850
1D8188:  LDR             R0, =(byte_382938 - 0x1D8198)
1D818C:  LDR             R1, =(byte_382938 - 0x1D81EC)
1D8190:  ADD             R4, PC, R0; byte_382938
1D8194:  LDR             R0, =(byte_382938 - 0x1D81A4)
1D8198:  LDR             R2, =(LogLevel_ptr - 0x1D8228)
1D819C:  ADD             R5, PC, R0; byte_382938
1D81A0:  LDR             R0, =(byte_382938 - 0x1D81B0)
1D81A4:  STR             R4, [R11,#var_3C]
1D81A8:  ADD             R0, PC, R0; byte_382938
1D81AC:  STR             R0, [R11,#dest]
1D81B0:  LDR             R0, =(byte_382938 - 0x1D81C0)
1D81B4:  STR             R5, [R11,#var_34]
1D81B8:  ADD             R0, PC, R0; byte_382938
1D81BC:  STR             R0, [R11,#var_38]
1D81C0:  LDR             R0, =(byte_382938 - 0x1D81D0)
1D81C4:  STR             R8, [R11,#var_54]
1D81C8:  ADD             R10, PC, R0; byte_382938
1D81CC:  LDR             R0, =(LogLevel_ptr - 0x1D81D8)
1D81D0:  LDR             R0, [PC,R0]; LogLevel
1D81D4:  STR             R0, [R11,#var_50]
1D81D8:  LDR             R0, =(aConfigParseErr_1 - 0x1D81E4); "config parse error: bad line \"%s\"\n" ...
1D81DC:  ADD             R0, PC, R0; "config parse error: bad line \"%s\"\n"
1D81E0:  STR             R0, [SP,#0xB8+var_68]
1D81E4:  ADD             R0, PC, R1; byte_382938
1D81E8:  STR             R0, [SP,#0xB8+var_6C]
1D81EC:  LDR             R0, =(byte_382938 - 0x1D81FC)
1D81F0:  LDR             R1, =(byte_382938 - 0x1D8230)
1D81F4:  ADD             R0, PC, R0; byte_382938
1D81F8:  STR             R0, [R11,#var_44]
1D81FC:  LDR             R0, =(LogLevel_ptr - 0x1D8208)
1D8200:  LDR             R0, [PC,R0]; LogLevel
1D8204:  STR             R0, [SP,#0xB8+var_88]
1D8208:  LDR             R0, =(aConfigParseErr_2 - 0x1D8214); "config parse error: error reallocating "... ...
1D820C:  ADD             R0, PC, R0; "config parse error: error reallocating "...
1D8210:  STR             R0, [SP,#0xB8+var_9C]
1D8214:  LDR             R0, =(dword_382934 - 0x1D8220)
1D8218:  ADD             R0, PC, R0; dword_382934
1D821C:  STR             R0, [R11,#var_58]
1D8220:  LDR             R0, [PC,R2]; LogLevel
1D8224:  STR             R0, [SP,#0xB8+var_5C]
1D8228:  ADD             R0, PC, R1; byte_382938
1D822C:  ADD             R0, R0, #1
1D8230:  STR             R0, [SP,#0xB8+var_60]
1D8234:  LDR             R0, =(aFoundNewBlockS - 0x1D8244); "found new block '%s'\n" ...
1D8238:  LDR             R1, =(byte_382938 - 0x1D82A4)
1D823C:  ADD             R0, PC, R0; "found new block '%s'\n"
1D8240:  STR             R0, [SP,#0xB8+var_94]
1D8244:  LDR             R0, =(byte_382938 - 0x1D8250)
1D8248:  ADD             R0, PC, R0; byte_382938
1D824C:  ADD             R0, R0, #1
1D8250:  STR             R0, [R11,#s2]
1D8254:  LDR             R0, =(LogLevel_ptr - 0x1D8260)
1D8258:  LDR             R0, [PC,R0]; LogLevel
1D825C:  STR             R0, [SP,#0xB8+var_74]
1D8260:  LDR             R0, =(aFoundBlockS - 0x1D826C); "found block '%s'\n" ...
1D8264:  ADD             R0, PC, R0; "found block '%s'\n"
1D8268:  STR             R0, [SP,#0xB8+var_A0]
1D826C:  LDR             R0, =(LogLevel_ptr - 0x1D8278)
1D8270:  LDR             R0, [PC,R0]; LogLevel
1D8274:  STR             R0, [SP,#0xB8+var_70]
1D8278:  LDR             R0, =(aConfigWarningE - 0x1D8284); "config warning: extra data after block:"... ...
1D827C:  ADD             R0, PC, R0; "config warning: extra data after block:"...
1D8280:  STR             R0, [SP,#0xB8+var_98]
1D8284:  LDR             R0, =(LogLevel_ptr - 0x1D8290)
1D8288:  LDR             R0, [PC,R0]; LogLevel
1D828C:  STR             R0, [R11,#var_40]
1D8290:  LDR             R0, =(aConfigParseErr_3 - 0x1D829C); "config parse error: malformed option li"... ...
1D8294:  ADD             R0, PC, R0; "config parse error: malformed option li"...
1D8298:  STR             R0, [R11,#var_48]
1D829C:  ADD             R0, PC, R1; byte_382938
1D82A0:  STR             R0, [R11,#var_4C]
1D82A4:  LDR             R0, =(byte_382938 - 0x1D82B0)
1D82A8:  ADD             R0, PC, R0; byte_382938
1D82AC:  STR             R0, [SP,#0xB8+var_64]
1D82B0:  LDR             R0, =(byte_382938 - 0x1D82BC)
1D82B4:  ADD             R0, PC, R0; byte_382938
1D82B8:  STR             R0, [SP,#0xB8+var_78]
1D82BC:  LDR             R0, =(byte_382938 - 0x1D82C8)
1D82C0:  ADD             R0, PC, R0; byte_382938
1D82C4:  STR             R0, [SP,#0xB8+var_7C]
1D82C8:  LDR             R0, =(byte_382938 - 0x1D82D4)
1D82CC:  ADD             R0, PC, R0; byte_382938
1D82D0:  STR             R0, [R11,#var_28]
1D82D4:  LDR             R0, =(byte_382938 - 0x1D82E0)
1D82D8:  ADD             R0, PC, R0; byte_382938
1D82DC:  STR             R0, [SP,#0xB8+var_80]
1D82E0:  LDR             R0, =(LogLevel_ptr - 0x1D82EC)
1D82E4:  LDR             R0, [PC,R0]; LogLevel
1D82E8:  STR             R0, [SP,#0xB8+var_84]
1D82EC:  LDR             R0, =(aFoundSS - 0x1D82F8); "found '%s' = '%s'\n" ...
1D82F0:  ADD             R0, PC, R0; "found '%s' = '%s'\n"
1D82F4:  STR             R0, [SP,#0xB8+var_A4]
1D82F8:  LDR             R0, =(LogLevel_ptr - 0x1D8304)
1D82FC:  LDR             R0, [PC,R0]; LogLevel
1D8300:  STR             R0, [SP,#0xB8+var_B4]
1D8304:  LDR             R0, =(byte_382938 - 0x1D8310)
1D8308:  ADD             R0, PC, R0; byte_382938
1D830C:  STR             R0, [SP,#0xB8+s]
1D8310:  LDR             R0, =(byte_382938 - 0x1D831C)
1D8314:  ADD             R0, PC, R0; byte_382938
1D8318:  STR             R0, [R11,#var_2C]
1D831C:  LDR             R0, =(byte_382938 - 0x1D8328)
1D8320:  ADD             R0, PC, R0; byte_382938
1D8324:  STR             R0, [SP,#0xB8+var_8C]
1D8328:  LDR             R0, =(byte_382938 - 0x1D8334)
1D832C:  ADD             R0, PC, R0; byte_382938
1D8330:  STR             R0, [SP,#0xB8+var_90]
1D8334:  LDR             R0, =(LogLevel_ptr - 0x1D8340)
1D8338:  LDR             R0, [PC,R0]; LogLevel
1D833C:  STR             R0, [SP,#0xB8+var_A8]
1D8340:  LDR             R0, =(byte_382938 - 0x1D834C)
1D8344:  ADD             R0, PC, R0; byte_382938
1D8348:  STR             R0, [SP,#0xB8+var_B0]
1D834C:  LDR             R0, =(byte_382938 - 0x1D8358)
1D8350:  ADD             R9, PC, R0; byte_382938
1D8354:  B               loc_1D8808
1D8358:  MOV             R0, R7; s
1D835C:  BL              strlen
1D8360:  LDR             R6, [R11,#dest]
1D8364:  ADD             R2, R0, #1; n
1D8368:  MOV             R1, R7; src
1D836C:  MOV             R0, R6; dest
1D8370:  BL              j_memmove
1D8374:  LDRB            R6, [R6]
1D8378:  CMP             R6, #0x5B ; '['
1D837C:  BNE             loc_1D8454
1D8380:  LDR             R0, [R11,#var_38]
1D8384:  ADD             R2, R0, #1
1D8388:  MOV             R0, #0
1D838C:  ADD             R1, R10, R0
1D8390:  MOV             R7, R2
1D8394:  ADD             R0, R0, #1
1D8398:  LDRB            R1, [R1,#1]
1D839C:  CMP             R1, #0x5D ; ']'
1D83A0:  ADDNE           R2, R7, #1
1D83A4:  CMPNE           R1, #0
1D83A8:  BNE             loc_1D838C
1D83AC:  CMP             R1, #0
1D83B0:  BEQ             loc_1D84CC
1D83B4:  LDR             R1, [R11,#var_44]
1D83B8:  MOV             R2, #0
1D83BC:  STRB            R2, [R1,R0]
1D83C0:  LDRB            R6, [R7,#1]
1D83C4:  CMP             R6, #0
1D83C8:  BEQ             loc_1D8408
1D83CC:  MOV             R0, R6; int
1D83D0:  BL              isspace
1D83D4:  ADD             R7, R7, #1
1D83D8:  CMP             R0, #0
1D83DC:  BNE             loc_1D83C0
1D83E0:  CMP             R6, #0x23 ; '#'
1D83E4:  BEQ             loc_1D8408
1D83E8:  LDR             R0, [SP,#0xB8+var_70]
1D83EC:  LDR             R0, [R0]
1D83F0:  CMP             R0, #2
1D83F4:  BCC             loc_1D8408
1D83F8:  ADR             R0, aLoadconfigfrom; "LoadConfigFromFile"
1D83FC:  LDR             R1, [SP,#0xB8+var_98]
1D8400:  MOV             R2, R7
1D8404:  BL              j_al_print
1D8408:  LDR             R0, =(dword_382934 - 0x1D8414)
1D840C:  LDR             R5, [PC,R0]; dword_382934
1D8410:  CMP             R5, #0
1D8414:  BEQ             loc_1D86AC
1D8418:  LDR             R0, =(dword_382930 - 0x1D8428)
1D841C:  MOV             R4, #0
1D8420:  LDR             R6, [PC,R0]; dword_382930
1D8424:  LDR             R7, [R6]
1D8428:  LDR             R1, [R11,#s2]; s2
1D842C:  MOV             R0, R7; s1
1D8430:  BL              strcasecmp
1D8434:  CMP             R0, #0
1D8438:  BEQ             loc_1D86B4
1D843C:  ADD             R4, R4, #1
1D8440:  ADD             R6, R6, #0xC
1D8444:  CMP             R4, R5
1D8448:  BCC             loc_1D8424
1D844C:  LDR             R4, [R11,#var_3C]
1D8450:  B               loc_1D86EC
1D8454:  MOV             R5, #0
1D8458:  B               loc_1D8468
1D845C:  ADD             R0, R9, R5
1D8460:  ADD             R5, R5, #1
1D8464:  LDRB            R6, [R0,#1]
1D8468:  UXTB            R7, R6
1D846C:  CMP             R7, #0
1D8470:  BEQ             loc_1D84A4
1D8474:  CMP             R7, #0x23 ; '#'
1D8478:  CMPNE           R7, #0x3D ; '='
1D847C:  BEQ             loc_1D8498
1D8480:  MOV             R0, R7; int
1D8484:  BL              isspace
1D8488:  CMP             R0, #0
1D848C:  BEQ             loc_1D845C
1D8490:  TST             R6, #0xFF
1D8494:  BEQ             loc_1D84A4
1D8498:  CMP             R5, #0
1D849C:  CMPNE           R7, #0x23 ; '#'
1D84A0:  BNE             loc_1D84F4
1D84A4:  LDR             R0, [R11,#var_40]
1D84A8:  LDR             R0, [R0]
1D84AC:  CMP             R0, #0
1D84B0:  BEQ             loc_1D86A4
1D84B4:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D84B8:  LDR             R1, [R11,#var_48]
1D84BC:  LDR             R2, [R11,#var_4C]
1D84C0:  BL              j_al_print
1D84C4:  LDR             R6, [R11,#var_20]
1D84C8:  B               loc_1D87EC
1D84CC:  LDR             R0, [R11,#var_50]
1D84D0:  LDR             R0, [R0]
1D84D4:  CMP             R0, #0
1D84D8:  BEQ             loc_1D8834
1D84DC:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D84E0:  LDR             R1, [SP,#0xB8+var_68]
1D84E4:  LDR             R2, [SP,#0xB8+var_6C]
1D84E8:  BL              j_al_print
1D84EC:  LDR             R6, [R11,#var_20]
1D84F0:  B               loc_1D8838
1D84F4:  CMP             R7, #0x3D ; '='
1D84F8:  BEQ             loc_1D8530
1D84FC:  LDR             R7, [SP,#0xB8+var_90]
1D8500:  MOV             R0, #0
1D8504:  LDR             R1, [SP,#0xB8+var_8C]
1D8508:  STRB            R0, [R1,R5]
1D850C:  ADD             R0, R7, R5
1D8510:  LDRB            R6, [R0,#1]
1D8514:  MOV             R0, R6; int
1D8518:  BL              isspace
1D851C:  ADD             R5, R5, #1
1D8520:  CMP             R0, #0
1D8524:  BNE             loc_1D850C
1D8528:  CMP             R6, #0x3D ; '='
1D852C:  BNE             loc_1D87A4
1D8530:  LDR             R8, [SP,#0xB8+var_64]
1D8534:  MOV             R0, #0
1D8538:  STRB            R0, [R8,R5]!
1D853C:  LDRB            R0, [R8,#1]!; int
1D8540:  BL              isspace
1D8544:  CMP             R0, #0
1D8548:  BNE             loc_1D853C
1D854C:  LDR             R0, [R11,#var_20]
1D8550:  LDR             R7, [R0,#4]
1D8554:  LDR             R5, [R0,#8]
1D8558:  CMP             R5, #0
1D855C:  MOV             R6, R7
1D8560:  BEQ             loc_1D8590
1D8564:  MOV             R6, R7
1D8568:  LDR             R0, [R6]; s1
1D856C:  LDR             R1, [R11,#var_2C]; s2
1D8570:  BL              strcasecmp
1D8574:  CMP             R0, #0
1D8578:  BEQ             loc_1D8590
1D857C:  ADD             R6, R6, #8
1D8580:  SUB             R0, R6, R7
1D8584:  MOV             R0, R0,ASR#3
1D8588:  CMP             R0, R5
1D858C:  BCC             loc_1D8568
1D8590:  SUB             R0, R6, R7
1D8594:  MOV             R0, R0,ASR#3
1D8598:  CMP             R0, R5
1D859C:  BCC             loc_1D85E8
1D85A0:  MOV             R0, #8
1D85A4:  ADD             R1, R0, R5,LSL#3; size
1D85A8:  MOV             R0, R7; ptr
1D85AC:  BL              realloc
1D85B0:  MOV             R6, R0
1D85B4:  CMP             R6, #0
1D85B8:  BEQ             loc_1D87C8
1D85BC:  LDR             R1, [R11,#var_20]
1D85C0:  LDR             R4, [R1,#8]
1D85C4:  STR             R6, [R1,#4]
1D85C8:  ADD             R0, R4, #1
1D85CC:  STR             R0, [R1,#8]
1D85D0:  LDR             R0, [SP,#0xB8+s]; s
1D85D4:  BL              strdup
1D85D8:  STR             R0, [R6,R4,LSL#3]
1D85DC:  ADD             R6, R6, R4,LSL#3
1D85E0:  MOV             R0, #0
1D85E4:  STR             R0, [R6,#4]
1D85E8:  MOV             R0, R8; s
1D85EC:  BL              strlen
1D85F0:  ADD             R2, R0, #1; n
1D85F4:  LDR             R0, [SP,#0xB8+var_78]; dest
1D85F8:  MOV             R1, R8; src
1D85FC:  BL              j_memmove
1D8600:  LDR             R8, [R11,#var_54]
1D8604:  MOV             R5, #0
1D8608:  LDR             R1, [SP,#0xB8+var_7C]
1D860C:  B               loc_1D8614
1D8610:  ADD             R5, R5, #1
1D8614:  LDRB            R0, [R1,R5]
1D8618:  CMP             R0, #0
1D861C:  BEQ             loc_1D862C
1D8620:  CMP             R0, #0x23 ; '#'
1D8624:  CMPNE           R0, #0xA
1D8628:  BNE             loc_1D8610
1D862C:  MOV             R4, R5
1D8630:  CMP             R4, #1
1D8634:  BLT             loc_1D8654
1D8638:  LDR             R0, [R11,#var_28]
1D863C:  SUB             R5, R4, #1
1D8640:  ADD             R0, R0, R4
1D8644:  LDRB            R0, [R0,#-1]; int
1D8648:  BL              isspace
1D864C:  CMP             R0, #0
1D8650:  BNE             loc_1D862C
1D8654:  LDR             R5, [SP,#0xB8+var_80]
1D8658:  MOV             R0, #0
1D865C:  STRB            R0, [R5,R4]
1D8660:  LDR             R0, [R6,#4]; ptr
1D8664:  BL              free
1D8668:  MOV             R0, R5; s
1D866C:  BL              strdup
1D8670:  MOV             R3, R0
1D8674:  STR             R3, [R6,#4]
1D8678:  LDR             R0, [SP,#0xB8+var_84]
1D867C:  LDR             R0, [R0]
1D8680:  CMP             R0, #2
1D8684:  BLS             loc_1D8698
1D8688:  LDR             R2, [R6]
1D868C:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D8690:  LDR             R1, [SP,#0xB8+var_A4]
1D8694:  BL              j_al_print
1D8698:  LDR             R6, [R11,#var_20]
1D869C:  LDR             R4, [R11,#var_3C]
1D86A0:  B               loc_1D87EC
1D86A4:  LDR             R6, [R11,#var_20]
1D86A8:  B               loc_1D87EC
1D86AC:  MOV             R5, #0
1D86B0:  B               loc_1D86EC
1D86B4:  LDR             R0, [SP,#0xB8+var_74]
1D86B8:  LDR             R0, [R0]
1D86BC:  CMP             R0, #3
1D86C0:  BCC             loc_1D86D4
1D86C4:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D86C8:  LDR             R1, [SP,#0xB8+var_A0]
1D86CC:  MOV             R2, R7
1D86D0:  BL              j_al_print
1D86D4:  LDR             R4, [R11,#var_3C]
1D86D8:  CMP             R6, #0
1D86DC:  LDR             R5, [R11,#var_34]
1D86E0:  BNE             loc_1D8838
1D86E4:  LDR             R0, =(dword_382934 - 0x1D86F0)
1D86E8:  LDR             R5, [PC,R0]; dword_382934
1D86EC:  LDR             R0, =(dword_382930 - 0x1D8704)
1D86F0:  ADD             R1, R5, R5,LSL#1
1D86F4:  MOV             R2, #0xC
1D86F8:  ADD             R1, R2, R1,LSL#2; size
1D86FC:  LDR             R0, [PC,R0]; dword_382930 ; ptr
1D8700:  BL              realloc
1D8704:  MOV             R6, R0
1D8708:  CMP             R6, #0
1D870C:  BEQ             loc_1D8774
1D8710:  LDR             R2, [R11,#var_58]
1D8714:  LDR             R1, =(dword_382930 - 0x1D8724)
1D8718:  LDR             R0, [R2]
1D871C:  STR             R6, [PC,R1]; dword_382930
1D8720:  ADD             R1, R0, #1
1D8724:  STR             R1, [R2]
1D8728:  ADD             R4, R0, R0,LSL#1
1D872C:  LDR             R0, [SP,#0xB8+var_60]; s
1D8730:  BL              strdup
1D8734:  MOV             R2, R0
1D8738:  MOV             R0, #0
1D873C:  STR             R2, [R6,R4,LSL#2]
1D8740:  ADD             R6, R6, R4,LSL#2
1D8744:  STR             R0, [R6,#4]
1D8748:  STR             R0, [R6,#8]
1D874C:  LDR             R0, [SP,#0xB8+var_5C]
1D8750:  LDR             R5, [R11,#var_34]
1D8754:  LDR             R0, [R0]
1D8758:  CMP             R0, #3
1D875C:  BCC             loc_1D879C
1D8760:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D8764:  LDR             R1, [SP,#0xB8+var_94]
1D8768:  BL              j_al_print
1D876C:  LDR             R4, [R11,#var_3C]
1D8770:  B               loc_1D8838
1D8774:  LDR             R0, [SP,#0xB8+var_88]
1D8778:  LDR             R5, [R11,#var_34]
1D877C:  LDR             R0, [R0]
1D8780:  CMP             R0, #0
1D8784:  BEQ             loc_1D8834
1D8788:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D878C:  LDR             R1, [SP,#0xB8+var_9C]
1D8790:  BL              j_al_print
1D8794:  LDR             R6, [R11,#var_20]
1D8798:  B               loc_1D8838
1D879C:  LDR             R4, [R11,#var_3C]
1D87A0:  B               loc_1D8838
1D87A4:  LDR             R0, [SP,#0xB8+var_A8]
1D87A8:  LDR             R0, [R0]
1D87AC:  CMP             R0, #0
1D87B0:  BEQ             loc_1D87E4
1D87B4:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D87B8:  ADR             R1, aConfigParseErr; "config parse error: option without a va"...
1D87BC:  LDR             R2, [SP,#0xB8+var_B0]
1D87C0:  BL              j_al_print
1D87C4:  B               loc_1D87E4
1D87C8:  LDR             R0, [SP,#0xB8+var_B4]
1D87CC:  LDR             R0, [R0]
1D87D0:  CMP             R0, #0
1D87D4:  BEQ             loc_1D87E4
1D87D8:  ADR             R0, aLoadconfigfrom_0; "LoadConfigFromFile"
1D87DC:  ADR             R1, aConfigParseErr_0; "config parse error: error reallocating "...
1D87E0:  BL              j_al_print
1D87E4:  LDR             R6, [R11,#var_20]
1D87E8:  LDR             R8, [R11,#var_54]
1D87EC:  LDR             R5, [R11,#var_34]
1D87F0:  B               loc_1D8838
1D87F4:  DCB "LoadConfigFromFile",0
1D8807:  DCB 0
1D8808:  SUB             R7, R4, #1
1D880C:  STR             R6, [R11,#var_20]
1D8810:  LDRB            R6, [R7,#1]!
1D8814:  MOV             R0, R6; int
1D8818:  BL              isspace
1D881C:  CMP             R0, #0
1D8820:  BNE             loc_1D8810
1D8824:  CMP             R6, #0
1D8828:  BEQ             loc_1D8834
1D882C:  CMP             R6, #0x23 ; '#'
1D8830:  BNE             loc_1D8358
1D8834:  LDR             R6, [R11,#var_20]
1D8838:  MOV             R0, R5; s
1D883C:  MOV             R1, #0x400; n
1D8840:  MOV             R2, R8; stream
1D8844:  BL              fgets
1D8848:  CMP             R0, #0
1D884C:  BNE             loc_1D8808
1D8850:  SUB             SP, R11, #0x1C
1D8854:  POP             {R4-R11,PC}
