; =========================================================
; Game Engine Function: _ZN16SaveSelectScreen13SaveSelection8GetColorEv
; Address            : 0x2A7550 - 0x2A758C
; =========================================================

2A7550:  PUSH            {R7,LR}
2A7552:  MOV             R7, SP
2A7554:  SUB             SP, SP, #8
2A7556:  LDRB            R2, [R1,#0xC]
2A7558:  CBNZ            R2, loc_2A756E
2A755A:  LDR             R1, [R1,#8]
2A755C:  ORR.W           R1, R1, #1
2A7560:  CMP             R1, #7
2A7562:  BNE             loc_2A757A
2A7564:  LDR             R1, =(UseCloudSaves_ptr - 0x2A756A)
2A7566:  ADD             R1, PC; UseCloudSaves_ptr
2A7568:  LDR             R1, [R1]; UseCloudSaves
2A756A:  LDRB            R1, [R1]
2A756C:  CBZ             R1, loc_2A757A
2A756E:  MOVS            R1, #0xFF
2A7570:  MOVS            R2, #0xFF
2A7572:  STR             R1, [SP,#0x10+var_10]
2A7574:  MOVS            R1, #0xFF
2A7576:  MOVS            R3, #0x80
2A7578:  B               loc_2A7584
2A757A:  MOVS            R1, #0xFF
2A757C:  MOVS            R2, #0xFF; unsigned __int8
2A757E:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
2A7580:  MOVS            R1, #0xFF; unsigned __int8
2A7582:  MOVS            R3, #0xFF; unsigned __int8
2A7584:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A7588:  ADD             SP, SP, #8
2A758A:  POP             {R7,PC}
