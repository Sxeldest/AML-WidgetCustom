; =========================================================
; Game Engine Function: _Z22jpeg_read_coefficientsP22jpeg_decompress_struct
; Address            : 0x48055C - 0x48067C
; =========================================================

48055C:  PUSH            {R4,R5,R7,LR}
48055E:  ADD             R7, SP, #8
480560:  MOV             R4, R0
480562:  LDR             R0, [R4,#0x14]
480564:  SUBS            R0, #0xCA; switch 9 cases
480566:  CMP             R0, #8
480568:  BHI.W           def_48056C; jumptable 0048056C default case, cases 203-206,208
48056C:  TBB.W           [PC,R0]; switch jump
480570:  DCB 5; jump table for switch statement
480571:  DCB 0x76
480572:  DCB 0x76
480573:  DCB 0x76
480574:  DCB 0x76
480575:  DCB 0x6E
480576:  DCB 0x76
480577:  DCB 0xE
480578:  DCB 0x6E
480579:  ALIGN 2
48057A:  LDRB.W          R1, [R4,#0xC9]; jumptable 0048056C case 202
48057E:  MOVS            R0, #1
480580:  STRB.W          R0, [R4,#0x40]
480584:  CBZ             R1, loc_480592
480586:  LDR             R1, [R4]
480588:  STR             R0, [R1,#0x14]
48058A:  B               loc_4805A0
48058C:  ADD.W           R5, R4, #8; jumptable 0048056C case 209
480590:  B               loc_48060E
480592:  LDRB.W          R0, [R4,#0xC8]
480596:  CMP             R0, #0
480598:  BEQ             loc_480674
48059A:  LDR             R0, [R4]
48059C:  MOVS            R1, #0x30 ; '0'
48059E:  STR             R1, [R0,#0x14]
4805A0:  LDR             R0, [R4]
4805A2:  LDR             R1, [R0]
4805A4:  MOV             R0, R4
4805A6:  BLX             R1
4805A8:  MOV             R0, R4
4805AA:  MOVS            R1, #1
4805AC:  BLX             j__Z23jinit_d_coef_controllerP22jpeg_decompress_structh; jinit_d_coef_controller(jpeg_decompress_struct *,uchar)
4805B0:  LDR             R0, [R4,#4]
4805B2:  LDR             R1, [R0,#0x18]
4805B4:  MOV             R0, R4
4805B6:  BLX             R1
4805B8:  LDR.W           R0, [R4,#0x190]
4805BC:  LDR             R1, [R0,#8]
4805BE:  MOV             R0, R4
4805C0:  BLX             R1
4805C2:  MOV             R5, R4
4805C4:  LDR.W           R0, [R5,#8]!
4805C8:  CBZ             R0, loc_480600
4805CA:  LDRB.W          R1, [R4,#0xC8]
4805CE:  CBZ             R1, loc_4805DA
4805D0:  LDR             R1, [R4,#0x24]
4805D2:  ADD.W           R1, R1, R1,LSL#1
4805D6:  ADDS            R1, #2
4805D8:  B               loc_4805E8
4805DA:  LDR.W           R1, [R4,#0x190]
4805DE:  LDRB            R1, [R1,#0x10]
4805E0:  CMP             R1, #0
4805E2:  ITE NE
4805E4:  LDRNE           R1, [R4,#0x24]
4805E6:  MOVEQ           R1, #1
4805E8:  MOVS            R2, #0
4805EA:  STR             R2, [R0,#4]
4805EC:  LDR.W           R3, [R4,#0x11C]
4805F0:  LDR             R0, [R4,#8]
4805F2:  MULS            R1, R3
4805F4:  STR             R1, [R0,#8]
4805F6:  MOVS            R1, #1
4805F8:  LDR             R0, [R4,#8]
4805FA:  STR             R2, [R0,#0xC]
4805FC:  LDR             R0, [R4,#8]
4805FE:  STR             R1, [R0,#0x10]
480600:  MOVS            R0, #0xD1
480602:  STR             R0, [R4,#0x14]
480604:  B               loc_48060E
480606:  LDR.W           R2, [R4,#0x11C]
48060A:  ADD             R0, R2
48060C:  STR             R0, [R1,#8]
48060E:  LDR             R1, [R5]
480610:  CMP             R1, #0
480612:  ITTT NE
480614:  LDRNE           R1, [R1]
480616:  MOVNE           R0, R4
480618:  BLXNE           R1
48061A:  LDR.W           R0, [R4,#0x190]
48061E:  LDR             R1, [R0]
480620:  MOV             R0, R4
480622:  BLX             R1
480624:  CBZ             R0, loc_480670
480626:  CMP             R0, #2
480628:  BEQ             loc_480648
48062A:  LDR             R1, [R5]
48062C:  ORR.W           R0, R0, #2
480630:  CMP             R0, #3
480632:  BNE             loc_480610
480634:  CMP             R1, #0
480636:  BEQ             loc_480610
480638:  LDR             R0, [R1,#4]
48063A:  ADDS            R2, R0, #1
48063C:  STR             R2, [R1,#4]
48063E:  LDR             R1, [R5]
480640:  LDR             R0, [R1,#8]
480642:  CMP             R2, R0
480644:  BLT             loc_480610
480646:  B               loc_480606
480648:  MOVS            R0, #0xD2
48064A:  STR             R0, [R4,#0x14]
48064C:  LDRB.W          R0, [R4,#0x40]; jumptable 0048056C cases 207,210
480650:  CMP             R0, #0
480652:  ITTT NE
480654:  LDRNE.W         R0, [R4,#0x188]
480658:  LDRNE           R0, [R0,#0x10]
48065A:  POPNE           {R4,R5,R7,PC}
48065C:  LDR             R0, [R4]; jumptable 0048056C default case, cases 203-206,208
48065E:  MOVS            R1, #0x14
480660:  STR             R1, [R0,#0x14]
480662:  LDR             R0, [R4]
480664:  LDR             R1, [R4,#0x14]
480666:  STR             R1, [R0,#0x18]
480668:  LDR             R0, [R4]
48066A:  LDR             R1, [R0]
48066C:  MOV             R0, R4
48066E:  BLX             R1
480670:  MOVS            R0, #0
480672:  POP             {R4,R5,R7,PC}
480674:  MOV             R0, R4
480676:  BLX             j__Z18jinit_huff_decoderP22jpeg_decompress_struct; jinit_huff_decoder(jpeg_decompress_struct *)
48067A:  B               loc_4805A8
