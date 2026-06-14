; =========================================================
; Game Engine Function: sub_60594
; Address            : 0x60594 - 0x606F0
; =========================================================

60594:  PUSH            {R4-R7,LR}
60596:  ADD             R7, SP, #0xC
60598:  PUSH.W          {R8-R11}
6059C:  SUB             SP, SP, #0x1C
6059E:  CMP             R0, #0
605A0:  BEQ.W           loc_606E8
605A4:  MOV             R6, R0
605A6:  LDR             R0, =(off_1174EC - 0x605AC)
605A8:  ADD             R0, PC; off_1174EC
605AA:  LDR             R1, [R0]
605AC:  MOV             R0, R6
605AE:  BLX             R1
605B0:  LDR             R0, =(off_114AB4 - 0x605B6)
605B2:  ADD             R0, PC; off_114AB4
605B4:  LDR             R0, [R0]; off_117554
605B6:  STR             R0, [SP,#0x38+var_34]
605B8:  LDR             R1, [R0]
605BA:  MOVS            R0, #1
605BC:  BLX             R1
605BE:  MOV             R5, R0
605C0:  CMP             R0, #0
605C2:  LDR             R0, =(off_114AB8 - 0x605CA)
605C4:  LDR             R1, =(off_114ABC - 0x605CC)
605C6:  ADD             R0, PC; off_114AB8
605C8:  ADD             R1, PC; off_114ABC
605CA:  STR             R1, [SP,#0x38+var_20]
605CC:  LDR             R1, =(off_114AC0 - 0x605D2)
605CE:  ADD             R1, PC; off_114AC0
605D0:  MOV             R11, R1
605D2:  LDR             R1, =(off_114AC4 - 0x605D8)
605D4:  ADD             R1, PC; off_114AC4
605D6:  MOV             R9, R1
605D8:  LDR             R1, =(off_114AC8 - 0x605DE)
605DA:  ADD             R1, PC; off_114AC8
605DC:  STR             R1, [SP,#0x38+var_28]
605DE:  LDR             R1, =(dword_1174D4 - 0x605E6)
605E0:  STR             R0, [SP,#0x38+var_24]
605E2:  ADD             R1, PC; dword_1174D4
605E4:  MOV             R10, R1
605E6:  BEQ             loc_60636
605E8:  LDR             R0, [SP,#0x38+var_24]
605EA:  MOVS            R2, #0
605EC:  LDR             R1, =(unk_508E8 - 0x605F6)
605EE:  STRB            R2, [R5,#2]
605F0:  LDR             R0, [R0]
605F2:  ADD             R1, PC; unk_508E8
605F4:  LDR             R3, [R0]
605F6:  MOV             R0, R5
605F8:  BLX             R3
605FA:  LDR             R0, [SP,#0x38+var_20]
605FC:  MOV.W           R1, #0x40000000
60600:  LDR             R0, [R0]
60602:  LDR             R2, [R0]
60604:  MOV             R0, R5
60606:  BLX             R2
60608:  LDR.W           R0, [R11]; off_11761C
6060C:  MOV             R8, R6
6060E:  LDR.W           R1, [R9]; off_117544
60612:  MOV             R4, R10
60614:  LDR             R6, [R0]
60616:  LDR             R0, [R1]
60618:  BLX             R0
6061A:  MOV             R1, R0
6061C:  MOV             R0, R5
6061E:  BLX             R6
60620:  LDR.W           R10, [SP,#0x38+var_28]
60624:  MOV             R1, R5
60626:  MOV             R6, R8
60628:  LDR.W           R0, [R10]
6062C:  LDR             R2, [R0]
6062E:  MOV             R0, R8
60630:  BLX             R2
60632:  MOV             R10, R4
60634:  STR             R5, [R4,#(dword_1174E0 - 0x1174D4)]
60636:  LDR.W           R8, [SP,#0x38+var_34]
6063A:  MOVS            R0, #1
6063C:  STRD.W          R11, R9, [SP,#0x38+var_30]
60640:  LDR.W           R1, [R8]
60644:  BLX             R1
60646:  CBZ             R0, loc_60696
60648:  MOV             R5, R0
6064A:  LDR             R0, [SP,#0x38+var_24]
6064C:  LDR             R1, =(unk_508E8 - 0x60658)
6064E:  MOVS            R2, #0
60650:  STRB            R2, [R5,#2]
60652:  LDR             R0, [R0]
60654:  ADD             R1, PC; unk_508E8
60656:  LDR             R3, [R0]
60658:  MOV             R0, R5
6065A:  BLX             R3
6065C:  LDR             R0, [SP,#0x38+var_20]
6065E:  MOV.W           R1, #0x40000000
60662:  LDR             R0, [R0]
60664:  LDR             R2, [R0]
60666:  MOV             R0, R5
60668:  BLX             R2
6066A:  LDR             R0, [SP,#0x38+var_30]
6066C:  MOV             R9, R10
6066E:  LDR             R1, [SP,#0x38+var_2C]
60670:  LDR             R0, [R0]
60672:  LDR             R1, [R1]
60674:  LDR             R4, [R0]
60676:  LDR             R0, [R1]
60678:  BLX             R0
6067A:  MOV             R1, R0
6067C:  MOV             R0, R5
6067E:  BLX             R4
60680:  MOV             R4, R10
60682:  LDR.W           R10, [SP,#0x38+var_28]
60686:  MOV             R1, R5
60688:  LDR.W           R0, [R10]
6068C:  LDR             R2, [R0]
6068E:  MOV             R0, R6
60690:  BLX             R2
60692:  MOV             R10, R4
60694:  STR             R5, [R4,#(dword_1174E4 - 0x1174D4)]
60696:  LDR.W           R1, [R8]
6069A:  MOVS            R0, #1
6069C:  BLX             R1
6069E:  CBZ             R0, loc_606E8
606A0:  MOV             R5, R0
606A2:  LDR             R0, [SP,#0x38+var_24]
606A4:  LDR             R1, =(unk_508E8 - 0x606B0)
606A6:  MOVS            R2, #0
606A8:  STRB            R2, [R5,#2]
606AA:  LDR             R0, [R0]
606AC:  ADD             R1, PC; unk_508E8
606AE:  LDR             R3, [R0]
606B0:  MOV             R0, R5
606B2:  BLX             R3
606B4:  LDR             R0, [SP,#0x38+var_20]
606B6:  MOV.W           R1, #0x40000000
606BA:  LDR             R0, [R0]
606BC:  LDR             R2, [R0]
606BE:  MOV             R0, R5
606C0:  BLX             R2
606C2:  LDR             R0, [SP,#0x38+var_30]
606C4:  MOV             R8, R10
606C6:  LDR             R1, [SP,#0x38+var_2C]
606C8:  LDR             R0, [R0]
606CA:  LDR             R1, [R1]
606CC:  LDR             R4, [R0]
606CE:  LDR             R0, [R1]
606D0:  BLX             R0
606D2:  MOV             R1, R0
606D4:  MOV             R0, R5
606D6:  BLX             R4
606D8:  LDR             R0, [SP,#0x38+var_28]
606DA:  MOV             R1, R5
606DC:  LDR             R0, [R0]
606DE:  LDR             R2, [R0]
606E0:  MOV             R0, R6
606E2:  BLX             R2
606E4:  STR.W           R5, [R10,#(dword_1174E8 - 0x1174D4)]
606E8:  ADD             SP, SP, #0x1C
606EA:  POP.W           {R8-R11}
606EE:  POP             {R4-R7,PC}
