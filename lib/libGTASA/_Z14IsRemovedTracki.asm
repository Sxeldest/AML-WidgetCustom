; =========================================================
; Game Engine Function: _Z14IsRemovedTracki
; Address            : 0x39F5A0 - 0x39F698
; =========================================================

39F5A0:  SUBW            R2, R0, #0x201
39F5A4:  SUB.W           R3, R0, #0x126
39F5A8:  CMP             R2, #7
39F5AA:  MOV.W           R2, #0
39F5AE:  IT CC
39F5B0:  MOVCC           R2, #1
39F5B2:  CMP             R3, #7
39F5B4:  MOV.W           R3, #0
39F5B8:  MOV.W           R1, #0
39F5BC:  IT CC
39F5BE:  MOVCC           R3, #1
39F5C0:  ORRS            R2, R3
39F5C2:  SUBW            R3, R0, #0x20F
39F5C6:  CMP             R3, #7
39F5C8:  MOV.W           R3, #0
39F5CC:  IT CC
39F5CE:  MOVCC           R3, #1
39F5D0:  ORRS            R2, R3
39F5D2:  SUB.W           R3, R0, #0x350
39F5D6:  CMP             R3, #7
39F5D8:  MOV.W           R3, #0
39F5DC:  IT CC
39F5DE:  MOVCC           R3, #1
39F5E0:  ORRS            R2, R3
39F5E2:  SUBW            R3, R0, #0x373
39F5E6:  CMP             R3, #7
39F5E8:  MOV.W           R3, #0
39F5EC:  IT CC
39F5EE:  MOVCC           R3, #1
39F5F0:  ORRS            R2, R3
39F5F2:  SUB.W           R3, R0, #0x3A4
39F5F6:  CMP             R3, #7
39F5F8:  MOV.W           R3, #0
39F5FC:  IT CC
39F5FE:  MOVCC           R3, #1
39F600:  ORRS            R2, R3
39F602:  SUBW            R3, R0, #0x45E
39F606:  CMP             R3, #7
39F608:  MOV.W           R3, #0
39F60C:  IT CC
39F60E:  MOVCC           R3, #1
39F610:  ORRS            R2, R3
39F612:  SUB.W           R3, R0, #0x480
39F616:  CMP             R3, #6
39F618:  MOV.W           R3, #0
39F61C:  IT CC
39F61E:  MOVCC           R3, #1
39F620:  ORRS            R2, R3
39F622:  SUBW            R3, R0, #0x515
39F626:  CMP             R3, #0xE
39F628:  MOV.W           R3, #0
39F62C:  IT CC
39F62E:  MOVCC           R3, #1
39F630:  ORRS            R2, R3
39F632:  SUBW            R3, R0, #0x614
39F636:  CMP             R3, #0xE
39F638:  MOV.W           R3, #0
39F63C:  IT CC
39F63E:  MOVCC           R3, #1
39F640:  ORRS            R2, R3
39F642:  SUBW            R3, R0, #0x6AA
39F646:  CMP             R3, #7
39F648:  MOV.W           R3, #0
39F64C:  IT CC
39F64E:  MOVCC           R3, #1
39F650:  ORRS            R2, R3
39F652:  SUBW            R3, R0, #0x6CD
39F656:  CMP             R3, #7
39F658:  MOV.W           R3, #0
39F65C:  IT CC
39F65E:  MOVCC           R3, #1
39F660:  ORRS            R2, R3
39F662:  SUBW            R3, R0, #0x6DA
39F666:  CMP             R3, #0xE
39F668:  MOV.W           R3, #0
39F66C:  IT CC
39F66E:  MOVCC           R3, #1
39F670:  ORRS            R2, R3
39F672:  SUBW            R3, R0, #0x6F6
39F676:  CMP             R3, #5
39F678:  MOV.W           R3, #0
39F67C:  SUBW            R0, R0, #0x711
39F680:  IT CC
39F682:  MOVCC           R3, #1
39F684:  CMP             R0, #5
39F686:  ORR.W           R2, R2, R3
39F68A:  IT CC
39F68C:  MOVCC           R1, #1
39F68E:  ORR.W           R0, R1, R2
39F692:  AND.W           R0, R0, #1
39F696:  BX              LR
