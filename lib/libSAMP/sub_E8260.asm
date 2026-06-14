; =========================================================
; Game Engine Function: sub_E8260
; Address            : 0xE8260 - 0xE8858
; =========================================================

E8260:  PUSH            {R4-R7,LR}
E8262:  ADD             R7, SP, #0xC
E8264:  PUSH.W          {R8-R11}
E8268:  SUB             SP, SP, #4
E826A:  VPUSH           {D8}
E826E:  SUB             SP, SP, #0x78
E8270:  MOV.W           R10, #0
E8274:  MOV             R5, R0
E8276:  STR.W           R10, [SP,#0xA0+var_2C]
E827A:  ADD.W           R6, R0, #0x20 ; ' '
E827E:  STRD.W          R10, R10, [SP,#0xA0+var_34]
E8282:  ADD.W           R8, R0, #0x4C ; 'L'
E8286:  LDR             R0, =(unk_9216D - 0xE8296)
E8288:  ADD.W           R9, SP, #0xA0+var_58
E828C:  VLDR            D8, =+Inf
E8290:  MOV             R4, R1
E8292:  ADD             R0, PC; unk_9216D
E8294:  MOV             R11, R0
E8296:  LDR             R0, [R5,#0x18]
E8298:  SUBS            R0, #1; switch 14 cases
E829A:  CMP             R0, #0xD
E829C:  BHI.W           def_E82A0; jumptable 000E82A0 default case, cases 10-13
E82A0:  TBH.W           [PC,R0,LSL#1]; switch jump
E82A4:  DCW 0xE; jump table for switch statement
E82A6:  DCW 0x3C
E82A8:  DCW 0x35
E82AA:  DCW 0x55
E82AC:  DCW 0x6C
E82AE:  DCW 0x2C
E82B0:  DCW 0x5A
E82B2:  DCW 0x16
E82B4:  DCW 0x43
E82B6:  DCW 0x124
E82B8:  DCW 0x124
E82BA:  DCW 0x124
E82BC:  DCW 0x124
E82BE:  DCW 0xF9
E82C0:  MOVS            R0, #1; jumptable 000E82A0 case 1
E82C2:  STRB.W          R0, [SP,#0xA0+var_58]
E82C6:  MOV             R0, R4
E82C8:  MOV             R1, R9
E82CA:  BL              sub_EB7B0
E82CE:  B               loc_E838C
E82D0:  MOV             R0, R4; jumptable 000E82A0 case 8
E82D2:  MOV.W           R1, #0xFFFFFFFF
E82D6:  BL              sub_EB2E8
E82DA:  CMP             R0, #0
E82DC:  BEQ.W           loc_E8706
E82E0:  MOV             R0, R6
E82E2:  BL              sub_E67FC
E82E6:  CMP             R0, #0xA
E82E8:  STR             R0, [R5,#0x18]
E82EA:  BEQ             loc_E8346
E82EC:  MOVS            R0, #1
E82EE:  STRB.W          R0, [SP,#0xA0+var_58]
E82F2:  ADD             R0, SP, #0xA0+var_34
E82F4:  MOV             R1, R9
E82F6:  BL              sub_E8994
E82FA:  B               loc_E8296
E82FC:  LDRD.W          R0, R1, [R5,#0x60]; jumptable 000E82A0 case 6
E8300:  STRD.W          R0, R1, [SP,#0xA0+var_58]
E8304:  MOV             R0, R4
E8306:  MOV             R1, R9
E8308:  BL              sub_EBA0C
E830C:  B               loc_E838C
E830E:  STR.W           R10, [SP,#0xA0+var_58]; jumptable 000E82A0 case 3
E8312:  MOV             R0, R4
E8314:  MOV             R1, R9
E8316:  BL              sub_EB90A
E831A:  B               loc_E838C
E831C:  STRB.W          R10, [SP,#0xA0+var_58]; jumptable 000E82A0 case 2
E8320:  MOV             R0, R4
E8322:  MOV             R1, R9
E8324:  BL              sub_EB7B0
E8328:  B               loc_E838C
E832A:  MOV             R0, R4; jumptable 000E82A0 case 9
E832C:  MOV.W           R1, #0xFFFFFFFF
E8330:  BL              sub_EB1E8
E8334:  CMP             R0, #0
E8336:  BEQ.W           loc_E8706
E833A:  MOV             R0, R6
E833C:  BL              sub_E67FC
E8340:  CMP             R0, #0xB
E8342:  STR             R0, [R5,#0x18]
E8344:  BNE             loc_E842E
E8346:  LDR             R0, [R4,#8]
E8348:  SUBS            R0, #4
E834A:  STR             R0, [R4,#8]
E834C:  B               loc_E838C
E834E:  MOV             R0, R4; jumptable 000E82A0 case 4
E8350:  MOV             R1, R8
E8352:  BL              sub_EBB6E
E8356:  B               loc_E838C
E8358:  VLDR            D16, [R5,#0x70]; jumptable 000E82A0 case 7
E835C:  VABS.F64        D17, D16
E8360:  VCMP.F64        D17, D8
E8364:  VMRS            APSR_nzcv, FPSCR
E8368:  BMI             loc_E836E
E836A:  BGT             loc_E836E
E836C:  B               loc_E870A
E836E:  VSTR            D16, [SP,#0xA0+var_58]
E8372:  MOV             R0, R4
E8374:  MOV             R1, R9
E8376:  BL              sub_EB63E
E837A:  B               loc_E838C
E837C:  LDRD.W          R0, R1, [R5,#0x68]; jumptable 000E82A0 case 5
E8380:  STRD.W          R0, R1, [SP,#0xA0+var_58]
E8384:  MOV             R0, R4
E8386:  MOV             R1, R9
E8388:  BL              sub_EBCB6
E838C:  LDR             R0, [SP,#0xA0+var_30]
E838E:  CMP             R0, #0
E8390:  BEQ             loc_E847C
E8392:  SUBS            R0, #1
E8394:  LDR             R1, [SP,#0xA0+var_34]
E8396:  LSRS            R2, R0, #5
E8398:  AND.W           R0, R0, #0x1F
E839C:  LDR.W           R1, [R1,R2,LSL#2]
E83A0:  LSR.W           R0, R1, R0
E83A4:  LSLS            R0, R0, #0x1F
E83A6:  BEQ             loc_E83BA
E83A8:  MOV             R0, R6
E83AA:  BL              sub_E67FC
E83AE:  CMP             R0, #0xD
E83B0:  STR             R0, [R5,#0x18]
E83B2:  BEQ             loc_E83DC
E83B4:  CMP             R0, #0xA
E83B6:  BEQ             loc_E83CC
E83B8:  B               loc_E858C
E83BA:  MOV             R0, R6
E83BC:  BL              sub_E67FC
E83C0:  CMP             R0, #0xD
E83C2:  STR             R0, [R5,#0x18]
E83C4:  BEQ             loc_E83E4
E83C6:  CMP             R0, #0xB
E83C8:  BNE.W           loc_E8604
E83CC:  LDR             R0, [R4,#8]
E83CE:  LDR             R1, [SP,#0xA0+var_30]
E83D0:  SUBS            R0, #4
E83D2:  STR             R0, [R4,#8]
E83D4:  SUBS            R0, R1, #1
E83D6:  STR             R0, [SP,#0xA0+var_30]
E83D8:  BNE             loc_E8392
E83DA:  B               loc_E847C
E83DC:  MOV             R0, R6
E83DE:  BL              sub_E67FC
E83E2:  B               loc_E842A
E83E4:  MOV             R0, R6
E83E6:  BL              sub_E67FC
E83EA:  CMP             R0, #4
E83EC:  STR             R0, [R5,#0x18]
E83EE:  BNE.W           loc_E865A
E83F2:  LDR             R0, [R4,#8]
E83F4:  LDR.W           R0, [R0,#-4]
E83F8:  STR.W           R8, [SP,#0xA0+var_98]
E83FC:  LDR             R1, [R0,#8]
E83FE:  ADD             R0, SP, #0xA0+var_98
E8400:  STR             R0, [SP,#0xA0+var_A0]
E8402:  ADD             R0, SP, #0xA0+var_40
E8404:  STR             R0, [SP,#0xA0+var_9C]
E8406:  MOV             R0, R9
E8408:  MOV             R2, R8
E840A:  MOV             R3, R11
E840C:  BL              sub_EA136
E8410:  LDR             R0, [SP,#0xA0+var_58]
E8412:  ADDS            R0, #0x20 ; ' '
E8414:  STR             R0, [R4,#0x10]
E8416:  MOV             R0, R6
E8418:  BL              sub_E67FC
E841C:  CMP             R0, #0xC
E841E:  STR             R0, [R5,#0x18]
E8420:  BNE.W           loc_E86B0
E8424:  MOV             R0, R6
E8426:  BL              sub_E67FC
E842A:  STR             R0, [R5,#0x18]
E842C:  B               loc_E8296
E842E:  CMP             R0, #4
E8430:  BNE.W           loc_E87AC
E8434:  LDR             R0, [R4,#8]
E8436:  LDR.W           R0, [R0,#-4]
E843A:  LDR             R1, [R0,#8]
E843C:  LDR             R3, =(unk_9216D - 0xE8446)
E843E:  STR.W           R8, [SP,#0xA0+var_98]
E8442:  ADD             R3, PC; unk_9216D
E8444:  ADD             R0, SP, #0xA0+var_98
E8446:  STR             R0, [SP,#0xA0+var_A0]
E8448:  ADD             R0, SP, #0xA0+var_40
E844A:  STR             R0, [SP,#0xA0+var_9C]
E844C:  MOV             R0, R9
E844E:  MOV             R2, R8
E8450:  BL              sub_EA136
E8454:  LDR             R0, [SP,#0xA0+var_58]
E8456:  ADDS            R0, #0x20 ; ' '
E8458:  STR             R0, [R4,#0x10]
E845A:  MOV             R0, R6
E845C:  BL              sub_E67FC
E8460:  CMP             R0, #0xC
E8462:  STR             R0, [R5,#0x18]
E8464:  BNE.W           loc_E8802
E8468:  STRB.W          R10, [SP,#0xA0+var_58]
E846C:  ADD             R0, SP, #0xA0+var_34
E846E:  MOV             R1, R9
E8470:  BL              sub_E8994
E8474:  MOV             R0, R6
E8476:  BL              sub_E67FC
E847A:  B               loc_E842A
E847C:  MOVS            R4, #1
E847E:  LDR             R0, [SP,#0xA0+var_34]; void *
E8480:  CBZ             R0, loc_E8486
E8482:  BLX             j__ZdlPv; operator delete(void *)
E8486:  MOV             R0, R4
E8488:  ADD             SP, SP, #0x78 ; 'x'
E848A:  VPOP            {D8}
E848E:  ADD             SP, SP, #4
E8490:  POP.W           {R8-R11}
E8494:  POP             {R4-R7,PC}
E8496:  LDR.W           R8, [R5,#0x34]; jumptable 000E82A0 case 14
E849A:  ADD             R0, SP, #0xA0+var_40
E849C:  MOV             R1, R6
E849E:  BL              sub_E7C78
E84A2:  VLDR            D16, [R5,#0x34]
E84A6:  LDR             R0, [R5,#0x3C]
E84A8:  LDR             R1, =(aValue - 0xE84B0); "value" ...
E84AA:  STR             R0, [SP,#0xA0+var_60]
E84AC:  ADD             R1, PC; "value"
E84AE:  VSTR            D16, [SP,#0xA0+var_68]
E84B2:  ADD             R0, SP, #0xA0+var_84; int
E84B4:  BL              sub_DC6DC
E84B8:  ADD             R0, SP, #0xA0+var_78
E84BA:  ADD             R3, SP, #0xA0+var_84
E84BC:  MOV             R1, R5
E84BE:  MOVS            R2, #0
E84C0:  MOVS            R6, #0
E84C2:  BL              sub_E7F28
E84C6:  STR             R6, [SP,#0xA0+var_90]
E84C8:  STRB.W          R6, [SP,#0xA0+var_98]
E84CC:  ADD             R0, SP, #0xA0+var_98
E84CE:  STR             R0, [SP,#0xA0+var_A0]
E84D0:  ADD             R0, SP, #0xA0+var_58
E84D2:  ADD             R2, SP, #0xA0+var_68
E84D4:  ADD             R3, SP, #0xA0+var_78
E84D6:  MOVS            R1, #0x65 ; 'e'
E84D8:  BL              sub_E7CE4
E84DC:  ADD             R5, SP, #0xA0+var_58
E84DE:  ADD             R2, SP, #0xA0+var_40
E84E0:  MOV             R0, R4
E84E2:  MOV             R1, R8
E84E4:  MOV             R3, R5
E84E6:  BL              sub_E8960
E84EA:  B               loc_E8540
E84EC:  LDR.W           R8, [R5,#0x34]; jumptable 000E82A0 default case, cases 10-13
E84F0:  ADD             R0, SP, #0xA0+var_40
E84F2:  MOV             R1, R6
E84F4:  BL              sub_E7C78
E84F8:  VLDR            D16, [R5,#0x34]
E84FC:  LDR             R0, [R5,#0x3C]
E84FE:  LDR             R1, =(aValue - 0xE8506); "value" ...
E8500:  STR             R0, [SP,#0xA0+var_60]
E8502:  ADD             R1, PC; "value"
E8504:  VSTR            D16, [SP,#0xA0+var_68]
E8508:  ADD             R0, SP, #0xA0+var_84; int
E850A:  BL              sub_DC6DC
E850E:  ADD             R0, SP, #0xA0+var_78
E8510:  ADD             R3, SP, #0xA0+var_84
E8512:  MOV             R1, R5
E8514:  MOVS            R2, #0x10
E8516:  BL              sub_E7F28
E851A:  MOVS            R0, #0
E851C:  STR             R0, [SP,#0xA0+var_90]
E851E:  STRB.W          R0, [SP,#0xA0+var_98]
E8522:  ADD             R0, SP, #0xA0+var_98
E8524:  STR             R0, [SP,#0xA0+var_A0]
E8526:  ADD             R0, SP, #0xA0+var_58
E8528:  ADD             R2, SP, #0xA0+var_68
E852A:  ADD             R3, SP, #0xA0+var_78
E852C:  MOVS            R1, #0x65 ; 'e'
E852E:  BL              sub_E7CE4
E8532:  ADD             R5, SP, #0xA0+var_58
E8534:  ADD             R2, SP, #0xA0+var_40
E8536:  MOV             R0, R4
E8538:  MOV             R1, R8
E853A:  MOV             R3, R5
E853C:  BL              sub_E8960
E8540:  MOV             R4, R0
E8542:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE8548); `vtable for'nlohmann::detail::exception ...
E8544:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E8546:  ADDS            R0, #8
E8548:  STR             R0, [SP,#0xA0+var_58]
E854A:  ADD.W           R0, R5, #8; this
E854E:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E8552:  MOV             R0, R5; this
E8554:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E8558:  ADD             R0, SP, #0xA0+var_98
E855A:  BL              sub_E3F7A
E855E:  LDRB.W          R0, [SP,#0xA0+var_78]
E8562:  LSLS            R0, R0, #0x1F
E8564:  ITT NE
E8566:  LDRNE           R0, [SP,#0xA0+var_70]; void *
E8568:  BLXNE           j__ZdlPv; operator delete(void *)
E856C:  LDRB.W          R0, [SP,#0xA0+var_84]
E8570:  LSLS            R0, R0, #0x1F
E8572:  ITT NE
E8574:  LDRNE           R0, [SP,#0xA0+var_7C]; void *
E8576:  BLXNE           j__ZdlPv; operator delete(void *)
E857A:  LDRB.W          R0, [SP,#0xA0+var_40]
E857E:  LSLS            R0, R0, #0x1F
E8580:  BEQ.W           loc_E847E
E8584:  LDR             R0, [SP,#0xA0+var_38]; void *
E8586:  BLX             j__ZdlPv; operator delete(void *)
E858A:  B               loc_E847E
E858C:  LDR.W           R8, [R5,#0x34]
E8590:  ADD             R0, SP, #0xA0+var_40
E8592:  MOV             R1, R6
E8594:  BL              sub_E7C78
E8598:  VLDR            D16, [R5,#0x34]
E859C:  LDR             R0, [R5,#0x3C]
E859E:  LDR             R1, =(aArray - 0xE85A6); "array" ...
E85A0:  STR             R0, [SP,#0xA0+var_60]
E85A2:  ADD             R1, PC; "array"
E85A4:  VSTR            D16, [SP,#0xA0+var_68]
E85A8:  ADD             R0, SP, #0xA0+var_84; int
E85AA:  BL              sub_DC6DC
E85AE:  ADD             R0, SP, #0xA0+var_78
E85B0:  ADD             R3, SP, #0xA0+var_84
E85B2:  MOV             R1, R5
E85B4:  MOVS            R2, #0xA
E85B6:  BL              sub_E7F28
E85BA:  MOVS            R0, #0
E85BC:  STR             R0, [SP,#0xA0+var_90]
E85BE:  STRB.W          R0, [SP,#0xA0+var_98]
E85C2:  ADD             R0, SP, #0xA0+var_98
E85C4:  STR             R0, [SP,#0xA0+var_A0]
E85C6:  ADD             R0, SP, #0xA0+var_58
E85C8:  ADD             R2, SP, #0xA0+var_68
E85CA:  ADD             R3, SP, #0xA0+var_78
E85CC:  MOVS            R1, #0x65 ; 'e'
E85CE:  BL              sub_E7CE4
E85D2:  ADD             R5, SP, #0xA0+var_58
E85D4:  ADD             R2, SP, #0xA0+var_40
E85D6:  MOV             R0, R4
E85D8:  MOV             R1, R8
E85DA:  MOV             R3, R5
E85DC:  BL              sub_E8960
E85E0:  B               loc_E8540
E85E2:  ALIGN 4
E85E4:  DCD unk_9216D - 0xE8296
E85E8:  DCFD +Inf
E85F0:  DCD unk_9216D - 0xE8446
E85F4:  DCD aValue - 0xE84B0
E85F8:  DCD aValue - 0xE8506
E85FC:  DCD _ZTVN8nlohmann6detail9exceptionE - 0xE8548
E8600:  DCD aArray - 0xE85A6
E8604:  LDR.W           R8, [R5,#0x34]
E8608:  ADD             R0, SP, #0xA0+var_40
E860A:  MOV             R1, R6
E860C:  BL              sub_E7C78
E8610:  VLDR            D16, [R5,#0x34]
E8614:  LDR             R0, [R5,#0x3C]
E8616:  LDR             R1, =(aObject - 0xE861E); "object" ...
E8618:  STR             R0, [SP,#0xA0+var_60]
E861A:  ADD             R1, PC; "object"
E861C:  VSTR            D16, [SP,#0xA0+var_68]
E8620:  ADD             R0, SP, #0xA0+var_84; int
E8622:  BL              sub_DC6DC
E8626:  ADD             R0, SP, #0xA0+var_78
E8628:  ADD             R3, SP, #0xA0+var_84
E862A:  MOV             R1, R5
E862C:  MOVS            R2, #0xB
E862E:  BL              sub_E7F28
E8632:  MOVS            R0, #0
E8634:  STR             R0, [SP,#0xA0+var_90]
E8636:  STRB.W          R0, [SP,#0xA0+var_98]
E863A:  ADD             R0, SP, #0xA0+var_98
E863C:  STR             R0, [SP,#0xA0+var_A0]
E863E:  ADD             R0, SP, #0xA0+var_58
E8640:  ADD             R2, SP, #0xA0+var_68
E8642:  ADD             R3, SP, #0xA0+var_78
E8644:  MOVS            R1, #0x65 ; 'e'
E8646:  BL              sub_E7CE4
E864A:  ADD             R5, SP, #0xA0+var_58
E864C:  ADD             R2, SP, #0xA0+var_40
E864E:  MOV             R0, R4
E8650:  MOV             R1, R8
E8652:  MOV             R3, R5
E8654:  BL              sub_E8960
E8658:  B               loc_E8540
E865A:  LDR.W           R8, [R5,#0x34]
E865E:  ADD             R0, SP, #0xA0+var_40
E8660:  MOV             R1, R6
E8662:  BL              sub_E7C78
E8666:  VLDR            D16, [R5,#0x34]
E866A:  LDR             R0, [R5,#0x3C]
E866C:  LDR             R1, =(aObjectKey - 0xE8674); "object key" ...
E866E:  STR             R0, [SP,#0xA0+var_60]
E8670:  ADD             R1, PC; "object key"
E8672:  VSTR            D16, [SP,#0xA0+var_68]
E8676:  ADD             R0, SP, #0xA0+var_84; int
E8678:  BL              sub_DC6DC
E867C:  ADD             R0, SP, #0xA0+var_78
E867E:  ADD             R3, SP, #0xA0+var_84
E8680:  MOV             R1, R5
E8682:  MOVS            R2, #4
E8684:  BL              sub_E7F28
E8688:  MOVS            R0, #0
E868A:  STR             R0, [SP,#0xA0+var_90]
E868C:  STRB.W          R0, [SP,#0xA0+var_98]
E8690:  ADD             R0, SP, #0xA0+var_98
E8692:  STR             R0, [SP,#0xA0+var_A0]
E8694:  ADD             R0, SP, #0xA0+var_58
E8696:  ADD             R2, SP, #0xA0+var_68
E8698:  ADD             R3, SP, #0xA0+var_78
E869A:  MOVS            R1, #0x65 ; 'e'
E869C:  BL              sub_E7CE4
E86A0:  ADD             R5, SP, #0xA0+var_58
E86A2:  ADD             R2, SP, #0xA0+var_40
E86A4:  MOV             R0, R4
E86A6:  MOV             R1, R8
E86A8:  MOV             R3, R5
E86AA:  BL              sub_E8960
E86AE:  B               loc_E8540
E86B0:  LDR.W           R8, [R5,#0x34]
E86B4:  ADD             R0, SP, #0xA0+var_40
E86B6:  MOV             R1, R6
E86B8:  BL              sub_E7C78
E86BC:  VLDR            D16, [R5,#0x34]
E86C0:  LDR             R0, [R5,#0x3C]
E86C2:  LDR             R1, =(aObjectSeparato - 0xE86CA); "object separator" ...
E86C4:  STR             R0, [SP,#0xA0+var_60]
E86C6:  ADD             R1, PC; "object separator"
E86C8:  VSTR            D16, [SP,#0xA0+var_68]
E86CC:  ADD             R0, SP, #0xA0+var_84; int
E86CE:  BL              sub_DC6DC
E86D2:  ADD             R0, SP, #0xA0+var_78
E86D4:  ADD             R3, SP, #0xA0+var_84
E86D6:  MOV             R1, R5
E86D8:  MOVS            R2, #0xC
E86DA:  BL              sub_E7F28
E86DE:  MOVS            R0, #0
E86E0:  STR             R0, [SP,#0xA0+var_90]
E86E2:  STRB.W          R0, [SP,#0xA0+var_98]
E86E6:  ADD             R0, SP, #0xA0+var_98
E86E8:  STR             R0, [SP,#0xA0+var_A0]
E86EA:  ADD             R0, SP, #0xA0+var_58
E86EC:  ADD             R2, SP, #0xA0+var_68
E86EE:  ADD             R3, SP, #0xA0+var_78
E86F0:  MOVS            R1, #0x65 ; 'e'
E86F2:  BL              sub_E7CE4
E86F6:  ADD             R5, SP, #0xA0+var_58
E86F8:  ADD             R2, SP, #0xA0+var_40
E86FA:  MOV             R0, R4
E86FC:  MOV             R1, R8
E86FE:  MOV             R3, R5
E8700:  BL              sub_E8960
E8704:  B               loc_E8540
E8706:  MOVS            R4, #0
E8708:  B               loc_E847E
E870A:  LDR             R5, [R5,#0x34]
E870C:  ADD             R0, SP, #0xA0+var_40
E870E:  MOV             R1, R6
E8710:  BL              sub_E7C78
E8714:  ADD             R0, SP, #0xA0+var_84
E8716:  MOV             R1, R6
E8718:  BL              sub_E7C78
E871C:  LDR             R2, =(aNumberOverflow - 0xE8722); "number overflow parsing '" ...
E871E:  ADD             R2, PC; "number overflow parsing '"
E8720:  ADD             R0, SP, #0xA0+var_84; int
E8722:  MOVS            R1, #0; int
E8724:  MOVS            R6, #0
E8726:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E872A:  VLDR            D16, [R0]
E872E:  LDR             R2, [R0,#8]
E8730:  LDR             R1, =(asc_88EDF - 0xE8738); "'" ...
E8732:  STR             R2, [SP,#0xA0+var_70]
E8734:  ADD             R1, PC; "'"
E8736:  VSTR            D16, [SP,#0xA0+var_78]
E873A:  STRD.W          R6, R6, [R0]
E873E:  STR             R6, [R0,#8]
E8740:  ADD             R0, SP, #0xA0+var_78; int
E8742:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
E8746:  VLDR            D16, [R0]
E874A:  LDR             R1, [R0,#8]
E874C:  STR             R1, [SP,#0xA0+var_60]
E874E:  MOVS            R1, #0
E8750:  VSTR            D16, [SP,#0xA0+var_68]
E8754:  STRD.W          R1, R1, [R0]
E8758:  STR             R1, [R0,#8]
E875A:  STR             R1, [SP,#0xA0+var_90]
E875C:  STRB.W          R1, [SP,#0xA0+var_98]
E8760:  ADD             R0, SP, #0xA0+var_58
E8762:  ADD             R2, SP, #0xA0+var_68
E8764:  ADD             R3, SP, #0xA0+var_98
E8766:  MOV.W           R1, #0x196
E876A:  BL              sub_E92EC
E876E:  ADD             R6, SP, #0xA0+var_58
E8770:  ADD             R2, SP, #0xA0+var_40
E8772:  MOV             R0, R4
E8774:  MOV             R1, R5
E8776:  MOV             R3, R6
E8778:  BL              sub_EB3E8
E877C:  MOV             R4, R0
E877E:  LDR             R0, =(_ZTVN8nlohmann6detail9exceptionE - 0xE8784); `vtable for'nlohmann::detail::exception ...
E8780:  ADD             R0, PC; `vtable for'nlohmann::detail::exception
E8782:  ADDS            R0, #8
E8784:  STR             R0, [SP,#0xA0+var_58]
E8786:  ADD.W           R0, R6, #8; this
E878A:  BLX             j__ZNSt15underflow_errorD2Ev; std::underflow_error::~underflow_error()
E878E:  MOV             R0, R6; this
E8790:  BLX             j__ZNSt9exceptionD2Ev; std::exception::~exception()
E8794:  ADD             R0, SP, #0xA0+var_98
E8796:  BL              sub_E3F7A
E879A:  LDRB.W          R0, [SP,#0xA0+var_68]
E879E:  LSLS            R0, R0, #0x1F
E87A0:  BEQ.W           loc_E855E
E87A4:  LDR             R0, [SP,#0xA0+var_60]; void *
E87A6:  BLX             j__ZdlPv; operator delete(void *)
E87AA:  B               loc_E855E
E87AC:  LDR.W           R8, [R5,#0x34]
E87B0:  ADD             R0, SP, #0xA0+var_40
E87B2:  MOV             R1, R6
E87B4:  BL              sub_E7C78
E87B8:  VLDR            D16, [R5,#0x34]
E87BC:  LDR             R0, [R5,#0x3C]
E87BE:  LDR             R1, =(aObjectKey - 0xE87C6); "object key" ...
E87C0:  STR             R0, [SP,#0xA0+var_60]
E87C2:  ADD             R1, PC; "object key"
E87C4:  VSTR            D16, [SP,#0xA0+var_68]
E87C8:  ADD             R0, SP, #0xA0+var_84; int
E87CA:  BL              sub_DC6DC
E87CE:  ADD             R0, SP, #0xA0+var_78
E87D0:  ADD             R3, SP, #0xA0+var_84
E87D2:  MOV             R1, R5
E87D4:  MOVS            R2, #4
E87D6:  BL              sub_E7F28
E87DA:  MOVS            R0, #0
E87DC:  STR             R0, [SP,#0xA0+var_90]
E87DE:  STRB.W          R0, [SP,#0xA0+var_98]
E87E2:  ADD             R0, SP, #0xA0+var_98
E87E4:  STR             R0, [SP,#0xA0+var_A0]
E87E6:  ADD             R0, SP, #0xA0+var_58
E87E8:  ADD             R2, SP, #0xA0+var_68
E87EA:  ADD             R3, SP, #0xA0+var_78
E87EC:  MOVS            R1, #0x65 ; 'e'
E87EE:  BL              sub_E7CE4
E87F2:  ADD             R5, SP, #0xA0+var_58
E87F4:  ADD             R2, SP, #0xA0+var_40
E87F6:  MOV             R0, R4
E87F8:  MOV             R1, R8
E87FA:  MOV             R3, R5
E87FC:  BL              sub_E8960
E8800:  B               loc_E8540
E8802:  LDR.W           R8, [R5,#0x34]
E8806:  ADD             R0, SP, #0xA0+var_40
E8808:  MOV             R1, R6
E880A:  BL              sub_E7C78
E880E:  VLDR            D16, [R5,#0x34]
E8812:  LDR             R0, [R5,#0x3C]
E8814:  LDR             R1, =(aObjectSeparato - 0xE881C); "object separator" ...
E8816:  STR             R0, [SP,#0xA0+var_60]
E8818:  ADD             R1, PC; "object separator"
E881A:  VSTR            D16, [SP,#0xA0+var_68]
E881E:  ADD             R0, SP, #0xA0+var_84; int
E8820:  BL              sub_DC6DC
E8824:  ADD             R0, SP, #0xA0+var_78
E8826:  ADD             R3, SP, #0xA0+var_84
E8828:  MOV             R1, R5
E882A:  MOVS            R2, #0xC
E882C:  BL              sub_E7F28
E8830:  MOVS            R0, #0
E8832:  STR             R0, [SP,#0xA0+var_90]
E8834:  STRB.W          R0, [SP,#0xA0+var_98]
E8838:  ADD             R0, SP, #0xA0+var_98
E883A:  STR             R0, [SP,#0xA0+var_A0]
E883C:  ADD             R0, SP, #0xA0+var_58
E883E:  ADD             R2, SP, #0xA0+var_68
E8840:  ADD             R3, SP, #0xA0+var_78
E8842:  MOVS            R1, #0x65 ; 'e'
E8844:  BL              sub_E7CE4
E8848:  ADD             R5, SP, #0xA0+var_58
E884A:  ADD             R2, SP, #0xA0+var_40
E884C:  MOV             R0, R4
E884E:  MOV             R1, R8
E8850:  MOV             R3, R5
E8852:  BL              sub_E8960
E8856:  B               loc_E8540
