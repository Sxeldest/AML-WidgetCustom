; =========================================================
; Game Engine Function: sub_186722
; Address            : 0x186722 - 0x1869CA
; =========================================================

186722:  PUSH            {R4-R7,LR}
186724:  ADD             R7, SP, #0xC
186726:  PUSH.W          {R8-R11}
18672A:  SUB             SP, SP, #0x7C
18672C:  ADD             R6, SP, #0x98+var_60
18672E:  MOV             R10, R1
186730:  MOV             R4, R0
186732:  MOVS            R0, #0
186734:  MOVS            R1, #1
186736:  STRD.W          R0, R0, [SP,#0x98+var_28]
18673A:  STR             R1, [SP,#0x98+var_2C]
18673C:  MOV             R1, R6
18673E:  STR             R0, [SP,#0x98+var_20]
186740:  MOV             R0, R4
186742:  BL              sub_185604
186746:  ADD             R5, SP, #0x98+var_70
186748:  ADD             R2, SP, #0x98+var_80; int
18674A:  MOV             R0, R4; int
18674C:  MOV             R1, R6; int
18674E:  MOV             R3, R5
186750:  BL              sub_185F4A
186754:  LDR             R0, [SP,#0x98+var_70]
186756:  CBNZ            R0, loc_186772
186758:  ADDS            R0, R5, #4
18675A:  MOVS            R2, #0
18675C:  MOV             R1, R2
18675E:  CMP             R2, #3
186760:  BEQ             loc_18676C
186762:  LDR.W           R3, [R0,R1,LSL#2]
186766:  ADDS            R2, R1, #1
186768:  CMP             R3, #0
18676A:  BEQ             loc_18675C
18676C:  CMP             R1, #2
18676E:  BHI.W           loc_1869B4
186772:  ADD.W           R9, SP, #0x98+var_40
186776:  ADD             R6, SP, #0x98+var_80
186778:  VLD1.32         {D16-D17}, [R4]
18677C:  MOV             R0, R9
18677E:  MOV             R1, R6
186780:  VST1.64         {D16-D17}, [R9]
186784:  BL              sub_184F9C
186788:  ADD             R5, SP, #0x98+var_60
18678A:  ADD.W           R8, SP, #0x98+var_70
18678E:  MOV             R2, R6; int
186790:  MOV             R0, R5; int
186792:  MOV             R1, R8; int
186794:  MOV             R3, R5
186796:  BL              sub_185F4A
18679A:  LDR             R0, [SP,#0x98+var_60]
18679C:  CBNZ            R0, loc_1867B8
18679E:  ADDS            R0, R5, #4
1867A0:  MOVS            R2, #0
1867A2:  MOV             R1, R2
1867A4:  CMP             R2, #3
1867A6:  BEQ             loc_1867B2
1867A8:  LDR.W           R3, [R0,R1,LSL#2]
1867AC:  ADDS            R2, R1, #1
1867AE:  CMP             R3, #0
1867B0:  BEQ             loc_1867A2
1867B2:  CMP             R1, #2
1867B4:  BHI.W           loc_1869B8
1867B8:  STR.W           R10, [SP,#0x98+var_90]
1867BC:  MOV             R6, R9
1867BE:  ADD.W           R11, SP, #0x98+var_50
1867C2:  ADD.W           R9, SP, #0x98+var_80
1867C6:  ADD.W           R10, SP, #0x98+var_2C
1867CA:  ADDS            R0, R5, #4
1867CC:  STR             R0, [SP,#0x98+var_8C]
1867CE:  ADD.W           R0, R8, #4
1867D2:  STR             R0, [SP,#0x98+var_88]
1867D4:  STR             R4, [SP,#0x98+var_84]
1867D6:  MOV             R0, R9
1867D8:  MOV             R1, R6
1867DA:  MOV             R2, R10
1867DC:  MOV             R3, R4
1867DE:  STR.W           R11, [SP,#0x98+var_98]
1867E2:  BL              sub_186116
1867E6:  MOV             R0, R8; int
1867E8:  MOV             R1, R5; int
1867EA:  MOV             R2, R9; int
1867EC:  MOV             R3, R8
1867EE:  BL              sub_185F4A
1867F2:  LDR             R0, [SP,#0x98+var_70]
1867F4:  CBNZ            R0, loc_186826
1867F6:  LDR             R3, [SP,#0x98+var_88]
1867F8:  MOVS            R1, #0
1867FA:  MOV             R0, R1
1867FC:  CMP             R1, #3
1867FE:  BEQ             loc_18680A
186800:  LDR.W           R2, [R3,R0,LSL#2]
186804:  ADDS            R1, R0, #1
186806:  CMP             R2, #0
186808:  BEQ             loc_1867FA
18680A:  LDR             R4, [SP,#0x98+var_84]
18680C:  ADD             R6, SP, #0x98+var_40
18680E:  ADD.W           R11, SP, #0x98+var_50
186812:  ADD.W           R8, SP, #0x98+var_70
186816:  ADD             R5, SP, #0x98+var_60
186818:  ADD.W           R9, SP, #0x98+var_80
18681C:  ADD.W           R10, SP, #0x98+var_2C
186820:  CMP             R0, #2
186822:  BHI.W           loc_1869A8
186826:  MOV             R0, R9
186828:  MOV             R1, R11
18682A:  MOV             R2, R6
18682C:  MOV             R3, R4
18682E:  STR.W           R10, [SP,#0x98+var_98]
186832:  BL              sub_186116
186836:  MOV             R0, R5; int
186838:  MOV             R1, R8; int
18683A:  MOV             R2, R9; int
18683C:  MOV             R3, R5
18683E:  BL              sub_185F4A
186842:  LDR             R0, [SP,#0x98+var_60]
186844:  CBNZ            R0, loc_186876
186846:  LDR             R3, [SP,#0x98+var_8C]
186848:  MOVS            R1, #0
18684A:  MOV             R0, R1
18684C:  CMP             R1, #3
18684E:  BEQ             loc_18685A
186850:  LDR.W           R2, [R3,R0,LSL#2]
186854:  ADDS            R1, R0, #1
186856:  CMP             R2, #0
186858:  BEQ             loc_18684A
18685A:  LDR             R4, [SP,#0x98+var_84]
18685C:  ADD             R6, SP, #0x98+var_40
18685E:  ADD.W           R11, SP, #0x98+var_50
186862:  ADD.W           R8, SP, #0x98+var_70
186866:  ADD             R5, SP, #0x98+var_60
186868:  ADD.W           R9, SP, #0x98+var_80
18686C:  ADD.W           R10, SP, #0x98+var_2C
186870:  CMP             R0, #2
186872:  BHI.W           loc_1869AC
186876:  MOV             R0, R9
186878:  MOV             R1, R10
18687A:  MOV             R2, R11
18687C:  MOV             R3, R4
18687E:  STR             R6, [SP,#0x98+var_98]
186880:  BL              sub_186116
186884:  MOV             R0, R8; int
186886:  MOV             R1, R5; int
186888:  MOV             R2, R9; int
18688A:  MOV             R3, R8
18688C:  BL              sub_185F4A
186890:  LDR             R0, [SP,#0x98+var_70]
186892:  CBNZ            R0, loc_1868C2
186894:  LDR             R3, [SP,#0x98+var_88]
186896:  MOVS            R1, #0
186898:  MOV             R0, R1
18689A:  CMP             R1, #3
18689C:  BEQ             loc_1868A8
18689E:  LDR.W           R2, [R3,R0,LSL#2]
1868A2:  ADDS            R1, R0, #1
1868A4:  CMP             R2, #0
1868A6:  BEQ             loc_186898
1868A8:  LDR             R4, [SP,#0x98+var_84]
1868AA:  ADD             R6, SP, #0x98+var_40
1868AC:  ADD.W           R11, SP, #0x98+var_50
1868B0:  ADD.W           R8, SP, #0x98+var_70
1868B4:  ADD             R5, SP, #0x98+var_60
1868B6:  ADD.W           R9, SP, #0x98+var_80
1868BA:  ADD.W           R10, SP, #0x98+var_2C
1868BE:  CMP             R0, #2
1868C0:  BHI             loc_1869A4
1868C2:  MOV             R0, R9
1868C4:  MOV             R1, R6
1868C6:  MOV             R2, R10
1868C8:  MOV             R3, R4
1868CA:  STR.W           R11, [SP,#0x98+var_98]
1868CE:  BL              sub_186116
1868D2:  MOV             R0, R5; int
1868D4:  MOV             R1, R8; int
1868D6:  MOV             R2, R9; int
1868D8:  MOV             R3, R5
1868DA:  BL              sub_185F4A
1868DE:  LDR             R0, [SP,#0x98+var_60]
1868E0:  CBNZ            R0, loc_186910
1868E2:  LDR             R3, [SP,#0x98+var_8C]
1868E4:  MOVS            R1, #0
1868E6:  MOV             R0, R1
1868E8:  CMP             R1, #3
1868EA:  BEQ             loc_1868F6
1868EC:  LDR.W           R2, [R3,R0,LSL#2]
1868F0:  ADDS            R1, R0, #1
1868F2:  CMP             R2, #0
1868F4:  BEQ             loc_1868E6
1868F6:  LDR             R4, [SP,#0x98+var_84]
1868F8:  ADD             R6, SP, #0x98+var_40
1868FA:  ADD.W           R11, SP, #0x98+var_50
1868FE:  ADD.W           R8, SP, #0x98+var_70
186902:  ADD             R5, SP, #0x98+var_60
186904:  ADD.W           R9, SP, #0x98+var_80
186908:  ADD.W           R10, SP, #0x98+var_2C
18690C:  CMP             R0, #2
18690E:  BHI             loc_1869A8
186910:  MOV             R0, R9
186912:  MOV             R1, R11
186914:  MOV             R2, R6
186916:  MOV             R3, R4
186918:  STR.W           R10, [SP,#0x98+var_98]
18691C:  BL              sub_186116
186920:  MOV             R0, R8; int
186922:  MOV             R1, R5; int
186924:  MOV             R2, R9; int
186926:  MOV             R3, R8
186928:  BL              sub_185F4A
18692C:  LDR             R0, [SP,#0x98+var_70]
18692E:  CBNZ            R0, loc_18695E
186930:  LDR             R3, [SP,#0x98+var_88]
186932:  MOVS            R1, #0
186934:  MOV             R0, R1
186936:  CMP             R1, #3
186938:  BEQ             loc_186944
18693A:  LDR.W           R2, [R3,R0,LSL#2]
18693E:  ADDS            R1, R0, #1
186940:  CMP             R2, #0
186942:  BEQ             loc_186934
186944:  LDR             R4, [SP,#0x98+var_84]
186946:  ADD             R6, SP, #0x98+var_40
186948:  ADD.W           R11, SP, #0x98+var_50
18694C:  ADD.W           R8, SP, #0x98+var_70
186950:  ADD             R5, SP, #0x98+var_60
186952:  ADD.W           R9, SP, #0x98+var_80
186956:  ADD.W           R10, SP, #0x98+var_2C
18695A:  CMP             R0, #2
18695C:  BHI             loc_1869AC
18695E:  MOV             R0, R9
186960:  MOV             R1, R10
186962:  MOV             R2, R11
186964:  MOV             R3, R4
186966:  STR             R6, [SP,#0x98+var_98]
186968:  BL              sub_186116
18696C:  MOV             R0, R5; int
18696E:  MOV             R1, R8; int
186970:  MOV             R2, R9; int
186972:  MOV             R3, R5
186974:  BL              sub_185F4A
186978:  LDR             R0, [SP,#0x98+var_60]
18697A:  CMP             R0, #0
18697C:  BNE.W           loc_1867D6
186980:  LDR             R3, [SP,#0x98+var_8C]
186982:  MOVS            R1, #0
186984:  MOV             R0, R1
186986:  CMP             R1, #3
186988:  BEQ             loc_186994
18698A:  LDR.W           R2, [R3,R0,LSL#2]
18698E:  ADDS            R1, R0, #1
186990:  CMP             R2, #0
186992:  BEQ             loc_186984
186994:  LDR             R4, [SP,#0x98+var_84]
186996:  ADD             R6, SP, #0x98+var_40
186998:  ADD.W           R8, SP, #0x98+var_70
18699C:  ADD             R5, SP, #0x98+var_60
18699E:  CMP             R0, #3
1869A0:  BCC.W           loc_1867D6
1869A4:  ADD             R0, SP, #0x98+var_40
1869A6:  B               loc_1869AE
1869A8:  ADD             R0, SP, #0x98+var_50
1869AA:  B               loc_1869AE
1869AC:  ADD             R0, SP, #0x98+var_2C
1869AE:  LDR.W           R10, [SP,#0x98+var_90]
1869B2:  B               loc_1869BA
1869B4:  ADD             R0, SP, #0x98+var_2C
1869B6:  B               loc_1869BA
1869B8:  ADD             R0, SP, #0x98+var_40
1869BA:  VLD1.32         {D16-D17}, [R0]
1869BE:  VST1.32         {D16-D17}, [R10]
1869C2:  ADD             SP, SP, #0x7C ; '|'
1869C4:  POP.W           {R8-R11}
1869C8:  POP             {R4-R7,PC}
