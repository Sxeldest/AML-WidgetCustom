; =========================================================
; Game Engine Function: sub_127584
; Address            : 0x127584 - 0x1277BC
; =========================================================

127584:  PUSH            {R4-R7,LR}
127586:  ADD             R7, SP, #0xC
127588:  PUSH.W          {R8-R11}
12758C:  SUB             SP, SP, #0x84
12758E:  MOV             R4, R0
127590:  LDR             R0, =(off_23494C - 0x12759C)
127592:  LDR             R1, =(sub_127868+1 - 0x1275A0)
127594:  ADD.W           R9, SP, #0xA0+var_68
127598:  ADD             R0, PC; off_23494C
12759A:  MOV             R11, R4
12759C:  ADD             R1, PC; sub_127868
12759E:  MOV             R3, R4
1275A0:  LDR.W           R8, [R0]; dword_23DF24
1275A4:  MOVS            R0, #0
1275A6:  STR.W           R0, [R11,#4]!
1275AA:  LDR.W           R2, [R8]
1275AE:  STR             R2, [SP,#0xA0+var_9C]
1275B0:  MOV             R2, R4
1275B2:  STR.W           R0, [R2,#8]!
1275B6:  STR             R0, [R4]
1275B8:  MOV             R0, R9
1275BA:  STR             R2, [SP,#0xA0+var_A0]
1275BC:  MOVS            R2, #0
1275BE:  BL              sub_1278F4
1275C2:  ADD             R5, SP, #0xA0+var_50
1275C4:  MOV             R1, R9
1275C6:  MOV             R0, R5
1275C8:  BL              sub_123C34
1275CC:  BL              sub_127C98
1275D0:  LDR             R0, =(unk_3140B0 - 0x1275D6)
1275D2:  ADD             R0, PC; unk_3140B0
1275D4:  LDR.W           R10, [R0,#(dword_3140C0 - 0x3140B0)]
1275D8:  CMP.W           R10, #0
1275DC:  BNE             loc_12760E
1275DE:  ADD             R6, SP, #0xA0+var_50
1275E0:  ADD             R0, SP, #0xA0+var_38
1275E2:  MOV             R1, R6
1275E4:  BL              sub_123C34
1275E8:  BL              sub_127C98
1275EC:  LDR             R0, =(unk_3140B0 - 0x1275F2)
1275EE:  ADD             R0, PC; unk_3140B0
1275F0:  ADD             R6, SP, #0xA0+var_38
1275F2:  MOV             R1, R6
1275F4:  BL              sub_123C60
1275F8:  LDR             R0, [SP,#0xA0+var_28]
1275FA:  CMP             R6, R0
1275FC:  BEQ             loc_127604
1275FE:  CBZ             R0, loc_12760E
127600:  MOVS            R1, #5
127602:  B               loc_127606
127604:  MOVS            R1, #4
127606:  LDR             R2, [R0]
127608:  LDR.W           R1, [R2,R1,LSL#2]
12760C:  BLX             R1
12760E:  LDR             R0, [SP,#0xA0+var_40]
127610:  CMP             R5, R0
127612:  BEQ             loc_12761A
127614:  CBZ             R0, loc_127624
127616:  MOVS            R1, #5
127618:  B               loc_12761C
12761A:  MOVS            R1, #4
12761C:  LDR             R2, [R0]
12761E:  LDR.W           R1, [R2,R1,LSL#2]
127622:  BLX             R1
127624:  CMP.W           R10, #0
127628:  BNE             loc_127640
12762A:  MOVW            R0, #0xDDDC
12762E:  LDR             R1, [SP,#0xA0+var_9C]
127630:  MOVT            R0, #0x66 ; 'f'
127634:  ADD             R0, R1
127636:  LDR             R1, =(sub_127C6C+1 - 0x12763C)
127638:  ADD             R1, PC; sub_127C6C
12763A:  MOV             R2, R4
12763C:  BL              sub_164196
127640:  LDR             R0, [SP,#0xA0+var_58]
127642:  CMP             R9, R0
127644:  BEQ             loc_12764C
127646:  CBZ             R0, loc_127656
127648:  MOVS            R1, #5
12764A:  B               loc_12764E
12764C:  MOVS            R1, #4
12764E:  LDR             R2, [R0]
127650:  LDR.W           R1, [R2,R1,LSL#2]
127654:  BLX             R1
127656:  LDR.W           R0, [R8]
12765A:  ADD.W           R9, SP, #0xA0+var_80
12765E:  STR             R0, [SP,#0xA0+var_9C]
127660:  MOVS            R2, #0
127662:  LDR             R1, =(sub_127930+1 - 0x12766C)
127664:  MOV             R0, R9
127666:  MOV             R3, R4
127668:  ADD             R1, PC; sub_127930
12766A:  BL              sub_1279C0
12766E:  ADD             R5, SP, #0xA0+var_50
127670:  MOV             R1, R9
127672:  MOV             R0, R5
127674:  BL              sub_127E3C
127678:  BL              sub_127DE4
12767C:  LDR             R0, =(unk_3140D0 - 0x127682)
12767E:  ADD             R0, PC; unk_3140D0
127680:  LDR.W           R10, [R0,#(dword_3140E0 - 0x3140D0)]
127684:  CMP.W           R10, #0
127688:  BNE             loc_1276BA
12768A:  ADD             R6, SP, #0xA0+var_50
12768C:  ADD             R0, SP, #0xA0+var_38
12768E:  MOV             R1, R6
127690:  BL              sub_127E3C
127694:  BL              sub_127DE4
127698:  LDR             R0, =(unk_3140D0 - 0x12769E)
12769A:  ADD             R0, PC; unk_3140D0
12769C:  ADD             R6, SP, #0xA0+var_38
12769E:  MOV             R1, R6
1276A0:  BL              sub_127E68
1276A4:  LDR             R0, [SP,#0xA0+var_28]
1276A6:  CMP             R6, R0
1276A8:  BEQ             loc_1276B0
1276AA:  CBZ             R0, loc_1276BA
1276AC:  MOVS            R1, #5
1276AE:  B               loc_1276B2
1276B0:  MOVS            R1, #4
1276B2:  LDR             R2, [R0]
1276B4:  LDR.W           R1, [R2,R1,LSL#2]
1276B8:  BLX             R1
1276BA:  LDR             R0, [SP,#0xA0+var_40]
1276BC:  CMP             R5, R0
1276BE:  BEQ             loc_1276C6
1276C0:  CBZ             R0, loc_1276D0
1276C2:  MOVS            R1, #5
1276C4:  B               loc_1276C8
1276C6:  MOVS            R1, #4
1276C8:  LDR             R2, [R0]
1276CA:  LDR.W           R1, [R2,R1,LSL#2]
1276CE:  BLX             R1
1276D0:  MOVW            R5, #0xF134
1276D4:  CMP.W           R10, #0
1276D8:  MOVT            R5, #0x66 ; 'f'
1276DC:  BNE             loc_1276F0
1276DE:  LDR             R0, [SP,#0xA0+var_9C]
1276E0:  LDR             R1, =(sub_127DC4+1 - 0x1276EC)
1276E2:  ADD             R0, R5
1276E4:  ADD.W           R0, R0, #0x16A0
1276E8:  ADD             R1, PC; sub_127DC4
1276EA:  MOV             R2, R11
1276EC:  BL              sub_164196
1276F0:  LDR             R0, [SP,#0xA0+var_70]
1276F2:  CMP             R9, R0
1276F4:  BEQ             loc_1276FC
1276F6:  CBZ             R0, loc_127706
1276F8:  MOVS            R1, #5
1276FA:  B               loc_1276FE
1276FC:  MOVS            R1, #4
1276FE:  LDR             R2, [R0]
127700:  LDR.W           R1, [R2,R1,LSL#2]
127704:  BLX             R1
127706:  LDR.W           R8, [R8]
12770A:  ADD.W           R10, SP, #0xA0+var_98
12770E:  LDR             R1, =(sub_1279FC+1 - 0x12771A)
127710:  MOVS            R2, #0
127712:  MOV             R0, R10
127714:  MOV             R3, R4
127716:  ADD             R1, PC; sub_1279FC
127718:  BL              sub_127A80
12771C:  ADD.W           R11, SP, #0xA0+var_50
127720:  MOV             R1, R10
127722:  MOV             R0, R11
127724:  BL              sub_1280DC
127728:  BL              sub_128084
12772C:  LDR             R0, =(unk_3140F0 - 0x127732)
12772E:  ADD             R0, PC; unk_3140F0
127730:  LDR             R6, [R0,#(dword_314100 - 0x3140F0)]
127732:  CBNZ            R6, loc_127776
127734:  ADD.W           R9, SP, #0xA0+var_50
127738:  ADD             R0, SP, #0xA0+var_38
12773A:  MOV             R1, R9
12773C:  BL              sub_1280DC
127740:  BL              sub_128084
127744:  LDR             R0, =(unk_3140F0 - 0x12774A)
127746:  ADD             R0, PC; unk_3140F0
127748:  ADD             R5, SP, #0xA0+var_38
12774A:  MOV             R1, R5
12774C:  BL              sub_128108
127750:  LDR             R0, [SP,#0xA0+var_28]
127752:  CMP             R5, R0
127754:  BEQ             loc_127764
127756:  MOV             R5, #0x66F134
12775E:  CBZ             R0, loc_127776
127760:  MOVS            R1, #5
127762:  B               loc_12776E
127764:  MOVW            R5, #0xF134
127768:  MOVS            R1, #4
12776A:  MOVT            R5, #0x66 ; 'f'
12776E:  LDR             R2, [R0]
127770:  LDR.W           R1, [R2,R1,LSL#2]
127774:  BLX             R1
127776:  LDR             R0, [SP,#0xA0+var_40]
127778:  CMP             R11, R0
12777A:  BEQ             loc_127782
12777C:  CBZ             R0, loc_12778C
12777E:  MOVS            R1, #5
127780:  B               loc_127784
127782:  MOVS            R1, #4
127784:  LDR             R2, [R0]
127786:  LDR.W           R1, [R2,R1,LSL#2]
12778A:  BLX             R1
12778C:  CBNZ            R6, loc_12779C
12778E:  LDR             R1, =(sub_128058+1 - 0x127798)
127790:  ADD.W           R0, R8, R5
127794:  ADD             R1, PC; sub_128058
127796:  LDR             R2, [SP,#0xA0+var_A0]
127798:  BL              sub_164196
12779C:  LDR             R0, [SP,#0xA0+var_88]
12779E:  CMP             R10, R0
1277A0:  BEQ             loc_1277A8
1277A2:  CBZ             R0, loc_1277B2
1277A4:  MOVS            R1, #5
1277A6:  B               loc_1277AA
1277A8:  MOVS            R1, #4
1277AA:  LDR             R2, [R0]
1277AC:  LDR.W           R1, [R2,R1,LSL#2]
1277B0:  BLX             R1
1277B2:  MOV             R0, R4
1277B4:  ADD             SP, SP, #0x84
1277B6:  POP.W           {R8-R11}
1277BA:  POP             {R4-R7,PC}
