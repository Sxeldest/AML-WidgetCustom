; =========================================================
; Game Engine Function: INT123_frame_expect_outsamples
; Address            : 0x2264E8 - 0x2265AA
; =========================================================

2264E8:  MOVW            R1, #0x92D0
2264EC:  LDR             R3, [R0,R1]
2264EE:  CMP             R3, #3
2264F0:  BCS             loc_226538
2264F2:  MOVW            R1, #0x92D8
2264F6:  LDR             R1, [R0,R1]
2264F8:  CMP             R1, #1
2264FA:  ITTT EQ
2264FC:  MOVEQ.W         R0, #0x180
226500:  LSREQ           R0, R3
226502:  BXEQ            LR
226504:  CMP             R1, #2
226506:  ITTT EQ
226508:  MOVEQ.W         R0, #0x480
22650C:  LSREQ           R0, R3
22650E:  BXEQ            LR
226510:  MOVW            R1, #0x92C8
226514:  LDR             R1, [R0,R1]
226516:  CMP             R1, #0
226518:  ITTT NE
22651A:  MOVNE.W         R0, #0x240
22651E:  LSRNE           R0, R3
226520:  BXNE            LR
226522:  MOVW            R1, #0x92CC
226526:  LDR             R1, [R0,R1]
226528:  MOV.W           R0, #0x480
22652C:  CMP             R1, #0
22652E:  IT NE
226530:  MOVNE.W         R0, #0x240
226534:  LSRS            R0, R3
226536:  BX              LR
226538:  BNE             loc_226568
22653A:  MOVW            R1, #0x92D8
22653E:  LDR             R2, [R0,R1]
226540:  MOVW            R1, #0x9188
226544:  LDR             R1, [R0,R1]
226546:  CMP             R2, #1
226548:  BEQ             loc_226554
22654A:  CMP             R2, #2
22654C:  BNE             loc_22655A
22654E:  MOV.W           R2, #0x480
226552:  B               loc_226596
226554:  MOV.W           R2, #0x180
226558:  B               loc_226596
22655A:  MOVW            R2, #0x92C8
22655E:  LDR             R2, [R0,R2]
226560:  CBZ             R2, loc_226584
226562:  MOV.W           R2, #0x240
226566:  B               loc_226596
226568:  PUSH            {R7,LR}
22656A:  MOV             R7, SP
22656C:  LDR             R0, =(off_677664 - 0x226578)
22656E:  MOVW            R2, #0x2FE
226572:  LDR             R1, =(aCProjectsOswra_5 - 0x22657A); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226574:  ADD             R0, PC; off_677664
226576:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
226578:  LDR             R0, [R0]
22657A:  LDR             R0, [R0]; stream
22657C:  BLX             fprintf
226580:  MOVS            R0, #0
226582:  POP             {R7,PC}
226584:  MOVW            R2, #0x92CC
226588:  LDR             R3, [R0,R2]
22658A:  MOV.W           R2, #0x480
22658E:  CMP             R3, #0
226590:  IT NE
226592:  MOVNE.W         R2, #0x240
226596:  MOVW            R3, #0x9190
22659A:  LDR             R0, [R0,R3]
22659C:  MLA.W           R0, R0, R2, R1
2265A0:  ASRS            R1, R0, #0x1F
2265A2:  ADD.W           R0, R0, R1,LSR#17
2265A6:  ASRS            R0, R0, #0xF
2265A8:  BX              LR
