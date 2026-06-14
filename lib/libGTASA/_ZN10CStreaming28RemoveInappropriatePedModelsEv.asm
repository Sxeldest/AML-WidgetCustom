; =========================================================
; Game Engine Function: _ZN10CStreaming28RemoveInappropriatePedModelsEv
; Address            : 0x2D853C - 0x2D8740
; =========================================================

2D853C:  PUSH            {R4-R7,LR}
2D853E:  ADD             R7, SP, #0xC
2D8540:  PUSH.W          {R8-R11}
2D8544:  SUB             SP, SP, #0x14
2D8546:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x2D854C)
2D8548:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
2D854A:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
2D854C:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
2D854E:  CMP             R0, #0
2D8550:  BEQ.W           loc_2D865E
2D8554:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D855E)
2D8556:  MOVS            R5, #0
2D8558:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D8560)
2D855A:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D855C:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D855E:  LDR             R6, [R0]; CStreaming::ms_pedsLoaded ...
2D8560:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D8566)
2D8562:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D8564:  LDR.W           R9, [R0]; CStreaming::ms_pedsLoaded ...
2D8568:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8572)
2D856A:  STR.W           R9, [SP,#0x30+var_30]
2D856E:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8570:  LDR.W           R8, [R0]; CStreaming::ms_aInfoForModel ...
2D8574:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D857A)
2D8576:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8578:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D857A:  STR             R0, [SP,#0x30+var_20]
2D857C:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D8582)
2D857E:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D8580:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D8582:  STR             R0, [SP,#0x30+var_24]
2D8584:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D8586:  STR             R0, [SP,#0x30+var_28]
2D8588:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8590)
2D858A:  LDR             R1, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D8592)
2D858C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D858E:  ADD             R1, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr ; int
2D8590:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D8592:  STR             R0, [SP,#0x30+var_2C]
2D8594:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D859E)
2D8596:  LDR.W           R10, [R1]; CStreaming::ms_numPedsLoaded ...
2D859A:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D859C:  LDR.W           R11, [R0]; CStreaming::ms_pedsLoaded ...
2D85A0:  LDR.W           R0, [R6,R5,LSL#2]; this
2D85A4:  CMP             R0, #0
2D85A6:  BLT             loc_2D8656
2D85A8:  BLX             j__ZN9CPopCycle30IsPedAppropriateForCurrentZoneEi; CPopCycle::IsPedAppropriateForCurrentZone(int)
2D85AC:  CMP             R0, #0
2D85AE:  BNE             loc_2D8656
2D85B0:  LDR.W           R0, [R9,R5,LSL#2]; this
2D85B4:  ADD.W           R2, R0, R0,LSL#2
2D85B8:  ADD.W           R1, R8, R2,LSL#2
2D85BC:  LDRB            R4, [R1,#6]
2D85BE:  AND.W           R3, R4, #0xFD
2D85C2:  TST.W           R4, #4
2D85C6:  STRB            R3, [R1,#6]
2D85C8:  BNE             loc_2D8644
2D85CA:  LDR             R4, [SP,#0x30+var_20]
2D85CC:  ADD.W           R4, R4, R2,LSL#2
2D85D0:  LDRB            R4, [R4,#0x10]
2D85D2:  CMP             R4, #1
2D85D4:  BNE             loc_2D863C
2D85D6:  LDRH            R0, [R1]
2D85D8:  MOVW            R3, #0xFFFF
2D85DC:  CMP             R0, R3
2D85DE:  BNE             loc_2D8644
2D85E0:  LDR             R0, [SP,#0x30+var_24]
2D85E2:  MOVW            R3, #0xCCCD
2D85E6:  LDR.W           R12, [SP,#0x30+var_28]
2D85EA:  MOVT            R3, #0xCCCC
2D85EE:  LDR             R0, [R0]
2D85F0:  LDR.W           LR, [R12]
2D85F4:  LDRH            R4, [R0]
2D85F6:  STRH            R4, [R1]
2D85F8:  SUB.W           R4, R1, LR
2D85FC:  LSRS            R4, R4, #2
2D85FE:  MUL.W           R9, R4, R3
2D8602:  SUB.W           R3, R0, LR
2D8606:  MOVW            R4, #0xCCCD
2D860A:  LSRS            R3, R3, #2
2D860C:  MOVT            R4, #0xCCCC
2D8610:  MUL.W           LR, R3, R4
2D8614:  LDR             R3, [SP,#0x30+var_2C]
2D8616:  ADD.W           R2, R3, R2,LSL#2
2D861A:  STRH.W          LR, [R2,#2]
2D861E:  STRH.W          R9, [R0]
2D8622:  LDRSH.W         R0, [R1]
2D8626:  LDR.W           R1, [R12]
2D862A:  ADD.W           R0, R0, R0,LSL#2
2D862E:  ADD.W           R0, R1, R0,LSL#2
2D8632:  STRH.W          R9, [R0,#2]
2D8636:  LDR.W           R9, [SP,#0x30+var_30]
2D863A:  B               loc_2D8644
2D863C:  LSLS            R1, R3, #0x1C; int
2D863E:  IT PL
2D8640:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D8644:  MOV.W           R0, #0xFFFFFFFF
2D8648:  STR.W           R0, [R11,R5,LSL#2]
2D864C:  LDR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D8650:  SUBS            R0, #1
2D8652:  STR.W           R0, [R10]; CStreaming::ms_numPedsLoaded
2D8656:  ADDS            R5, #1
2D8658:  CMP             R5, #8
2D865A:  BNE             loc_2D85A0
2D865C:  B               loc_2D8738
2D865E:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D866C)
2D8660:  MOVS            R4, #0
2D8662:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D866E)
2D8664:  MOV.W           R11, #0xFFFFFFFF
2D8668:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D866A:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D866C:  LDR             R5, [R0]; CStreaming::ms_pedsLoaded ...
2D866E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8674)
2D8670:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D8672:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
2D8676:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D867C)
2D8678:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D867A:  LDR.W           R8, [R0]; CStreaming::ms_aInfoForModel ...
2D867E:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D8684)
2D8680:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D8682:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D8684:  STR             R0, [SP,#0x30+var_20]
2D8686:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D8688:  STR             R0, [SP,#0x30+var_24]
2D868A:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D8690)
2D868C:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D868E:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D8690:  STR             R0, [SP,#0x30+var_28]
2D8692:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D8698)
2D8694:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D8696:  LDR.W           R9, [R0]; CStreaming::ms_pedsLoaded ...
2D869A:  LDR.W           R0, [R5,R4,LSL#2]; this
2D869E:  CMP             R0, #0
2D86A0:  BLT             loc_2D8728
2D86A2:  ADD.W           R2, R0, R0,LSL#2
2D86A6:  ADD.W           R1, R10, R2,LSL#2
2D86AA:  LDRB            R6, [R1,#6]
2D86AC:  AND.W           R3, R6, #0xFD
2D86B0:  TST.W           R6, #4
2D86B4:  STRB            R3, [R1,#6]
2D86B6:  BNE             loc_2D8724
2D86B8:  ADD.W           R6, R8, R2,LSL#2
2D86BC:  LDRB            R6, [R6,#0x10]
2D86BE:  CMP             R6, #1
2D86C0:  BNE             loc_2D871C
2D86C2:  LDRH            R0, [R1]
2D86C4:  MOVW            R3, #0xFFFF
2D86C8:  CMP             R0, R3
2D86CA:  BNE             loc_2D8724
2D86CC:  LDR             R0, [SP,#0x30+var_20]
2D86CE:  MOVW            R11, #0xCCCD
2D86D2:  LDR.W           R12, [SP,#0x30+var_24]
2D86D6:  MOVT            R11, #0xCCCC
2D86DA:  LDR             R0, [R0]
2D86DC:  LDR.W           LR, [R12]
2D86E0:  LDRH            R6, [R0]
2D86E2:  SUB.W           R3, R0, LR
2D86E6:  STRH            R6, [R1]
2D86E8:  SUB.W           R6, R1, LR
2D86EC:  LSRS            R3, R3, #2
2D86EE:  LSRS            R6, R6, #2
2D86F0:  MUL.W           LR, R3, R11
2D86F4:  LDR             R3, [SP,#0x30+var_28]
2D86F6:  MUL.W           R6, R6, R11
2D86FA:  MOV.W           R11, #0xFFFFFFFF
2D86FE:  ADD.W           R2, R3, R2,LSL#2
2D8702:  STRH.W          LR, [R2,#2]
2D8706:  STRH            R6, [R0]
2D8708:  LDRSH.W         R0, [R1]
2D870C:  LDR.W           R1, [R12]
2D8710:  ADD.W           R0, R0, R0,LSL#2
2D8714:  ADD.W           R0, R1, R0,LSL#2
2D8718:  STRH            R6, [R0,#2]
2D871A:  B               loc_2D8724
2D871C:  LSLS            R1, R3, #0x1C; int
2D871E:  IT PL
2D8720:  BLXPL           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D8724:  STR.W           R11, [R9,R4,LSL#2]
2D8728:  ADDS            R4, #1
2D872A:  CMP             R4, #8
2D872C:  BNE             loc_2D869A
2D872E:  LDR             R0, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D8736)
2D8730:  MOVS            R1, #0
2D8732:  ADD             R0, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D8734:  LDR             R0, [R0]; CStreaming::ms_numPedsLoaded ...
2D8736:  STR             R1, [R0]; CStreaming::ms_numPedsLoaded
2D8738:  ADD             SP, SP, #0x14
2D873A:  POP.W           {R8-R11}
2D873E:  POP             {R4-R7,PC}
