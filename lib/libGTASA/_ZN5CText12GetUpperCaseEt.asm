; =========================================================
; Game Engine Function: _ZN5CText12GetUpperCaseEt
; Address            : 0x54D620 - 0x54D690
; =========================================================

54D620:  LDRB.W          R0, [R0,#0x20]
54D624:  SUBS            R0, #0x65 ; 'e'; switch 15 cases
54D626:  CMP             R0, #0xE
54D628:  BHI             def_54D62A; jumptable 0054D62A default case, cases 104,106-114
54D62A:  TBB.W           [PC,R0]; switch jump
54D62E:  DCB 0x14; jump table for switch statement
54D62F:  DCB 0x1A
54D630:  DCB 8
54D631:  DCB 0x2F
54D632:  DCB 8
54D633:  DCB 0x2F
54D634:  DCB 0x2F
54D635:  DCB 0x2F
54D636:  DCB 0x2F
54D637:  DCB 0x2F
54D638:  DCB 0x2F
54D639:  DCB 0x2F
54D63A:  DCB 0x2F
54D63B:  DCB 0x2F
54D63C:  DCB 8
54D63D:  ALIGN 2
54D63E:  SUB.W           R0, R1, #0x61 ; 'a'; jumptable 0054D62A cases 103,105,115
54D642:  UXTH            R0, R0
54D644:  CMP             R0, #0x19
54D646:  BLS             loc_54D66C
54D648:  BIC.W           R0, R1, #0x7F
54D64C:  CMP             R0, #0x80
54D64E:  BNE             def_54D62A; jumptable 0054D62A default case, cases 104,106-114
54D650:  LDR             R0, =(off_61EB14 - 0x54D656)
54D652:  ADD             R0, PC; off_61EB14
54D654:  B               loc_54D682
54D656:  SUB.W           R0, R1, #0x61 ; 'a'; jumptable 0054D62A case 101
54D65A:  UXTH            R0, R0
54D65C:  CMP             R0, #0x19
54D65E:  BLS             loc_54D66C
54D660:  B               def_54D62A; jumptable 0054D62A default case, cases 104,106-114
54D662:  SUB.W           R0, R1, #0x61 ; 'a'; jumptable 0054D62A case 102
54D666:  UXTH            R0, R0
54D668:  CMP             R0, #0x19
54D66A:  BHI             loc_54D676
54D66C:  MOVW            R0, #0xFFE0
54D670:  ADD             R1, R0
54D672:  UXTH            R0, R1
54D674:  BX              LR
54D676:  BIC.W           R0, R1, #0x7F
54D67A:  CMP             R0, #0x80
54D67C:  BNE             def_54D62A; jumptable 0054D62A default case, cases 104,106-114
54D67E:  LDR             R0, =(off_61EA14 - 0x54D684)
54D680:  ADD             R0, PC; off_61EA14
54D682:  ADD.W           R0, R0, R1,LSL#1
54D686:  MOV             R1, #0xFFFFFF00
54D68A:  LDRH            R1, [R0,R1]
54D68C:  UXTH            R0, R1; jumptable 0054D62A default case, cases 104,106-114
54D68E:  BX              LR
