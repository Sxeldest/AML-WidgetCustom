; =========================================================
; Game Engine Function: sub_185718
; Address            : 0x185718 - 0x185988
; =========================================================

185718:  PUSH            {R4-R7,LR}
18571A:  ADD             R7, SP, #0xC
18571C:  PUSH.W          {R8-R11}
185720:  SUB             SP, SP, #0xDC
185722:  MOV             R8, R0
185724:  ADD             R0, SP, #0xF8+var_80
185726:  MOV             R4, R1
185728:  VMOV.I32        Q8, #0
18572C:  ADDS            R0, #4
18572E:  MOVS            R1, #0xC
185730:  VST1.32         {D16-D17}, [R0],R1
185734:  ADD             R6, SP, #0xF8+var_C0
185736:  ADD.W           R9, SP, #0xF8+var_E0
18573A:  MOV             R1, R8; int
18573C:  VST1.32         {D16-D17}, [R0]
185740:  MOVS            R0, #1
185742:  MOV             R3, R6
185744:  STR             R2, [SP,#0xF8+var_F0]
185746:  MOV             R2, R9; int
185748:  STR             R0, [SP,#0xF8+var_80]
18574A:  MOV             R0, R4; int
18574C:  BL              sub_185988
185750:  ADD             R0, SP, #0xF8+var_40
185752:  STR             R4, [SP,#0xF8+var_E4]
185754:  VLD1.32         {D16-D17}, [R4]!
185758:  MOV             R1, R0
18575A:  VLD1.32         {D18-D19}, [R4]
18575E:  VST1.64         {D16-D17}, [R1]!
185762:  VST1.64         {D18-D19}, [R1]
185766:  MOV             R1, R9
185768:  BL              sub_185174
18576C:  ADD             R5, SP, #0xF8+var_A0
18576E:  VLD1.32         {D16-D17}, [R8]!
185772:  MOV             R0, R5
185774:  VLD1.32         {D18-D19}, [R8]
185778:  VST1.64         {D16-D17}, [R0]!
18577C:  VST1.64         {D18-D19}, [R0]
185780:  ADDS            R0, R6, #4
185782:  STR             R0, [SP,#0xF8+var_EC]
185784:  ADDS            R0, R5, #4
185786:  STR             R0, [SP,#0xF8+var_E8]
185788:  MOV             R0, R5; int
18578A:  MOV             R1, R6; int
18578C:  MOV             R2, R9; int
18578E:  MOV             R3, R5
185790:  BL              sub_185988
185794:  LDR             R0, [SP,#0xF8+var_A0]
185796:  ADD.W           R8, SP, #0xF8+var_80
18579A:  LDR             R4, [SP,#0xF8+var_E4]
18579C:  ADD.W           R11, SP, #0xF8+var_40
1857A0:  ADD.W           R10, SP, #0xF8+var_60
1857A4:  CBNZ            R0, loc_1857C8
1857A6:  LDR             R3, [SP,#0xF8+var_E8]
1857A8:  MOVS            R1, #0
1857AA:  MOV             R0, R1
1857AC:  CMP             R1, #7
1857AE:  BEQ             loc_1857BA
1857B0:  LDR.W           R2, [R3,R0,LSL#2]
1857B4:  ADDS            R1, R0, #1
1857B6:  CMP             R2, #0
1857B8:  BEQ             loc_1857AA
1857BA:  ADD             R6, SP, #0xF8+var_C0
1857BC:  ADD             R5, SP, #0xF8+var_A0
1857BE:  ADD.W           R9, SP, #0xF8+var_E0
1857C2:  CMP             R0, #6
1857C4:  BHI.W           loc_185964
1857C8:  MOV             R0, R11
1857CA:  MOV             R1, R9
1857CC:  MOV             R2, R8
1857CE:  MOV             R3, R4
1857D0:  STR.W           R10, [SP,#0xF8+var_F8]
1857D4:  BL              sub_185B6C
1857D8:  MOV             R0, R6; int
1857DA:  MOV             R1, R5; int
1857DC:  MOV             R2, R9; int
1857DE:  MOV             R3, R6
1857E0:  BL              sub_185988
1857E4:  LDR             R0, [SP,#0xF8+var_C0]
1857E6:  CBNZ            R0, loc_185818
1857E8:  LDR             R3, [SP,#0xF8+var_EC]
1857EA:  MOVS            R1, #0
1857EC:  MOV             R0, R1
1857EE:  CMP             R1, #7
1857F0:  BEQ             loc_1857FC
1857F2:  LDR.W           R2, [R3,R0,LSL#2]
1857F6:  ADDS            R1, R0, #1
1857F8:  CMP             R2, #0
1857FA:  BEQ             loc_1857EC
1857FC:  LDR             R4, [SP,#0xF8+var_E4]
1857FE:  ADD.W           R8, SP, #0xF8+var_80
185802:  ADD.W           R11, SP, #0xF8+var_40
185806:  ADD             R6, SP, #0xF8+var_C0
185808:  ADD             R5, SP, #0xF8+var_A0
18580A:  ADD.W           R9, SP, #0xF8+var_E0
18580E:  ADD.W           R10, SP, #0xF8+var_60
185812:  CMP             R0, #6
185814:  BHI.W           loc_185968
185818:  MOV             R0, R10
18581A:  MOV             R1, R9
18581C:  MOV             R2, R11
18581E:  MOV             R3, R4
185820:  STR.W           R8, [SP,#0xF8+var_F8]
185824:  BL              sub_185B6C
185828:  MOV             R0, R5; int
18582A:  MOV             R1, R6; int
18582C:  MOV             R2, R9; int
18582E:  MOV             R3, R5
185830:  BL              sub_185988
185834:  LDR             R0, [SP,#0xF8+var_A0]
185836:  CBNZ            R0, loc_185868
185838:  LDR             R3, [SP,#0xF8+var_E8]
18583A:  MOVS            R1, #0
18583C:  MOV             R0, R1
18583E:  CMP             R1, #7
185840:  BEQ             loc_18584C
185842:  LDR.W           R2, [R3,R0,LSL#2]
185846:  ADDS            R1, R0, #1
185848:  CMP             R2, #0
18584A:  BEQ             loc_18583C
18584C:  LDR             R4, [SP,#0xF8+var_E4]
18584E:  ADD.W           R8, SP, #0xF8+var_80
185852:  ADD.W           R11, SP, #0xF8+var_40
185856:  ADD             R6, SP, #0xF8+var_C0
185858:  ADD             R5, SP, #0xF8+var_A0
18585A:  ADD.W           R9, SP, #0xF8+var_E0
18585E:  ADD.W           R10, SP, #0xF8+var_60
185862:  CMP             R0, #6
185864:  BHI.W           loc_18596C
185868:  MOV             R0, R8
18586A:  MOV             R1, R9
18586C:  MOV             R2, R10
18586E:  MOV             R3, R4
185870:  STR.W           R11, [SP,#0xF8+var_F8]
185874:  BL              sub_185B6C
185878:  MOV             R0, R6; int
18587A:  MOV             R1, R5; int
18587C:  MOV             R2, R9; int
18587E:  MOV             R3, R6
185880:  BL              sub_185988
185884:  LDR             R0, [SP,#0xF8+var_C0]
185886:  CBNZ            R0, loc_1858B6
185888:  LDR             R3, [SP,#0xF8+var_EC]
18588A:  MOVS            R1, #0
18588C:  MOV             R0, R1
18588E:  CMP             R1, #7
185890:  BEQ             loc_18589C
185892:  LDR.W           R2, [R3,R0,LSL#2]
185896:  ADDS            R1, R0, #1
185898:  CMP             R2, #0
18589A:  BEQ             loc_18588C
18589C:  LDR             R4, [SP,#0xF8+var_E4]
18589E:  ADD.W           R8, SP, #0xF8+var_80
1858A2:  ADD.W           R11, SP, #0xF8+var_40
1858A6:  ADD             R6, SP, #0xF8+var_C0
1858A8:  ADD             R5, SP, #0xF8+var_A0
1858AA:  ADD.W           R9, SP, #0xF8+var_E0
1858AE:  ADD.W           R10, SP, #0xF8+var_60
1858B2:  CMP             R0, #6
1858B4:  BHI             loc_185964
1858B6:  MOV             R0, R11
1858B8:  MOV             R1, R9
1858BA:  MOV             R2, R8
1858BC:  MOV             R3, R4
1858BE:  STR.W           R10, [SP,#0xF8+var_F8]
1858C2:  BL              sub_185B6C
1858C6:  MOV             R0, R5; int
1858C8:  MOV             R1, R6; int
1858CA:  MOV             R2, R9; int
1858CC:  MOV             R3, R5
1858CE:  BL              sub_185988
1858D2:  LDR             R0, [SP,#0xF8+var_A0]
1858D4:  CBNZ            R0, loc_185904
1858D6:  LDR             R3, [SP,#0xF8+var_E8]
1858D8:  MOVS            R1, #0
1858DA:  MOV             R0, R1
1858DC:  CMP             R1, #7
1858DE:  BEQ             loc_1858EA
1858E0:  LDR.W           R2, [R3,R0,LSL#2]
1858E4:  ADDS            R1, R0, #1
1858E6:  CMP             R2, #0
1858E8:  BEQ             loc_1858DA
1858EA:  LDR             R4, [SP,#0xF8+var_E4]
1858EC:  ADD.W           R8, SP, #0xF8+var_80
1858F0:  ADD.W           R11, SP, #0xF8+var_40
1858F4:  ADD             R6, SP, #0xF8+var_C0
1858F6:  ADD             R5, SP, #0xF8+var_A0
1858F8:  ADD.W           R9, SP, #0xF8+var_E0
1858FC:  ADD.W           R10, SP, #0xF8+var_60
185900:  CMP             R0, #6
185902:  BHI             loc_185968
185904:  MOV             R0, R10
185906:  MOV             R1, R9
185908:  MOV             R2, R11
18590A:  MOV             R3, R4
18590C:  STR.W           R8, [SP,#0xF8+var_F8]
185910:  BL              sub_185B6C
185914:  MOV             R0, R6; int
185916:  MOV             R1, R5; int
185918:  MOV             R2, R9; int
18591A:  MOV             R3, R6
18591C:  BL              sub_185988
185920:  LDR             R0, [SP,#0xF8+var_C0]
185922:  CBNZ            R0, loc_18594E
185924:  LDR             R3, [SP,#0xF8+var_EC]
185926:  MOVS            R1, #0
185928:  MOV             R0, R1
18592A:  CMP             R1, #7
18592C:  BEQ             loc_185938
18592E:  LDR.W           R2, [R3,R0,LSL#2]
185932:  ADDS            R1, R0, #1
185934:  CMP             R2, #0
185936:  BEQ             loc_185928
185938:  LDR             R4, [SP,#0xF8+var_E4]
18593A:  ADD.W           R8, SP, #0xF8+var_80
18593E:  ADD.W           R11, SP, #0xF8+var_40
185942:  ADD.W           R9, SP, #0xF8+var_E0
185946:  ADD.W           R10, SP, #0xF8+var_60
18594A:  CMP             R0, #6
18594C:  BHI             loc_18596C
18594E:  MOV             R0, R8
185950:  MOV             R1, R9
185952:  MOV             R2, R10
185954:  MOV             R3, R4
185956:  STR.W           R11, [SP,#0xF8+var_F8]
18595A:  BL              sub_185B6C
18595E:  ADD             R6, SP, #0xF8+var_C0
185960:  ADD             R5, SP, #0xF8+var_A0
185962:  B               loc_185788
185964:  ADD             R0, SP, #0xF8+var_40
185966:  B               loc_18596E
185968:  ADD             R0, SP, #0xF8+var_60
18596A:  B               loc_18596E
18596C:  ADD             R0, SP, #0xF8+var_80
18596E:  VLD1.32         {D16-D17}, [R0]!
185972:  LDR             R1, [SP,#0xF8+var_F0]
185974:  VLD1.32         {D18-D19}, [R0]
185978:  VST1.32         {D16-D17}, [R1]!
18597C:  VST1.32         {D18-D19}, [R1]
185980:  ADD             SP, SP, #0xDC
185982:  POP.W           {R8-R11}
185986:  POP             {R4-R7,PC}
