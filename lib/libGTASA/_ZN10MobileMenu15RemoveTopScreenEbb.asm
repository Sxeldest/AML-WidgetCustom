; =========================================================
; Game Engine Function: _ZN10MobileMenu15RemoveTopScreenEbb
; Address            : 0x298538 - 0x2985F4
; =========================================================

298538:  PUSH            {R4-R7,LR}
29853A:  ADD             R7, SP, #0xC
29853C:  PUSH.W          {R11}
298540:  MOV             R4, R0
298542:  MOV             R5, R2
298544:  LDR             R0, [R4,#0x24]
298546:  MOV             R6, R1
298548:  CMP             R0, #0
29854A:  BEQ             loc_2985EE
29854C:  LDR             R0, [R4,#0x2C]
29854E:  CMP             R0, #0
298550:  ITT NE
298552:  MOVNE           R0, R4; this
298554:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
298558:  LDR             R0, [R4,#0x24]
29855A:  CMP             R6, #1
29855C:  BNE             loc_298562
29855E:  SUBS            R1, R0, #1
298560:  B               loc_298568
298562:  CMP             R0, #1
298564:  BNE             loc_2985C2
298566:  MOVS            R1, #0
298568:  LDR             R0, [R4,#0x28]
29856A:  LDR.W           R0, [R0,R1,LSL#2]
29856E:  STR             R1, [R4,#0x24]
298570:  CBZ             R0, loc_29857A
298572:  LDR             R1, [R0]
298574:  LDR             R1, [R1,#4]
298576:  BLX             R1
298578:  LDR             R1, [R4,#0x24]
29857A:  CBZ             R1, loc_298594
29857C:  LDR             R0, [R4,#0x28]
29857E:  ADD.W           R0, R0, R1,LSL#2
298582:  LDR.W           R0, [R0,#-4]
298586:  LDR             R1, [R0]
298588:  LDR             R1, [R1,#0x10]
29858A:  POP.W           {R11}
29858E:  POP.W           {R4-R7,LR}
298592:  BX              R1
298594:  CBNZ            R5, loc_2985EE
298596:  MOV             R0, R4; this
298598:  BLX             j__ZN10MobileMenu6UnloadEv; MobileMenu::Unload(void)
29859C:  LDR             R1, [R4,#0x24]
29859E:  MOVS            R0, #0
2985A0:  STR             R0, [R4,#0x2C]
2985A2:  STRB.W          R0, [R4,#0x6D]
2985A6:  B               loc_2985B0
2985A8:  LDR             R1, [R0]
2985AA:  LDR             R1, [R1,#4]
2985AC:  BLX             R1
2985AE:  LDR             R1, [R4,#0x24]
2985B0:  CBZ             R1, loc_2985D0
2985B2:  LDR             R0, [R4,#0x28]
2985B4:  SUBS            R1, #1
2985B6:  LDR.W           R0, [R0,R1,LSL#2]
2985BA:  STR             R1, [R4,#0x24]
2985BC:  CMP             R0, #0
2985BE:  BNE             loc_2985A8
2985C0:  B               loc_2985B0
2985C2:  LDR             R1, [R4,#0x28]
2985C4:  ADD.W           R0, R1, R0,LSL#2
2985C8:  LDR.W           R0, [R0,#-8]
2985CC:  STR             R0, [R4,#0x2C]
2985CE:  B               loc_2985EE
2985D0:  BLX             j__Z20Menu_SwitchOffToGamev; Menu_SwitchOffToGame(void)
2985D4:  MOVS            R0, #1; bool
2985D6:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
2985DA:  CMP             R0, #1
2985DC:  BNE             loc_2985EE
2985DE:  LDR             R0, =(skipFrame_ptr - 0x2985E6)
2985E0:  MOVS            R1, #2
2985E2:  ADD             R0, PC; skipFrame_ptr
2985E4:  LDR             R0, [R0]; skipFrame
2985E6:  STR             R1, [R0]
2985E8:  POP.W           {R11}
2985EC:  POP             {R4-R7,PC}
2985EE:  POP.W           {R11}
2985F2:  POP             {R4-R7,PC}
