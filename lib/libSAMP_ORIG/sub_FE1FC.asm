; =========================================================
; Game Engine Function: sub_FE1FC
; Address            : 0xFE1FC - 0xFE70A
; =========================================================

FE1FC:  PUSH            {R4-R7,LR}
FE1FE:  ADD             R7, SP, #0xC
FE200:  PUSH.W          {R8-R11}
FE204:  SUB             SP, SP, #0x3C
FE206:  MOV             R8, R0
FE208:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xFE210)
FE20C:  ADD             R0, PC; __stack_chk_guard_ptr
FE20E:  LDR             R0, [R0]; __stack_chk_guard
FE210:  LDR             R0, [R0]
FE212:  STR             R0, [SP,#0x58+var_20]
FE214:  LDRD.W          R0, R1, [R8]
FE218:  CMP             R1, R0
FE21A:  BEQ             loc_FE29C
FE21C:  LDRB            R2, [R0]
FE21E:  CMP             R2, #0x54 ; 'T'
FE220:  IT NE
FE222:  CMPNE           R2, #0x47 ; 'G'
FE224:  BNE             loc_FE29C
FE226:  SUBS            R3, R1, R0
FE228:  BEQ             loc_FE312
FE22A:  CMP             R2, #0x47 ; 'G'
FE22C:  BEQ.W           loc_FE334
FE230:  CMP             R2, #0x54 ; 'T'
FE232:  BNE             loc_FE312
FE234:  CMP             R3, #2
FE236:  BCC.W           loc_FE3A8; jumptable 000FE374 case 85
FE23A:  LDRB            R2, [R0,#1]
FE23C:  SUB.W           R3, R2, #0x53 ; 'S'; switch 5 cases
FE240:  CMP             R3, #4
FE242:  BLS.W           loc_FE374
FE246:  CMP             R2, #0x43 ; 'C'; jumptable 000FE374 default case
FE248:  BEQ.W           loc_FE54A
FE24C:  CMP             R2, #0x48 ; 'H'
FE24E:  BEQ.W           loc_FE5B4
FE252:  CMP             R2, #0x49 ; 'I'
FE254:  BEQ.W           loc_FE5E6
FE258:  CMP             R2, #0x63 ; 'c'
FE25A:  BNE.W           loc_FE3A8; jumptable 000FE374 case 85
FE25E:  ADDS            R0, #2
FE260:  STR.W           R0, [R8]
FE264:  MOV             R0, R8
FE266:  BL              sub_FF984
FE26A:  CMP             R0, #0
FE26C:  BNE             loc_FE312
FE26E:  MOV             R0, R8
FE270:  BL              sub_FF984
FE274:  CMP             R0, #0
FE276:  BNE             loc_FE312
FE278:  MOV             R0, R8
FE27A:  BL              sub_FE1FC
FE27E:  CMP             R0, #0
FE280:  BEQ             loc_FE312
FE282:  MOV             R6, R0
FE284:  ADD.W           R0, R8, #0x198
FE288:  MOVS            R1, #0x14
FE28A:  BL              sub_FFA98
FE28E:  LDR             R1, =(aCovariantRetur - 0xFE298); "covariant return thunk to " ...
FE290:  MOV             R9, R0
FE292:  LDR             R0, =0x1010114
FE294:  ADD             R1, PC; "covariant return thunk to "
FE296:  ADD.W           R2, R1, #0x1A
FE29A:  B               loc_FE610
FE29C:  LDRD.W          R0, R1, [R8,#0x168]
FE2A0:  MOV.W           R9, #0
FE2A4:  STR.W           R8, [SP,#0x58+var_24]
FE2A8:  SUBS            R0, R1, R0
FE2AA:  STRB.W          R9, [SP,#0x58+var_2C]
FE2AE:  ASRS            R0, R0, #2
FE2B0:  STR.W           R9, [SP,#0x58+var_30]
FE2B4:  STR             R0, [SP,#0x58+var_28]
FE2B6:  MOV             R0, R8
FE2B8:  STRH.W          R9, [SP,#0x58+var_34]
FE2BC:  ADD             R6, SP, #0x58+var_34
FE2BE:  MOV             R1, R6
FE2C0:  BL              sub_FF2B8
FE2C4:  STR             R0, [SP,#0x58+var_38]
FE2C6:  CBZ             R0, loc_FE316
FE2C8:  ADD.W           R1, R6, #8
FE2CC:  STR             R1, [SP,#0x58+var_4C]
FE2CE:  LDRD.W          R1, R2, [R8,#0x168]
FE2D2:  MOV             R9, R0
FE2D4:  LDR.W           R12, [SP,#0x58+var_28]
FE2D8:  ADD.W           R11, R6, #4
FE2DC:  LDRD.W          R0, LR, [R8,#0x14C]
FE2E0:  SUBS            R2, R2, R1
FE2E2:  ASRS            R6, R2, #2
FE2E4:  MOV             R3, R12
FE2E6:  B               loc_FE304
FE2E8:  LDR.W           R4, [R1,R3,LSL#2]
FE2EC:  LDRD.W          R10, R2, [R2]
FE2F0:  SUB.W           R2, R2, R10
FE2F4:  LDR             R5, [R4,#8]
FE2F6:  CMP.W           R5, R2,ASR#2
FE2FA:  BCS             loc_FE312
FE2FC:  LDR.W           R2, [R10,R5,LSL#2]
FE300:  ADDS            R3, #1
FE302:  STR             R2, [R4,#0xC]
FE304:  CMP             R3, R6
FE306:  BCS             loc_FE3BE
FE308:  CMP             R0, LR
FE30A:  ITT NE
FE30C:  LDRNE           R2, [R0]
FE30E:  CMPNE           R2, #0
FE310:  BNE             loc_FE2E8
FE312:  MOV.W           R9, #0
FE316:  LDR             R0, [SP,#0x58+var_20]
FE318:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xFE320)
FE31C:  ADD             R1, PC; __stack_chk_guard_ptr
FE31E:  LDR             R1, [R1]; __stack_chk_guard
FE320:  LDR             R1, [R1]
FE322:  CMP             R1, R0
FE324:  ITTTT EQ
FE326:  MOVEQ           R0, R9
FE328:  ADDEQ           SP, SP, #0x3C ; '<'
FE32A:  POPEQ.W         {R8-R11}
FE32E:  POPEQ           {R4-R7,PC}
FE330:  BLX             __stack_chk_fail
FE334:  CMP             R3, #2
FE336:  BCC             loc_FE312
FE338:  LDRB            R1, [R0,#1]
FE33A:  CMP             R1, #0x52 ; 'R'
FE33C:  BEQ.W           loc_FE462
FE340:  CMP             R1, #0x56 ; 'V'
FE342:  BNE             loc_FE312
FE344:  ADDS            R0, #2
FE346:  STR.W           R0, [R8]
FE34A:  MOV             R0, R8
FE34C:  MOVS            R1, #0
FE34E:  MOV.W           R9, #0
FE352:  BL              sub_FF2B8
FE356:  CMP             R0, #0
FE358:  BEQ             loc_FE316
FE35A:  MOV             R6, R0
FE35C:  ADD.W           R0, R8, #0x198
FE360:  MOVS            R1, #0x14
FE362:  BL              sub_FFA98
FE366:  LDR             R1, =(aGuardVariableF - 0xFE370); "guard variable for " ...
FE368:  MOV             R9, R0
FE36A:  LDR             R0, =0x1010114
FE36C:  ADD             R1, PC; "guard variable for "
FE36E:  ADD.W           R2, R1, #0x13
FE372:  B               loc_FE610
FE374:  TBB.W           [PC,R3]; switch jump
FE378:  DCB 3; jump table for switch statement
FE379:  DCB 0xA9
FE37A:  DCB 0x18
FE37B:  DCB 0xBF
FE37C:  DCB 0xD5
FE37D:  ALIGN 2
FE37E:  ADDS            R0, #2; jumptable 000FE374 case 83
FE380:  STR.W           R0, [R8]
FE384:  MOV             R0, R8
FE386:  BL              sub_FE7F0
FE38A:  CMP             R0, #0
FE38C:  BEQ             loc_FE312
FE38E:  MOV             R6, R0
FE390:  ADD.W           R0, R8, #0x198
FE394:  MOVS            R1, #0x14
FE396:  BL              sub_FFA98
FE39A:  LDR             R1, =(aTypeinfoNameFo - 0xFE3A4); "typeinfo name for " ...
FE39C:  MOV             R9, R0
FE39E:  LDR             R0, =0x1010114
FE3A0:  ADD             R1, PC; "typeinfo name for "
FE3A2:  ADD.W           R2, R1, #0x12
FE3A6:  B               loc_FE610
FE3A8:  ADDS            R0, #1; jumptable 000FE374 case 85
FE3AA:  STR.W           R0, [R8]
FE3AE:  CMP             R1, R0
FE3B0:  BEQ             loc_FE422
FE3B2:  LDRB            R0, [R0]
FE3B4:  SUBS            R0, #0x76 ; 'v'
FE3B6:  CLZ.W           R0, R0
FE3BA:  LSRS            R4, R0, #5
FE3BC:  B               loc_FE424
FE3BE:  ADD.W           R0, R1, R12,LSL#2
FE3C2:  STR.W           R0, [R8,#0x16C]
FE3C6:  ADD             R0, SP, #0x58+var_24
FE3C8:  BL              sub_FF730
FE3CC:  CMP             R0, #0
FE3CE:  BNE             loc_FE316
FE3D0:  MOV.W           R9, #0
FE3D4:  MOV             R0, R8
FE3D6:  STR.W           R9, [SP,#0x58+var_3C]
FE3DA:  LDR             R1, =(aUa9enableIfi - 0xFE3E0); "Ua9enable_ifI" ...
FE3DC:  ADD             R1, PC; "Ua9enable_ifI"
FE3DE:  ADD.W           R2, R1, #0xD
FE3E2:  BL              sub_FE18C
FE3E6:  CMP             R0, #0
FE3E8:  BEQ.W           loc_FE664
FE3EC:  MOV             R6, R8
FE3EE:  LDR.W           R0, [R6,#8]!
FE3F2:  LDR             R1, [R6,#4]
FE3F4:  ADD             R5, SP, #0x58+var_44
FE3F6:  SUBS            R0, R1, R0
FE3F8:  ASRS            R4, R0, #2
FE3FA:  LDRD.W          R0, R1, [R8]
FE3FE:  CMP             R0, R1
FE400:  BEQ             loc_FE40A
FE402:  LDRB            R1, [R0]
FE404:  CMP             R1, #0x45 ; 'E'
FE406:  BEQ.W           loc_FE634
FE40A:  MOV             R0, R8
FE40C:  BL              sub_FF754
FE410:  CMP             R0, #0
FE412:  STR             R0, [SP,#0x58+var_44]
FE414:  BEQ.W           loc_FE312
FE418:  MOV             R0, R6
FE41A:  MOV             R1, R5
FE41C:  BL              sub_FF894
FE420:  B               loc_FE3FA
FE422:  MOVS            R4, #0
FE424:  MOV             R0, R8
FE426:  BL              sub_FF984
FE42A:  CMP             R0, #0
FE42C:  BNE.W           loc_FE312
FE430:  MOV             R0, R8
FE432:  BL              sub_FE1FC
FE436:  CMP             R0, #0
FE438:  BEQ.W           loc_FE312
FE43C:  MOV             R6, R0
FE43E:  ADD.W           R0, R8, #0x198
FE442:  MOVS            R1, #0x14
FE444:  BL              sub_FFA98
FE448:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0xFE452); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
FE44A:  MOV             R9, R0
FE44C:  LDR             R0, =0x1010114
FE44E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
FE450:  ADDS            R1, #8
FE452:  STRD.W          R1, R0, [R9]
FE456:  CBZ             R4, loc_FE49A
FE458:  LDR             R0, =(aVirtualThunkTo - 0xFE45E); "virtual thunk to " ...
FE45A:  ADD             R0, PC; "virtual thunk to "
FE45C:  ADD.W           R1, R0, #0x11
FE460:  B               loc_FE4A2
FE462:  ADDS            R0, #2
FE464:  STR.W           R0, [R8]
FE468:  MOV             R0, R8
FE46A:  MOVS            R1, #0
FE46C:  MOV.W           R9, #0
FE470:  BL              sub_FF2B8
FE474:  CMP             R0, #0
FE476:  BEQ.W           loc_FE316
FE47A:  ADD             R1, SP, #0x58+var_34
FE47C:  MOV             R6, R0
FE47E:  MOV             R0, R8
FE480:  BL              sub_FFA38
FE484:  LDRD.W          R1, R2, [R8]
FE488:  CMP             R1, R2
FE48A:  BEQ             loc_FE4AC
FE48C:  LDRB            R2, [R1]
FE48E:  CMP             R2, #0x5F ; '_'
FE490:  BNE             loc_FE4AC
FE492:  ADDS            R0, R1, #1
FE494:  STR.W           R0, [R8]
FE498:  B               loc_FE4B2
FE49A:  LDR             R0, =(aNonVirtualThun - 0xFE4A0); "non-virtual thunk to " ...
FE49C:  ADD             R0, PC; "non-virtual thunk to "
FE49E:  ADD.W           R1, R0, #0x15
FE4A2:  STR.W           R0, [R9,#8]
FE4A6:  STR.W           R1, [R9,#0xC]
FE4AA:  B               loc_FE626
FE4AC:  CMP             R0, #0
FE4AE:  BEQ.W           loc_FE312
FE4B2:  ADD.W           R0, R8, #0x198
FE4B6:  MOVS            R1, #0x14
FE4B8:  BL              sub_FFA98
FE4BC:  LDR             R1, =(aReferenceTempo - 0xFE4C6); "reference temporary for " ...
FE4BE:  MOV             R9, R0
FE4C0:  LDR             R0, =0x1010114
FE4C2:  ADD             R1, PC; "reference temporary for "
FE4C4:  ADD.W           R2, R1, #0x18
FE4C8:  B               loc_FE610
FE4CA:  ADDS            R0, #2; jumptable 000FE374 case 84
FE4CC:  STR.W           R0, [R8]
FE4D0:  MOV             R0, R8
FE4D2:  BL              sub_FE7F0
FE4D6:  CMP             R0, #0
FE4D8:  BEQ.W           loc_FE312
FE4DC:  MOV             R6, R0
FE4DE:  ADD.W           R0, R8, #0x198
FE4E2:  MOVS            R1, #0x14
FE4E4:  BL              sub_FFA98
FE4E8:  LDR             R1, =(aVttFor - 0xFE4F2); "VTT for " ...
FE4EA:  MOV             R9, R0
FE4EC:  LDR             R0, =0x1010114
FE4EE:  ADD             R1, PC; "VTT for "
FE4F0:  ADD.W           R2, R1, #8
FE4F4:  B               loc_FE610
FE4F6:  ADDS            R0, #2; jumptable 000FE374 case 86
FE4F8:  STR.W           R0, [R8]
FE4FC:  MOV             R0, R8
FE4FE:  BL              sub_FE7F0
FE502:  CMP             R0, #0
FE504:  BEQ.W           loc_FE312
FE508:  MOV             R6, R0
FE50A:  ADD.W           R0, R8, #0x198
FE50E:  MOVS            R1, #0x14
FE510:  BL              sub_FFA98
FE514:  LDR             R1, =(aVtableFor - 0xFE51E); "vtable for " ...
FE516:  MOV             R9, R0
FE518:  LDR             R0, =0x1010114
FE51A:  ADD             R1, PC; "vtable for "
FE51C:  ADD.W           R2, R1, #0xB
FE520:  B               loc_FE610
FE522:  ADDS            R0, #2; jumptable 000FE374 case 87
FE524:  STR.W           R0, [R8]
FE528:  MOV             R0, R8
FE52A:  MOVS            R1, #0
FE52C:  MOV.W           R9, #0
FE530:  BL              sub_FF2B8
FE534:  CMP             R0, #0
FE536:  STR             R0, [SP,#0x58+var_34]
FE538:  BEQ.W           loc_FE316
FE53C:  LDR             R1, =(aThreadLocalWra - 0xFE546); "thread-local wrapper routine for " ...
FE53E:  ADD             R2, SP, #0x58+var_34
FE540:  MOV             R0, R8
FE542:  ADD             R1, PC; "thread-local wrapper routine for "
FE544:  BL              sub_FE7AC
FE548:  B               loc_FE6F0
FE54A:  ADDS            R0, #2
FE54C:  STR.W           R0, [R8]
FE550:  MOV             R0, R8
FE552:  BL              sub_FE7F0
FE556:  CMP             R0, #0
FE558:  BEQ.W           loc_FE312
FE55C:  MOV             R6, R0
FE55E:  ADD             R0, SP, #0x58+var_34
FE560:  MOV             R1, R8
FE562:  MOVS            R2, #1
FE564:  BL              sub_FE75C
FE568:  LDRD.W          R0, R1, [SP,#0x58+var_34]
FE56C:  CMP             R0, R1
FE56E:  ITT NE
FE570:  LDRDNE.W        R0, R1, [R8]
FE574:  CMPNE           R0, R1
FE576:  BEQ.W           loc_FE312
FE57A:  LDRB            R1, [R0]
FE57C:  CMP             R1, #0x5F ; '_'
FE57E:  BNE.W           loc_FE312
FE582:  ADDS            R0, #1
FE584:  STR.W           R0, [R8]
FE588:  MOV             R0, R8
FE58A:  BL              sub_FE7F0
FE58E:  CMP             R0, #0
FE590:  BEQ.W           loc_FE312
FE594:  MOV             R4, R0
FE596:  ADD.W           R0, R8, #0x198
FE59A:  MOVS            R1, #0x10
FE59C:  BL              sub_FFA98
FE5A0:  MOV             R9, R0
FE5A2:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21CtorVtableSpecialNameE - 0xFE5AA); `vtable for'`anonymous namespace'::itanium_demangle::CtorVtableSpecialName ...
FE5A4:  LDR             R0, =0x1010115
FE5A6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::CtorVtableSpecialName
FE5A8:  STRD.W          R4, R6, [R9,#8]
FE5AC:  ADDS            R1, #8
FE5AE:  STRD.W          R1, R0, [R9]
FE5B2:  B               loc_FE316
FE5B4:  ADDS            R0, #2
FE5B6:  STR.W           R0, [R8]
FE5BA:  MOV             R0, R8
FE5BC:  MOVS            R1, #0
FE5BE:  MOV.W           R9, #0
FE5C2:  BL              sub_FF2B8
FE5C6:  CMP             R0, #0
FE5C8:  BEQ.W           loc_FE316
FE5CC:  MOV             R6, R0
FE5CE:  ADD.W           R0, R8, #0x198
FE5D2:  MOVS            R1, #0x14
FE5D4:  BL              sub_FFA98
FE5D8:  LDR             R1, =(aThreadLocalIni - 0xFE5E2); "thread-local initialization routine for"... ...
FE5DA:  MOV             R9, R0
FE5DC:  LDR             R0, =0x1010114
FE5DE:  ADD             R1, PC; "thread-local initialization routine for"...
FE5E0:  ADD.W           R2, R1, #0x28 ; '('
FE5E4:  B               loc_FE610
FE5E6:  ADDS            R0, #2
FE5E8:  STR.W           R0, [R8]
FE5EC:  MOV             R0, R8
FE5EE:  BL              sub_FE7F0
FE5F2:  CMP             R0, #0
FE5F4:  BEQ.W           loc_FE312
FE5F8:  MOV             R6, R0
FE5FA:  ADD.W           R0, R8, #0x198
FE5FE:  MOVS            R1, #0x14
FE600:  BL              sub_FFA98
FE604:  LDR             R1, =(aTypeinfoFor - 0xFE60E); "typeinfo for " ...
FE606:  MOV             R9, R0
FE608:  LDR             R0, =0x1010114
FE60A:  ADD             R1, PC; "typeinfo for "
FE60C:  ADD.W           R2, R1, #0xD
FE610:  LDR             R3, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0xFE616); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
FE612:  ADD             R3, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
FE614:  ADDS            R3, #8
FE616:  STR.W           R3, [R9]
FE61A:  STR.W           R0, [R9,#4]
FE61E:  STR.W           R1, [R9,#8]
FE622:  STR.W           R2, [R9,#0xC]
FE626:  STR.W           R6, [R9,#0x10]
FE62A:  B               loc_FE316
FE62C:  DCD aCovariantRetur - 0xFE298
FE630:  DCD 0x1010114
FE634:  ADDS            R0, #1
FE636:  STR.W           R0, [R8]
FE63A:  ADD             R0, SP, #0x58+var_44
FE63C:  MOV             R1, R8
FE63E:  MOV             R2, R4
FE640:  BL              sub_FF908
FE644:  ADD.W           R0, R8, #0x198
FE648:  MOVS            R1, #0x10
FE64A:  BL              sub_FFA98
FE64E:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle12EnableIfAttrE - 0xFE656); `vtable for'`anonymous namespace'::itanium_demangle::EnableIfAttr ...
FE650:  LDR             R1, =0x1010109
FE652:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnableIfAttr
FE654:  LDRD.W          R3, R4, [SP,#0x58+var_44]
FE658:  ADDS            R2, #8
FE65A:  STRD.W          R3, R4, [R0,#8]
FE65E:  STRD.W          R2, R1, [R0]
FE662:  STR             R0, [SP,#0x58+var_3C]
FE664:  LDRB.W          R0, [SP,#0x58+var_34]
FE668:  STR.W           R9, [SP,#0x58+var_48]
FE66C:  CMP             R0, #0
FE66E:  BEQ             loc_FE6F4
FE670:  LDRD.W          R0, R1, [R8]
FE674:  CMP             R0, R1
FE676:  BEQ             loc_FE69C
FE678:  LDRB            R1, [R0]
FE67A:  CMP             R1, #0x76 ; 'v'
FE67C:  BNE             loc_FE69C
FE67E:  ADDS            R0, #1
FE680:  STR.W           R0, [R8]
FE684:  MOVS            R0, #0
FE686:  STRD.W          R0, R0, [SP,#0x58+var_44]
FE68A:  ADD             R0, SP, #0x58+var_3C
FE68C:  STRD.W          R0, R11, [SP,#0x58+var_58]
FE690:  LDR             R0, [SP,#0x58+var_4C]
FE692:  STR             R0, [SP,#0x58+var_50]
FE694:  ADD             R1, SP, #0x58+var_48
FE696:  ADD             R2, SP, #0x58+var_38
FE698:  ADD             R3, SP, #0x58+var_44
FE69A:  B               loc_FE6EA
FE69C:  MOV             R6, R8
FE69E:  ADD.W           R9, SP, #0x58+var_44
FE6A2:  LDR.W           R0, [R6,#8]!
FE6A6:  LDR             R1, [R6,#4]
FE6A8:  ADD             R5, SP, #0x58+var_24
FE6AA:  SUBS            R0, R1, R0
FE6AC:  ASRS            R4, R0, #2
FE6AE:  MOV             R0, R8
FE6B0:  BL              sub_FE7F0
FE6B4:  CMP             R0, #0
FE6B6:  STR             R0, [SP,#0x58+var_44]
FE6B8:  BEQ.W           loc_FE312
FE6BC:  MOV             R0, R6
FE6BE:  MOV             R1, R9
FE6C0:  BL              sub_FF894
FE6C4:  MOV             R0, R5
FE6C6:  BL              sub_FF730
FE6CA:  CMP             R0, #0
FE6CC:  BEQ             loc_FE6AE
FE6CE:  ADD             R5, SP, #0x58+var_44
FE6D0:  MOV             R1, R8
FE6D2:  MOV             R2, R4
FE6D4:  MOV             R0, R5
FE6D6:  BL              sub_FF908
FE6DA:  ADD             R0, SP, #0x58+var_3C
FE6DC:  STRD.W          R0, R11, [SP,#0x58+var_58]
FE6E0:  LDR             R0, [SP,#0x58+var_4C]
FE6E2:  MOV             R3, R5
FE6E4:  STR             R0, [SP,#0x58+var_50]
FE6E6:  ADD             R1, SP, #0x58+var_48
FE6E8:  ADD             R2, SP, #0x58+var_38
FE6EA:  MOV             R0, R8
FE6EC:  BL              sub_FF928
FE6F0:  MOV             R9, R0
FE6F2:  B               loc_FE316
FE6F4:  LDRB.W          R0, [SP,#0x58+var_34+1]
FE6F8:  CMP             R0, #0
FE6FA:  BEQ             loc_FE670
FE6FC:  MOV             R0, R8
FE6FE:  BL              sub_FE7F0
FE702:  CMP             R0, #0
FE704:  STR             R0, [SP,#0x58+var_48]
FE706:  BNE             loc_FE670
FE708:  B               loc_FE312
