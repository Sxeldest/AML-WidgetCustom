; =========================================================
; Game Engine Function: sub_187734
; Address            : 0x187734 - 0x1879D6
; =========================================================

187734:  PUSH            {R4-R7,LR}
187736:  ADD             R7, SP, #0xC
187738:  PUSH.W          {R8-R11}
18773C:  SUB             SP, SP, #4
18773E:  MOV             R11, R0
187740:  ADD.W           R10, R0, #0x6A0
187744:  LDR.W           R0, [R0,#0xAC]
187748:  ADD.W           R8, R11, #0xA8
18774C:  CBZ             R0, loc_1877A8
18774E:  MOVS            R5, #0
187750:  LDR.W           R1, [R8]
187754:  LDR.W           R4, [R1,R5,LSL#2]
187758:  LDR             R0, [R4,#0xC]
18775A:  CBZ             R0, loc_187790
18775C:  MOVS            R6, #0
18775E:  LDR             R0, [R4,#8]
187760:  LDR.W           R0, [R0,R6,LSL#2]
187764:  LDR             R0, [R0,#0x34]; void *
187766:  CBZ             R0, loc_187770
187768:  BLX             j__ZdaPv; operator delete[](void *)
18776C:  LDR.W           R1, [R8]
187770:  LDR.W           R0, [R1,R5,LSL#2]
187774:  LDR             R0, [R0,#8]
187776:  LDR.W           R1, [R0,R6,LSL#2]
18777A:  MOV             R0, R10
18777C:  BL              sub_17E56C
187780:  LDR.W           R1, [R8]
187784:  ADDS            R6, #1
187786:  LDR.W           R4, [R1,R5,LSL#2]
18778A:  LDR             R0, [R4,#0xC]
18778C:  CMP             R6, R0
18778E:  BCC             loc_18775E
187790:  ADD.W           R0, R4, #8
187794:  BL              sub_18A128
187798:  MOV             R0, R4; void *
18779A:  BLX             j__ZdlPv; operator delete(void *)
18779E:  LDR.W           R0, [R11,#0xAC]
1877A2:  ADDS            R5, #1
1877A4:  CMP             R5, R0
1877A6:  BCC             loc_187750
1877A8:  MOV             R0, R8
1877AA:  MOVS            R1, #0
1877AC:  MOVS            R4, #0
1877AE:  BL              sub_18A274
1877B2:  LDRD.W          R1, R2, [R11,#0x10]
1877B6:  ADD.W           R6, R11, #0xC
1877BA:  LDR.W           R0, [R11,#0x18]
1877BE:  CMP             R2, R1
1877C0:  SUB.W           R2, R2, R1
1877C4:  IT CC
1877C6:  NEGCC           R4, R0
1877C8:  CMP             R2, R4
1877CA:  BEQ             loc_187812
1877CC:  ADDS            R1, #1
1877CE:  LDR.W           R2, [R11,#0xC]
1877D2:  SUBS            R3, R1, R0
1877D4:  IT NE
1877D6:  MOVNE           R3, R1
1877D8:  STR.W           R3, [R11,#0x10]
1877DC:  CMP             R3, #0
1877DE:  IT EQ
1877E0:  MOVEQ           R3, R0
1877E2:  ADD.W           R0, R2, R3,LSL#2
1877E6:  LDR.W           R4, [R0,#-4]
1877EA:  LDR             R0, [R4,#0x34]; void *
1877EC:  CBZ             R0, loc_1877F2
1877EE:  BLX             j__ZdaPv; operator delete[](void *)
1877F2:  MOV             R0, R10
1877F4:  MOV             R1, R4
1877F6:  BL              sub_17E56C
1877FA:  LDRD.W          R1, R2, [R11,#0x10]
1877FE:  MOVS            R3, #0
187800:  LDR.W           R0, [R11,#0x18]
187804:  CMP             R2, R1
187806:  SUB.W           R2, R2, R1
18780A:  IT CC
18780C:  NEGCC           R3, R0
18780E:  CMP             R2, R3
187810:  BNE             loc_1877CC
187812:  MOV             R0, R6
187814:  MOVS            R1, #0x20 ; ' '
187816:  BL              sub_17E3FA
18781A:  LDR.W           R0, [R11,#4]
18781E:  CBZ             R0, loc_187872
187820:  MOVS            R5, #0
187822:  LDR.W           R1, [R11]
187826:  LDR.W           R6, [R1,R5,LSL#2]
18782A:  CBZ             R6, loc_18786C
18782C:  LDR             R0, [R6]
18782E:  CBZ             R0, loc_187856
187830:  LDR.W           R0, [R1,R5,LSL#2]
187834:  LDR             R1, [R0,#8]
187836:  LDR             R4, [R1]
187838:  BL              sub_18A29A
18783C:  LDR             R0, [R4,#0x34]; void *
18783E:  CBZ             R0, loc_187844
187840:  BLX             j__ZdaPv; operator delete[](void *)
187844:  MOV             R0, R10
187846:  MOV             R1, R4
187848:  BL              sub_17E56C
18784C:  LDR             R0, [R6]
18784E:  CBZ             R0, loc_187856
187850:  LDR.W           R1, [R11]
187854:  B               loc_187830
187856:  MOV             R0, R6
187858:  BL              sub_18A2DA
18785C:  MOV             R0, R6
18785E:  BL              sub_18A2DA
187862:  MOV             R0, R6; void *
187864:  BLX             j__ZdlPv; operator delete(void *)
187868:  LDR.W           R0, [R11,#4]
18786C:  ADDS            R5, #1
18786E:  CMP             R5, R0
187870:  BCC             loc_187822
187872:  MOV             R0, R11
187874:  MOVS            R1, #0
187876:  MOVS            R4, #0
187878:  BL              sub_1879D6
18787C:  LDR.W           R0, [R11,#0x50]
187880:  CBZ             R0, loc_18788E
187882:  ADD.W           R0, R11, #0x40 ; '@'
187886:  BL              sub_18A30C
18788A:  STRD.W          R4, R4, [R11,#0x50]
18788E:  LDRD.W          R6, R1, [R11,#0x5C]
187892:  ADD.W           R8, R11, #0x58 ; 'X'
187896:  LDR.W           R2, [R11,#0x64]
18789A:  CMP             R1, R6
18789C:  SUB.W           R3, R1, R6
1878A0:  IT CC
1878A2:  NEGCC           R4, R2
1878A4:  CMP             R3, R4
1878A6:  BEQ             loc_1878F4
1878A8:  ADDS            R5, R6, #1
1878AA:  LDR.W           R3, [R11,#0x58]
1878AE:  SUBS            R6, R5, R2
1878B0:  IT NE
1878B2:  MOVNE           R6, R5
1878B4:  MOV             R0, R6
1878B6:  STR.W           R6, [R11,#0x5C]
1878BA:  CMP             R6, #0
1878BC:  IT EQ
1878BE:  MOVEQ           R0, R2
1878C0:  ADD.W           R0, R3, R0,LSL#2
1878C4:  LDR.W           R4, [R0,#-4]
1878C8:  CBZ             R4, loc_1878E2
1878CA:  LDR             R0, [R4,#0x34]; void *
1878CC:  CBZ             R0, loc_1878D2
1878CE:  BLX             j__ZdaPv; operator delete[](void *)
1878D2:  MOV             R0, R10
1878D4:  MOV             R1, R4
1878D6:  BL              sub_17E56C
1878DA:  LDRD.W          R6, R1, [R11,#0x5C]
1878DE:  LDR.W           R2, [R11,#0x64]
1878E2:  CMP             R1, R6
1878E4:  MOV.W           R0, #0
1878E8:  SUB.W           R3, R1, R6
1878EC:  IT CC
1878EE:  NEGCC           R0, R2
1878F0:  CMP             R3, R0
1878F2:  BNE             loc_1878A8
1878F4:  MOV             R0, R8
1878F6:  MOV.W           R1, #0x200
1878FA:  BL              sub_17E3FA
1878FE:  MOV.W           R9, #0
187902:  STR.W           R11, [SP,#0x20+var_20]
187906:  ADD.W           R4, R11, R9,LSL#4
18790A:  MOVS            R3, #0
18790C:  LDR.W           R1, [R4,#0x74]!
187910:  SUB.W           R6, R4, #0xC
187914:  MOV             R5, R4
187916:  MOV             R11, R4
187918:  LDR.W           R0, [R5,#-8]!
18791C:  LDR.W           R2, [R11,#-4]!
187920:  CMP             R2, R0
187922:  SUB.W           R2, R2, R0
187926:  IT CC
187928:  NEGCC           R3, R1
18792A:  CMP             R2, R3
18792C:  BEQ             loc_18797C
18792E:  MOV.W           R8, #0
187932:  ADD.W           R3, R0, R8
187936:  LDR             R2, [R6]
187938:  CMP             R3, R1
18793A:  IT CS
18793C:  SUBCS           R0, R0, R1
18793E:  ADD             R0, R8
187940:  LDR.W           R0, [R2,R0,LSL#2]
187944:  LDR             R0, [R0,#0x34]; void *
187946:  CBZ             R0, loc_187956
187948:  BLX             j__ZdaPv; operator delete[](void *)
18794C:  LDR             R0, [R5]
18794E:  LDR             R2, [R6]
187950:  LDR             R1, [R4]
187952:  ADD.W           R3, R8, R0
187956:  SUBS            R0, R3, R1
187958:  IT CC
18795A:  MOVCC           R0, R3
18795C:  LDR.W           R1, [R2,R0,LSL#2]
187960:  MOV             R0, R10
187962:  BL              sub_17E56C
187966:  LDR             R0, [R5]
187968:  ADD.W           R8, R8, #1
18796C:  LDR.W           R2, [R11]
187970:  LDR             R1, [R4]
187972:  SUBS            R2, R2, R0
187974:  IT CC
187976:  ADDCC           R2, R1
187978:  CMP             R8, R2
18797A:  BCC             loc_187932
18797C:  MOV             R0, R6
18797E:  MOVS            R1, #0x20 ; ' '
187980:  BL              sub_17E3FA
187984:  LDR.W           R11, [SP,#0x20+var_20]
187988:  ADD.W           R9, R9, #1
18798C:  CMP.W           R9, #4
187990:  BNE             loc_187906
187992:  LDR.W           R1, [R11,#0x688]
187996:  ADDW            R6, R11, #0x684
18799A:  CBZ             R1, loc_1879B4
18799C:  MOVS            R4, #0
18799E:  LDR             R0, [R6]
1879A0:  LDR.W           R0, [R0,R4,LSL#2]; void *
1879A4:  CBZ             R0, loc_1879AE
1879A6:  BLX             j__ZdlPv; operator delete(void *)
1879AA:  LDR.W           R1, [R11,#0x688]
1879AE:  ADDS            R4, #1
1879B0:  CMP             R4, R1
1879B2:  BCC             loc_18799E
1879B4:  MOV             R0, R6
1879B6:  MOVS            R1, #0
1879B8:  BL              sub_1879FC
1879BC:  MOV             R0, R10
1879BE:  BL              sub_17E50E
1879C2:  ADD.W           R0, R11, #0x1C
1879C6:  MOVS            R1, #0
1879C8:  ADD             SP, SP, #4
1879CA:  POP.W           {R8-R11}
1879CE:  POP.W           {R4-R7,LR}
1879D2:  B.W             sub_18A188
