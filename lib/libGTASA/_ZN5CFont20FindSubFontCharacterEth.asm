; =========================================================
; Game Engine Function: _ZN5CFont20FindSubFontCharacterEth
; Address            : 0x5A85E8 - 0x5A870A
; =========================================================

5A85E8:  CMP             R1, #1
5A85EA:  BNE.W           loc_5A865A
5A85EE:  CMP             R0, #0x1A
5A85F0:  BEQ.W           loc_5A8686
5A85F4:  BIC.W           R2, R0, #1
5A85F8:  CMP             R2, #8
5A85FA:  ITTT EQ
5A85FC:  ADDEQ.W         R2, R0, #0x56 ; 'V'
5A8600:  UXTHEQ          R0, R2
5A8602:  BXEQ            LR
5A8604:  SUB.W           R12, R0, #1; switch 62 cases
5A8608:  CMP.W           R12, #0x3D ; '='
5A860C:  BHI.W           def_5A8612; jumptable 005A8612 default case
5A8610:  MOVS            R2, #0xCE
5A8612:  TBB.W           [PC,R12]; switch jump
5A8616:  DCB 0x1F; jump table for switch statement
5A8617:  DCB 0x33
5A8618:  DCB 0x33
5A8619:  DCB 0x73
5A861A:  DCB 0x33
5A861B:  DCB 0x3C
5A861C:  DCB 0x46
5A861D:  DCB 0x33
5A861E:  DCB 0x33
5A861F:  DCB 0x33
5A8620:  DCB 0x33
5A8621:  DCB 0x33
5A8622:  DCB 0x33
5A8623:  DCB 0x77
5A8624:  DCB 0x33
5A8625:  DCB 0x33
5A8626:  DCB 0x33
5A8627:  DCB 0x33
5A8628:  DCB 0x33
5A8629:  DCB 0x33
5A862A:  DCB 0x33
5A862B:  DCB 0x33
5A862C:  DCB 0x33
5A862D:  DCB 0x33
5A862E:  DCB 0x33
5A862F:  DCB 0x33
5A8630:  DCB 0x33
5A8631:  DCB 0x33
5A8632:  DCB 0x33
5A8633:  DCB 0x33
5A8634:  DCB 0x28
5A8635:  DCB 0x33
5A8636:  DCB 0x33
5A8637:  DCB 0x33
5A8638:  DCB 0x33
5A8639:  DCB 0x33
5A863A:  DCB 0x33
5A863B:  DCB 0x33
5A863C:  DCB 0x33
5A863D:  DCB 0x33
5A863E:  DCB 0x33
5A863F:  DCB 0x33
5A8640:  DCB 0x33
5A8641:  DCB 0x33
5A8642:  DCB 0x33
5A8643:  DCB 0x33
5A8644:  DCB 0x33
5A8645:  DCB 0x33
5A8646:  DCB 0x33
5A8647:  DCB 0x33
5A8648:  DCB 0x33
5A8649:  DCB 0x33
5A864A:  DCB 0x33
5A864B:  DCB 0x33
5A864C:  DCB 0x33
5A864D:  DCB 0x33
5A864E:  DCB 0x33
5A864F:  DCB 0x33
5A8650:  DCB 0x33
5A8651:  DCB 0x33
5A8652:  DCB 0x33
5A8653:  DCB 0x42
5A8654:  MOVS            R2, #0xD0; jumptable 005A8612 case 1
5A8656:  UXTH            R0, R2
5A8658:  BX              LR
5A865A:  CMP             R0, #0x3D ; '='
5A865C:  BGT             loc_5A866E
5A865E:  CMP             R0, #6
5A8660:  BEQ             loc_5A868E; jumptable 005A8612 case 6
5A8662:  CMP             R0, #0x1F
5A8664:  BNE             loc_5A867C; jumptable 005A8612 cases 2,3,5,8-13,15-30,32-61
5A8666:  ADD.W           R2, R0, #0x3C ; '<'; jumptable 005A8612 case 31
5A866A:  UXTH            R0, R2
5A866C:  BX              LR
5A866E:  CMP             R0, #0x3E ; '>'
5A8670:  BEQ             loc_5A869A; jumptable 005A8612 case 62
5A8672:  CMP             R0, #0x8F; jumptable 005A8612 default case
5A8674:  ITTT EQ
5A8676:  MOVEQ           R2, #0xCD
5A8678:  UXTHEQ          R0, R2
5A867A:  BXEQ            LR
5A867C:  SUB.W           R1, R0, #0x10; jumptable 005A8612 cases 2,3,5,8-13,15-30,32-61
5A8680:  UXTH            R1, R1
5A8682:  CMP             R1, #9
5A8684:  BHI             loc_5A86A6
5A8686:  ADD.W           R2, R0, #0x80
5A868A:  UXTH            R0, R2
5A868C:  BX              LR
5A868E:  ADDS            R2, R0, #4; jumptable 005A8612 case 6
5A8690:  CMP             R1, #2
5A8692:  IT EQ
5A8694:  MOVEQ           R2, #0xCE
5A8696:  UXTH            R0, R2
5A8698:  BX              LR
5A869A:  MOVS            R2, #0x3E ; '>'; jumptable 005A8612 case 62
5A869C:  CMP             R1, #1
5A869E:  IT EQ
5A86A0:  MOVEQ           R2, #0x20 ; ' '
5A86A2:  UXTH            R0, R2; jumptable 005A8612 case 7
5A86A4:  BX              LR
5A86A6:  SUB.W           R1, R0, #0x21 ; '!'
5A86AA:  UXTH            R1, R1
5A86AC:  CMP             R1, #0x19
5A86AE:  BHI             loc_5A86B8
5A86B0:  ADD.W           R2, R0, #0x7A ; 'z'
5A86B4:  UXTH            R0, R2
5A86B6:  BX              LR
5A86B8:  SUB.W           R1, R0, #0x41 ; 'A'
5A86BC:  UXTH            R1, R1
5A86BE:  CMP             R1, #0x19
5A86C0:  ITTT LS
5A86C2:  ADDLS.W         R2, R0, #0x5A ; 'Z'
5A86C6:  UXTHLS          R0, R2
5A86C8:  BXLS            LR
5A86CA:  SUB.W           R1, R0, #0x60 ; '`'
5A86CE:  UXTH            R1, R1
5A86D0:  CMP             R1, #0x16
5A86D2:  BHI             loc_5A86DC
5A86D4:  ADD.W           R2, R0, #0x55 ; 'U'
5A86D8:  UXTH            R0, R2
5A86DA:  BX              LR
5A86DC:  SUB.W           R1, R0, #0x77 ; 'w'
5A86E0:  UXTH            R1, R1
5A86E2:  CMP             R1, #0x15
5A86E4:  ITTT LS
5A86E6:  ADDLS.W         R2, R0, #0x3E ; '>'
5A86EA:  UXTHLS          R0, R2
5A86EC:  BXLS            LR
5A86EE:  SUB.W           R1, R0, #0x8D
5A86F2:  UXTH            R1, R1
5A86F4:  CMP             R1, #2
5A86F6:  IT CC
5A86F8:  MOVCC           R0, #0xCC
5A86FA:  BX              LR
5A86FC:  ADD.W           R2, R0, #0x59 ; 'Y'; jumptable 005A8612 case 4
5A8700:  UXTH            R0, R2
5A8702:  BX              LR
5A8704:  MOVS            R2, #0xCF; jumptable 005A8612 case 14
5A8706:  UXTH            R0, R2
5A8708:  BX              LR
