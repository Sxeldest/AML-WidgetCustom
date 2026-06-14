; =========================================================
; Game Engine Function: sub_69554
; Address            : 0x69554 - 0x69698
; =========================================================

69554:  PUSH            {R4-R7,LR}
69556:  ADD             R7, SP, #0xC
69558:  PUSH.W          {R8-R11}
6955C:  SUB             SP, SP, #0xC
6955E:  MOV             R5, R2
69560:  MOV             R4, R1
69562:  MOV             R9, R0
69564:  BL              sub_68E3C
69568:  CMP             R0, #0
6956A:  BEQ             loc_695FC
6956C:  MOV             R6, R0
6956E:  LDR             R0, [R0]
69570:  LDR             R1, =(aJavaLangString - 0x69578); "java/lang/String" ...
69572:  LDR             R2, [R0,#0x18]
69574:  ADD             R1, PC; "java/lang/String"
69576:  MOV             R0, R6
69578:  BLX             R2
6957A:  MOV             R10, R0
6957C:  LDR             R0, [R6]
6957E:  LDR             R2, =(aInit - 0x6958A); "<init>" ...
69580:  MOV             R1, R10
69582:  LDR             R3, =(aBljavaLangStri - 0x69590); "([BLjava/lang/String;)V" ...
69584:  STR             R5, [SP,#0x28+var_20]
69586:  ADD             R2, PC; "<init>"
69588:  LDR.W           R5, [R0,#0x84]
6958C:  ADD             R3, PC; "([BLjava/lang/String;)V"
6958E:  MOV             R0, R6
69590:  BLX             R5
69592:  STR             R0, [SP,#0x28+var_24]
69594:  LDR             R0, [R6]
69596:  LDR             R1, =(aUtf8 - 0x695A0); "UTF-8" ...
69598:  LDR.W           R2, [R0,#0x29C]
6959C:  ADD             R1, PC; "UTF-8"
6959E:  MOV             R0, R6
695A0:  BLX             R2
695A2:  MOV             R11, R0
695A4:  MOV             R0, R4; s
695A6:  BLX             strlen
695AA:  MOV             R1, R0
695AC:  LDR             R0, [R6]
695AE:  LDR.W           R2, [R0,#0x2C0]
695B2:  MOV             R0, R6
695B4:  BLX             R2
695B6:  MOV             R8, R0
695B8:  MOV             R0, R4; s
695BA:  BLX             strlen
695BE:  MOV             R3, R0
695C0:  LDR             R0, [R6]
695C2:  MOV             R1, R8
695C4:  MOVS            R2, #0
695C6:  LDR.W           R5, [R0,#0x340]
695CA:  MOV             R0, R6
695CC:  STR             R4, [SP,#0x28+var_28]
695CE:  BLX             R5
695D0:  STR.W           R11, [SP,#0x28+var_28]
695D4:  MOV             R0, R6
695D6:  LDR             R2, [SP,#0x28+var_24]
695D8:  MOV             R1, R10
695DA:  MOV             R3, R8
695DC:  BL              sub_6918C
695E0:  LDR.W           R1, [R9,#4]
695E4:  MOV             R3, R0
695E6:  LDR.W           R2, [R9,#0x30]
695EA:  LDR             R0, [SP,#0x28+var_20]
695EC:  STR             R0, [SP,#0x28+var_28]
695EE:  MOV             R0, R6
695F0:  BL              sub_69070
695F4:  ADD             SP, SP, #0xC
695F6:  POP.W           {R8-R11}
695FA:  POP             {R4-R7,PC}
695FC:  LDR             R0, =(byte_1A4288 - 0x69602)
695FE:  ADD             R0, PC; byte_1A4288
69600:  LDRB            R0, [R0]
69602:  DMB.W           ISH
69606:  LDR             R4, =(dword_1A4280 - 0x6960C)
69608:  ADD             R4, PC; dword_1A4280
6960A:  LSLS            R0, R0, #0x1F
6960C:  BEQ             loc_69660
6960E:  LDRB            R0, [R4,#(byte_1A4286 - 0x1A4280)]
69610:  CBZ             R0, loc_69648
69612:  LDRB            R1, [R4]
69614:  EOR.W           R0, R0, #0x5A ; 'Z'
69618:  LDRB            R2, [R4,#(dword_1A4280+1 - 0x1A4280)]
6961A:  STRB            R0, [R4,#(byte_1A4286 - 0x1A4280)]
6961C:  EOR.W           R1, R1, #0x5A ; 'Z'
69620:  LDRB            R0, [R4,#(word_1A4284 - 0x1A4280)]
69622:  LDRB            R3, [R4,#(dword_1A4280+2 - 0x1A4280)]
69624:  STRB            R1, [R4]
69626:  EOR.W           R1, R2, #0x5A ; 'Z'
6962A:  LDRB            R6, [R4,#(dword_1A4280+3 - 0x1A4280)]
6962C:  EOR.W           R0, R0, #0x5A ; 'Z'
69630:  LDRB            R5, [R4,#(word_1A4284+1 - 0x1A4280)]
69632:  STRB            R1, [R4,#(dword_1A4280+1 - 0x1A4280)]
69634:  EOR.W           R1, R3, #0x5A ; 'Z'
69638:  STRB            R1, [R4,#(dword_1A4280+2 - 0x1A4280)]
6963A:  EOR.W           R1, R6, #0x5A ; 'Z'
6963E:  STRB            R0, [R4,#(word_1A4284 - 0x1A4280)]
69640:  EOR.W           R0, R5, #0x5A ; 'Z'
69644:  STRB            R1, [R4,#(dword_1A4280+3 - 0x1A4280)]
69646:  STRB            R0, [R4,#(word_1A4284+1 - 0x1A4280)]
69648:  LDR             R1, =(aSampOrig - 0x69652); "SAMP_ORIG" ...
6964A:  MOVS            R0, #4
6964C:  LDR             R2, =(dword_1A4280 - 0x69654)
6964E:  ADD             R1, PC; "SAMP_ORIG"
69650:  ADD             R2, PC; dword_1A4280
69652:  ADD             SP, SP, #0xC
69654:  POP.W           {R8-R11}
69658:  POP.W           {R4-R7,LR}
6965C:  B.W             sub_10C158
69660:  LDR             R0, =(byte_1A4288 - 0x69666)
69662:  ADD             R0, PC; byte_1A4288 ; __guard *
69664:  BLX             j___cxa_guard_acquire
69668:  CMP             R0, #0
6966A:  BEQ             loc_6960E
6966C:  MOVS            R1, #0x5A ; 'Z'
6966E:  LDR             R0, =(sub_66E8E+1 - 0x69686)
69670:  LDR             R2, =(off_110560 - 0x69688)
69672:  STRB            R1, [R4,#(byte_1A4286 - 0x1A4280)]
69674:  MOVW            R1, #0x2C34
69678:  STRH            R1, [R4,#(word_1A4284 - 0x1A4280)]
6967A:  MOV             R1, #0x3F7A3514
69682:  ADD             R0, PC; sub_66E8E ; lpfunc
69684:  ADD             R2, PC; off_110560 ; lpdso_handle
69686:  STR             R1, [R4]
69688:  MOV             R1, R4; obj
6968A:  BLX             __cxa_atexit
6968E:  LDR             R0, =(byte_1A4288 - 0x69694)
69690:  ADD             R0, PC; byte_1A4288 ; __guard *
69692:  BLX             j___cxa_guard_release
69696:  B               loc_6960E
