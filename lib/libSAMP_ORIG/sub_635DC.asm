; =========================================================
; Game Engine Function: sub_635DC
; Address            : 0x635DC - 0x637F0
; =========================================================

635DC:  PUSH            {R4-R7,LR}
635DE:  ADD             R7, SP, #0xC
635E0:  PUSH.W          {R8-R11}
635E4:  SUB             SP, SP, #4
635E6:  VPUSH           {D8-D9}
635EA:  SUB             SP, SP, #8
635EC:  MOV             R9, R0
635EE:  BL              sub_60C34
635F2:  BL              sub_73608
635F6:  LDR             R0, =(off_114AB0 - 0x63604)
635F8:  MOV             R4, #0x10414B
63600:  ADD             R0, PC; off_114AB0
63602:  LDR             R0, [R0]; dword_1A4408
63604:  STR             R0, [SP,#0x38+var_34]
63606:  LDR             R1, [R0]
63608:  LDR.W           R0, [R9,#0x1C]
6360C:  ADD             R1, R4
6360E:  BLX             R1
63610:  CMP             R0, #0x36 ; '6'
63612:  BEQ             loc_63626
63614:  LDR             R0, [SP,#0x38+var_34]
63616:  LDR             R1, [R0]
63618:  LDR.W           R0, [R9,#0x1C]
6361C:  ADD             R1, R4
6361E:  ADDS            R1, #0xB0
63620:  BLX             R1
63622:  CMP             R0, #0
63624:  BEQ             loc_63718
63626:  LDR             R0, =(off_114AD8 - 0x63630)
63628:  MOV.W           R1, #0x13A0
6362C:  ADD             R0, PC; off_114AD8
6362E:  LDR             R0, [R0]; dword_1A4434
63630:  LDR             R0, [R0]
63632:  LDR.W           R0, [R0,#0x3B0]
63636:  LDR             R0, [R0]
63638:  LDRH            R1, [R0,R1]
6363A:  MOV.W           R0, #0x23C
6363E:  LDR             R2, =(unk_1176A0 - 0x63644)
63640:  ADD             R2, PC; unk_1176A0
63642:  MLA.W           R11, R1, R0, R2
63646:  LDRB.W          R0, [R11,#0x208]
6364A:  CMP             R0, #0
6364C:  ITT EQ
6364E:  LDRBEQ.W        R3, [R11,#0x209]
63652:  CMPEQ           R3, #0
63654:  BEQ             loc_636B8
63656:  VMOV.I32        Q4, #0
6365A:  MOV.W           R10, #0
6365E:  MOVS            R4, #8
63660:  MOVS            R6, #0
63662:  ADD.W           R5, R11, R6
63666:  CBZ             R0, loc_636AA
63668:  ADD.W           R8, R11, R6,LSL#2
6366C:  LDR.W           R0, [R8,#0x214]
63670:  CBZ             R0, loc_6368C
63672:  ADD.W           R1, R11, R4
63676:  VST1.32         {D8-D9}, [R1]!
6367A:  VST1.32         {D8-D9}, [R1]!
6367E:  STR.W           R10, [R1]
63682:  LDR             R1, [R0]
63684:  LDR             R1, [R1,#4]
63686:  BLX             R1
63688:  STR.W           R10, [R8,#0x214]
6368C:  ADD.W           R0, R11, R4
63690:  SUB.W           R1, R0, #8
63694:  ADDS            R0, #8
63696:  VST1.32         {D8-D9}, [R0]!
6369A:  VST1.32         {D8-D9}, [R0]!
6369E:  VST1.32         {D8-D9}, [R1]
636A2:  STR.W           R10, [R0]
636A6:  STRB.W          R10, [R5,#0x208]
636AA:  CMP             R6, #9
636AC:  BEQ             loc_63718
636AE:  ADDS            R6, #1
636B0:  LDRB.W          R0, [R5,#0x209]
636B4:  ADDS            R4, #0x34 ; '4'
636B6:  B               loc_63662
636B8:  MOV.W           R3, #0x23C
636BC:  MLA.W           R3, R1, R3, R2
636C0:  LDRB.W          R6, [R3,#0x20A]
636C4:  CMP             R6, #0
636C6:  ITT EQ
636C8:  LDRBEQ.W        R3, [R3,#0x20B]
636CC:  CMPEQ           R3, #0
636CE:  BNE             loc_63656
636D0:  MOV.W           R3, #0x23C
636D4:  MLA.W           R3, R1, R3, R2
636D8:  LDRB.W          R6, [R3,#0x20C]
636DC:  CMP             R6, #0
636DE:  ITT EQ
636E0:  LDRBEQ.W        R3, [R3,#0x20D]
636E4:  CMPEQ           R3, #0
636E6:  BNE             loc_63656
636E8:  MOV.W           R3, #0x23C
636EC:  MLA.W           R3, R1, R3, R2
636F0:  LDRB.W          R6, [R3,#0x20E]
636F4:  CMP             R6, #0
636F6:  ITT EQ
636F8:  LDRBEQ.W        R3, [R3,#0x20F]
636FC:  CMPEQ           R3, #0
636FE:  BNE             loc_63656
63700:  MOV.W           R3, #0x23C
63704:  MLA.W           R1, R1, R3, R2
63708:  LDRB.W          R2, [R1,#0x210]
6370C:  CMP             R2, #0
6370E:  ITT EQ
63710:  LDRBEQ.W        R1, [R1,#0x211]
63714:  CMPEQ           R1, #0
63716:  BNE             loc_63656
63718:  BL              sub_6C844
6371C:  LDR             R5, [R0,#8]
6371E:  CBNZ            R5, loc_63748
63720:  MOV             R6, R0
63722:  MOV.W           R0, #0x2F0; unsigned int
63726:  BLX             j__Znwj; operator new(uint)
6372A:  MOV             R5, R0
6372C:  LDR             R0, =(_ZTV10CPlayerPed - 0x63734); `vtable for'CPlayerPed ...
6372E:  LDR             R1, [SP,#0x38+var_34]
63730:  ADD             R0, PC; `vtable for'CPlayerPed
63732:  ADDS            R0, #8
63734:  STR             R0, [R5]
63736:  LDR             R1, [R1]
63738:  MOV             R0, #0x103B89
63740:  ADD             R1, R0
63742:  MOV             R0, R5
63744:  BLX             R1
63746:  STR             R5, [R6,#8]
63748:  LDR             R1, [R5,#0x5C]
6374A:  LDR.W           R0, [R1,#0x590]
6374E:  CMP             R0, #0
63750:  ITT NE
63752:  LDRBNE.W        R2, [R1,#0x485]
63756:  MOVSNE.W        R2, R2,LSL#31
6375A:  BNE             loc_63776
6375C:  LDR             R0, =(off_1A3A64 - 0x63762)
6375E:  ADD             R0, PC; off_1A3A64
63760:  LDR             R1, [R0]
63762:  MOV             R0, R9
63764:  ADD             SP, SP, #8
63766:  VPOP            {D8-D9}
6376A:  ADD             SP, SP, #4
6376C:  POP.W           {R8-R11}
63770:  POP.W           {R4-R7,LR}
63774:  BX              R1
63776:  LDR.W           R2, [R0,#0x464]
6377A:  CMP             R2, R1
6377C:  BNE             loc_63788
6377E:  LDRH            R0, [R0,#0x26]
63780:  SUBW            R0, R0, #0x239
63784:  CMP             R0, #1
63786:  BHI             loc_6375C
63788:  BL              sub_6C844
6378C:  LDR             R5, [R0,#8]
6378E:  CBNZ            R5, loc_637B8
63790:  MOV             R6, R0
63792:  MOV.W           R0, #0x2F0; unsigned int
63796:  BLX             j__Znwj; operator new(uint)
6379A:  MOV             R5, R0
6379C:  LDR             R0, =(_ZTV10CPlayerPed - 0x637A4); `vtable for'CPlayerPed ...
6379E:  LDR             R1, [SP,#0x38+var_34]
637A0:  ADD             R0, PC; `vtable for'CPlayerPed
637A2:  ADDS            R0, #8
637A4:  STR             R0, [R5]
637A6:  LDR             R1, [R1]
637A8:  MOV             R0, #0x103B89
637B0:  ADD             R1, R0
637B2:  MOV             R0, R5
637B4:  BLX             R1
637B6:  STR             R5, [R6,#8]
637B8:  LDR             R0, [SP,#0x38+var_34]
637BA:  MOV             R4, #0x104649
637C2:  LDR             R0, [R0]
637C4:  ADDS            R1, R0, R4
637C6:  MOV             R0, R5
637C8:  BLX             R1
637CA:  CMP             R0, #0
637CC:  BEQ             loc_6375C
637CE:  LDR             R5, =(byte_1A3A60 - 0x637D4)
637D0:  ADD             R5, PC; byte_1A3A60
637D2:  LDRB            R0, [R5]
637D4:  CMP             R0, #0
637D6:  BEQ             loc_6375C
637D8:  LDR             R0, [SP,#0x38+var_34]
637DA:  LDR             R1, [R0]
637DC:  MOVW            R0, #0x3560
637E0:  LDR.W           R0, [R9,R0]
637E4:  ADD             R1, R4
637E6:  ADDS            R1, #0x74 ; 't'
637E8:  BLX             R1
637EA:  MOVS            R0, #0
637EC:  STRB            R0, [R5]
637EE:  B               loc_6375C
