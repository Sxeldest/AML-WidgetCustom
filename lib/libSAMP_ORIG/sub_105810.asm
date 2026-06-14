; =========================================================
; Game Engine Function: sub_105810
; Address            : 0x105810 - 0x1058B0
; =========================================================

105810:  PUSH            {R4,R5,R7,LR}
105812:  ADD             R7, SP, #8
105814:  MOV             R4, R1
105816:  LDR             R1, =(asc_4F675 - 0x105820); "(" ...
105818:  MOV             R5, R0
10581A:  MOV             R0, R4
10581C:  ADD             R1, PC; "("
10581E:  ADDS            R2, R1, #1
105820:  BL              sub_FFB40
105824:  ADD.W           R0, R5, #0x10
105828:  MOV             R1, R4
10582A:  BL              sub_1037E0
10582E:  LDR             R1, =(asc_50037 - 0x105836); ")" ...
105830:  MOV             R0, R4
105832:  ADD             R1, PC; ")"
105834:  ADDS            R2, R1, #1
105836:  BL              sub_FFB40
10583A:  LDR             R0, [R5,#8]
10583C:  CBZ             R0, loc_105846
10583E:  LDR             R1, [R0]
105840:  LDR             R2, [R1,#0x14]
105842:  MOV             R1, R4
105844:  BLX             R2
105846:  LDR             R0, [R5,#0x1C]
105848:  LSLS            R1, R0, #0x1F
10584A:  BEQ             loc_10585A
10584C:  LDR             R1, =(aConst - 0x105854); " const" ...
10584E:  MOV             R0, R4
105850:  ADD             R1, PC; " const"
105852:  ADDS            R2, R1, #6
105854:  BL              sub_FFB40
105858:  LDR             R0, [R5,#0x1C]
10585A:  LSLS            R1, R0, #0x1E
10585C:  BPL             loc_10586E
10585E:  LDR             R1, =(aVolatile - 0x105866); " volatile" ...
105860:  MOV             R0, R4
105862:  ADD             R1, PC; " volatile"
105864:  ADD.W           R2, R1, #9
105868:  BL              sub_FFB40
10586C:  LDR             R0, [R5,#0x1C]
10586E:  LSLS            R0, R0, #0x1D
105870:  BPL             loc_105880
105872:  LDR             R1, =(aRestrict - 0x10587A); " restrict" ...
105874:  MOV             R0, R4
105876:  ADD             R1, PC; " restrict"
105878:  ADD.W           R2, R1, #9
10587C:  BL              sub_FFB40
105880:  LDRB.W          R0, [R5,#0x20]
105884:  CMP             R0, #1
105886:  BEQ             loc_105894
105888:  CMP             R0, #2
10588A:  BNE             loc_1058A0
10588C:  LDR             R1, =(asc_4E22B - 0x105892); " &&" ...
10588E:  ADD             R1, PC; " &&"
105890:  ADDS            R2, R1, #3
105892:  B               loc_10589A
105894:  LDR             R1, =(asc_4EBB0 - 0x10589A); " &" ...
105896:  ADD             R1, PC; " &"
105898:  ADDS            R2, R1, #2
10589A:  MOV             R0, R4
10589C:  BL              sub_FFB40
1058A0:  LDR             R0, [R5,#0x18]
1058A2:  CBZ             R0, locret_1058AE
1058A4:  MOV             R1, R4
1058A6:  POP.W           {R4,R5,R7,LR}
1058AA:  B.W             sub_FE074
1058AE:  POP             {R4,R5,R7,PC}
