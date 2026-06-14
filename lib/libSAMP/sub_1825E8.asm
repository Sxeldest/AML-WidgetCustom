; =========================================================
; Game Engine Function: sub_1825E8
; Address            : 0x1825E8 - 0x182898
; =========================================================

1825E8:  PUSH            {R4-R7,LR}
1825EA:  ADD             R7, SP, #0xC
1825EC:  PUSH.W          {R8-R11}
1825F0:  SUB             SP, SP, #0x144
1825F2:  LDRD.W          R5, R4, [R7,#arg_8]
1825F6:  MOV             R6, SP
1825F8:  LDR.W           R8, [R7,#arg_10]
1825FC:  MOV             R9, R1
1825FE:  MOV             R10, R0
182600:  STR             R3, [R6,#0x160+var_148]
182602:  STRD.W          R5, R4, [R7,#var_24]
182606:  STR             R2, [R6,#0x160+var_154]
182608:  CBZ             R2, loc_182662
18260A:  LDR             R2, [R6,#0x160+var_154]
18260C:  LDR.W           R0, [R10,#0x7E0]
182610:  ASRS            R1, R2, #0x1F
182612:  SUBS            R0, #0x28 ; '('
182614:  ADD.W           R1, R2, R1,LSR#29
182618:  CMP.W           R0, R1,ASR#3
18261C:  BGE             loc_182662
18261E:  LDR             R0, =(aLibsampSo_0 - 0x182626); "libsamp.so" ...
182620:  MOV             R11, LR
182622:  ADD             R0, PC; "libsamp.so"
182624:  BL              sub_163FF8
182628:  LDR             R1, =(aPotentialSplit - 0x18263A); "Potential split packet from {}" ...
18262A:  ADD.W           R2, R6, #0x28 ; '('
18262E:  SUB.W           R0, R11, R0
182632:  ADD.W           R3, R6, #0x28 ; '('
182636:  ADD             R1, PC; "Potential split packet from {}"
182638:  STR             R0, [R2]
18263A:  MOVS            R0, #1
18263C:  MOVS            R2, #0x1E
18263E:  BL              sub_10B6E4
182642:  CMP.W           R9, #0
182646:  BEQ             loc_182662
182648:  LDRB.W          R0, [R9]
18264C:  ADD.W           R2, R6, #0x28 ; '('
182650:  LDR             R1, =(aPacketId - 0x18265E); "Packet id {}" ...
182652:  ADD.W           R3, R6, #0x28 ; '('
182656:  STR             R0, [R2]
182658:  MOVS            R0, #1
18265A:  ADD             R1, PC; "Packet id {}"
18265C:  MOVS            R2, #0xC
18265E:  BL              sub_186F1C
182662:  CMP.W           R8, #0
182666:  BEQ             loc_1826D8
182668:  LDRH.W          R0, [R10,#8]
18266C:  MOVS            R1, #7
18266E:  ADD.W           R1, R1, R0,LSL#2
182672:  BIC.W           R1, R1, #7
182676:  SUB.W           R1, SP, R1
18267A:  STR             R1, [R6,#0x24]
18267C:  MOV             SP, R1
18267E:  CMP             R0, #0
182680:  BEQ             loc_182706
182682:  LDR             R0, =(unk_BE944 - 0x182690)
182684:  SUB.W           R8, R7, #-var_24
182688:  MOVS            R5, #0
18268A:  MOVS            R4, #0
18268C:  ADD             R0, PC; unk_BE944
18268E:  MOV             R11, R0
182690:  MOVS            R0, #0
182692:  STR             R0, [R6,#0x20]
182694:  LDR.W           R0, [R10,#0x340]
182698:  LDRB            R1, [R0,R5]
18269A:  CBZ             R1, loc_1826C4
18269C:  ADD             R0, R5
18269E:  MOV             R1, R8
1826A0:  ADDS            R0, #4
1826A2:  BL              sub_17E596
1826A6:  CBZ             R0, loc_1826C4
1826A8:  LDR.W           R0, [R10,#0x340]
1826AC:  MOV             R1, R11
1826AE:  ADD             R0, R5
1826B0:  ADDS            R0, #4
1826B2:  BL              sub_17E596
1826B6:  CBZ             R0, loc_1826C4
1826B8:  LDRD.W          R1, R0, [R6,#0x20]
1826BC:  STR.W           R4, [R0,R1,LSL#2]
1826C0:  ADDS            R1, #1
1826C2:  STR             R1, [R6,#0x20]
1826C4:  LDRH.W          R0, [R10,#8]
1826C8:  ADDS            R4, #1
1826CA:  ADD.W           R5, R5, #0x840
1826CE:  CMP             R4, R0
1826D0:  BCC             loc_182694
1826D2:  LDR             R0, [R6,#0x20]
1826D4:  CBNZ            R0, loc_182714
1826D6:  B               loc_182706
1826D8:  SUB.W           R0, SP, #8
1826DC:  STR             R0, [R6,#0x24]
1826DE:  MOV             SP, R0
1826E0:  MOV             R0, R10
1826E2:  MOV             R1, R5
1826E4:  MOV             R2, R4
1826E6:  MOVS            R3, #1
1826E8:  BL              sub_1811B4
1826EC:  ADDS            R1, R0, #1
1826EE:  BEQ             loc_182706
1826F0:  LDR.W           R1, [R10,#0x340]
1826F4:  ADD.W           R2, R0, R0,LSL#5
1826F8:  ADD.W           R1, R1, R2,LSL#6
1826FC:  LDR.W           R1, [R1,#0x83C]
182700:  SUBS            R1, #1
182702:  CMP             R1, #3
182704:  BCS             loc_18270C
182706:  MOV.W           R8, #0
18270A:  B               loc_182888
18270C:  LDR             R1, [R6,#0x24]
18270E:  STR             R0, [R1]
182710:  MOVS            R0, #1
182712:  STR             R0, [R6,#0x20]
182714:  LDR             R0, [R6,#0xC]
182716:  MOVS            R3, #0
182718:  LDR             R1, [R7,#arg_1C]
18271A:  MOV.W           R8, #0
18271E:  ADDS            R0, #7
182720:  LDRD.W          R11, R2, [R7,#arg_14]
182724:  STR             R0, [R6,#0x10]
182726:  ASRS            R4, R0, #3
182728:  MOV             R0, R2
18272A:  MOV.W           R2, #0x3E8
18272E:  LDR             R5, [R7,#arg_0]
182730:  BLX             sub_221404
182734:  STR             R0, [R6,#8]
182736:  MOVS            R0, #1
182738:  CMP             R4, #1
18273A:  STR             R4, [R6,#0x1C]
18273C:  IT HI
18273E:  MOVHI           R0, R4
182740:  STR             R0, [R6]
182742:  SUB.W           R0, R5, #8
182746:  STR             R0, [R6,#0x14]
182748:  EOR.W           R0, R11, #1
18274C:  MOV.W           R11, #0
182750:  STR             R0, [R6,#4]
182752:  LDRB.W          R0, [R10,#0x7E4]
182756:  CBZ             R0, loc_182786
182758:  LDR             R0, [R6,#0x10]
18275A:  CMP             R0, #8
18275C:  BCC             loc_18277A
18275E:  LDR             R1, [R6]
182760:  MOV             R0, R9
182762:  LDRB.W          R2, [R0],#1
182766:  SUBS            R1, #1
182768:  ADD.W           R2, R10, R2,LSL#2
18276C:  LDR.W           R3, [R2,#0x3A4]
182770:  ADD.W           R3, R3, #1
182774:  STR.W           R3, [R2,#0x3A4]
182778:  BNE             loc_182762
18277A:  LDR.W           R0, [R10,#0x7AC]
18277E:  LDR             R1, [R6,#0x1C]
182780:  ADD             R0, R1
182782:  STR.W           R0, [R10,#0x7AC]
182786:  LDR.W           R0, [R10,#0x7A8]
18278A:  CBZ             R0, loc_182800
18278C:  LDR             R4, [R6,#0x1C]
18278E:  ADD.W           R5, R6, #0x28 ; '('
182792:  MOV             R0, R5; int
182794:  MOV             R1, R4; size
182796:  BL              sub_17D4C0
18279A:  LDR.W           R0, [R10,#0x7A8]
18279E:  MOV             R1, R9
1827A0:  MOV             R2, R4
1827A2:  MOV             R3, R5
1827A4:  BL              sub_17DE2C
1827A8:  ADD.W           R0, R6, #0x28 ; '('
1827AC:  LDR.W           R5, [R10,#0x7B4]
1827B0:  LDR.W           R3, [R10,#0x340]
1827B4:  LDR             R2, [R0]
1827B6:  LDR             R1, [R0,#0xC]
1827B8:  LDR             R0, [R6,#0x24]
1827BA:  LDR.W           R4, [R10,#0x7E0]
1827BE:  LDR.W           R12, [R0,R11,LSL#2]
1827C2:  ADDS            R0, R2, #7
1827C4:  ADD.W           R0, R5, R0,ASR#3
1827C8:  STR.W           R0, [R10,#0x7B4]
1827CC:  SUB             SP, SP, #0x18
1827CE:  LDR             R0, [R7,#arg_0]
1827D0:  STR             R0, [SP,#0x180+var_180]
1827D2:  LDR             R0, [R7,#arg_4]
1827D4:  STR             R0, [SP,#0x180+var_17C]
1827D6:  MOVS            R0, #1
1827D8:  STRD.W          R0, R4, [SP,#0x180+var_178]
1827DC:  LDR             R0, [R7,#arg_18]
1827DE:  STR             R0, [SP,#0x180+var_170]
1827E0:  LDR             R0, [R7,#arg_1C]
1827E2:  STR             R0, [SP,#0x180+var_16C]
1827E4:  ADD.W           R0, R12, R12,LSL#5
1827E8:  ADD.W           R0, R3, R0,LSL#6
1827EC:  LDR             R3, [R6,#0x18]
1827EE:  ADDS            R0, #0x18
1827F0:  BL              sub_18888C
1827F4:  ADD             SP, SP, #0x18
1827F6:  ADD.W           R0, R6, #0x28 ; '('
1827FA:  BL              sub_17D542
1827FE:  B               loc_18285E
182800:  LDR             R0, [R6,#4]
182802:  ORR.W           R0, R0, R8
182806:  LSLS            R0, R0, #0x1F
182808:  BEQ             loc_18280E
18280A:  MOVS            R4, #0
18280C:  B               loc_18281C
18280E:  LDR             R0, [R6,#0x20]
182810:  SUB.W           R0, R11, R0
182814:  ADDS            R0, #1
182816:  CLZ.W           R0, R0
18281A:  LSRS            R4, R0, #5
18281C:  LDR             R0, [R6,#0x24]
18281E:  LDR.W           R1, [R10,#0x340]
182822:  LDR.W           R2, [R10,#0x7E0]
182826:  LDR.W           R0, [R0,R11,LSL#2]
18282A:  SUB             SP, SP, #0x18
18282C:  ADD.W           R0, R0, R0,LSL#5
182830:  LDR             R5, [R7,#arg_0]
182832:  STR             R2, [SP,#0x180+var_174]
182834:  EOR.W           R3, R4, #1
182838:  LDR             R2, [R7,#arg_18]
18283A:  ADD.W           R0, R1, R0,LSL#6
18283E:  STR             R5, [SP,#0x180+var_180]
182840:  ADDS            R0, #0x18
182842:  LDR             R5, [R7,#arg_4]
182844:  MOV             R1, R9
182846:  STR             R2, [SP,#0x180+var_170]
182848:  LDR             R2, [R7,#arg_1C]
18284A:  STRD.W          R5, R3, [SP,#0x180+var_17C]
18284E:  STR             R2, [SP,#0x180+var_16C]
182850:  LDR             R2, [R6,#0xC]
182852:  LDR             R3, [R6,#0x18]
182854:  BL              sub_18888C
182858:  ADD             SP, SP, #0x18
18285A:  ORR.W           R8, R8, R4
18285E:  LDR             R0, [R6,#0x14]
182860:  CMP             R0, #2
182862:  BHI             loc_18287C
182864:  LDR             R0, [R6,#0x24]
182866:  LDR.W           R1, [R10,#0x340]
18286A:  LDR.W           R0, [R0,R11,LSL#2]
18286E:  ADD.W           R0, R0, R0,LSL#5
182872:  ADD.W           R0, R1, R0,LSL#6
182876:  LDR             R1, [R6,#8]
182878:  STR.W           R1, [R0,#0x700]
18287C:  LDR             R0, [R6,#0x20]
18287E:  ADD.W           R11, R11, #1
182882:  CMP             R11, R0
182884:  BNE.W           loc_182752
182888:  SUB.W           R4, R7, #-var_1C
18288C:  AND.W           R0, R8, #1
182890:  MOV             SP, R4
182892:  POP.W           {R8-R11}
182896:  POP             {R4-R7,PC}
