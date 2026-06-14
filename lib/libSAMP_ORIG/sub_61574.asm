; =========================================================
; Game Engine Function: sub_61574
; Address            : 0x61574 - 0x615D0
; =========================================================

61574:  PUSH            {R7,LR}
61576:  MOV             R7, SP
61578:  CBZ             R0, loc_61596
6157A:  LDR             R3, =(off_114AD8 - 0x61580)
6157C:  ADD             R3, PC; off_114AD8
6157E:  LDR             R3, [R3]; dword_1A4434
61580:  LDR             R3, [R3]
61582:  CMP             R3, #0
61584:  IT NE
61586:  CMPNE           R1, #0
61588:  BNE             loc_615A8
6158A:  LDR             R3, =(off_117644 - 0x61590)
6158C:  ADD             R3, PC; off_117644
6158E:  LDR             R3, [R3]
61590:  POP.W           {R7,LR}
61594:  BX              R3
61596:  LDR             R1, =(aSampOrig - 0x615A0); "SAMP_ORIG" ...
61598:  MOVS            R0, #6; prio
6159A:  LDR             R2, =(aInvalidThisPoi_2 - 0x615A2); "Invalid _this pointer in CTrailer_Proce"... ...
6159C:  ADD             R1, PC; "SAMP_ORIG"
6159E:  ADD             R2, PC; "Invalid _this pointer in CTrailer_Proce"...
615A0:  BLX             __android_log_print
615A4:  MOVS            R0, #0
615A6:  POP             {R7,PC}
615A8:  LDR             R3, =(byte_117634 - 0x615AE)
615AA:  ADD             R3, PC; byte_117634
615AC:  LDRB            R3, [R3]
615AE:  CMP             R3, #0
615B0:  BEQ             loc_6158A
615B2:  LDRH            R3, [R1,#0x26]
615B4:  SUB.W           R3, R3, #0x264
615B8:  CMN.W           R3, #0xD4
615BC:  BCC             loc_6158A
615BE:  LDR.W           R3, [R0,#0x464]
615C2:  CMP             R3, #0
615C4:  ITT NE
615C6:  LDRNE.W         R3, [R1,#0x464]
615CA:  CMPNE           R3, #0
615CC:  BEQ             loc_6158A
615CE:  B               loc_615A4
