; =========================================================
; Game Engine Function: sub_1457B4
; Address            : 0x1457B4 - 0x145998
; =========================================================

1457B4:  PUSH            {R4-R7,LR}
1457B6:  ADD             R7, SP, #0xC
1457B8:  PUSH.W          {R8-R10}
1457BC:  SUB             SP, SP, #0x158
1457BE:  LDR             R1, =(off_23496C - 0x1457C4)
1457C0:  ADD             R1, PC; off_23496C
1457C2:  LDR             R6, [R1]; dword_23DEF4
1457C4:  LDR             R1, [R6]
1457C6:  LDR.W           R1, [R1,#0x3B0]
1457CA:  LDR             R4, [R1,#4]
1457CC:  CMP             R4, #0
1457CE:  BEQ.W           loc_145990
1457D2:  LDRD.W          R1, R0, [R0]; src
1457D6:  MOVS            R3, #0
1457D8:  ASRS            R2, R0, #0x1F
1457DA:  ADD.W           R0, R0, R2,LSR#29
1457DE:  MOVS            R2, #1
1457E0:  ADD.W           R2, R2, R0,ASR#3; size
1457E4:  ADD             R0, SP, #0x170+var_130; int
1457E6:  BL              sub_17D4F2
1457EA:  SUB.W           R1, R7, #-var_1A; int
1457EE:  MOVS            R2, #0x10
1457F0:  MOVS            R3, #1
1457F2:  BL              sub_17D786
1457F6:  LDRH.W          R5, [R7,#var_1A]
1457FA:  LSRS            R0, R5, #4
1457FC:  CMP             R0, #0x7C ; '|'
1457FE:  BHI.W           loc_14598A
145802:  MOV             R0, R4
145804:  MOV             R1, R5
145806:  BL              sub_F2396
14580A:  CMP             R0, #0
14580C:  BEQ.W           loc_14598A
145810:  LDR.W           R10, [R4,R5,LSL#2]
145814:  CMP.W           R10, #0
145818:  BEQ.W           loc_14598A
14581C:  LDR             R0, [R6]
14581E:  LDR.W           R0, [R0,#0x3B0]
145822:  LDR.W           R9, [R0]
145826:  CMP.W           R9, #0
14582A:  BEQ.W           loc_14598A
14582E:  BL              sub_F74A4
145832:  CBNZ            R0, loc_145840
145834:  BL              sub_F541C
145838:  CBNZ            R0, loc_145840
14583A:  BL              sub_F4270
14583E:  CBZ             R0, loc_145858
145840:  LDR.W           R0, [R10,#0xC]
145844:  BL              sub_F6190
145848:  LDR.W           R0, [R10,#0xC]
14584C:  BL              sub_F630C
145850:  LDR.W           R0, [R10,#0xC]
145854:  BL              sub_F6BA4
145858:  LDR             R0, =(off_234970 - 0x145866)
14585A:  MOVW            R1, #0x13BC
14585E:  LDR.W           R8, [R9,R1]
145862:  ADD             R0, PC; off_234970
145864:  LDR             R0, [R0]; dword_23DEF0
145866:  LDR             R0, [R0]
145868:  BL              sub_E35A0
14586C:  MOV             R6, R0
14586E:  BL              sub_104108
145872:  CBZ             R0, loc_1458C8
145874:  MOV             R0, R6
145876:  BL              sub_104326
14587A:  MOVW            R12, #0xFFFF
14587E:  CBZ             R0, loc_1458AE
145880:  MOVW            R2, #0xEA60
145884:  ADDS            R3, R4, R2
145886:  LDRD.W          R2, R3, [R3]
14588A:  CMP             R2, R3
14588C:  BEQ             loc_1458A6
14588E:  MOV.W           R5, #0x1F40
145892:  LDR             R1, [R2]
145894:  ADD.W           R1, R4, R1,LSL#2
145898:  LDR             R1, [R1,R5]
14589A:  CMP             R1, R0
14589C:  BEQ             loc_1458A6
14589E:  ADDS            R2, #4
1458A0:  CMP             R2, R3
1458A2:  BNE             loc_145892
1458A4:  B               loc_1458AE
1458A6:  CMP             R2, R3
1458A8:  IT NE
1458AA:  LDRHNE.W        R12, [R2]
1458AE:  LDRH.W          R0, [R7,#var_1A]
1458B2:  CMP             R12, R0
1458B4:  BNE             loc_1458C8
1458B6:  MOV             R1, SP
1458B8:  MOV             R0, R6
1458BA:  BL              sub_F8910
1458BE:  ADD             R3, SP, #0x170+var_140
1458C0:  LDM             R3, {R1-R3}
1458C2:  MOV             R0, R6
1458C4:  BL              sub_104098
1458C8:  CMP.W           R8, #0
1458CC:  BEQ             loc_1458DC
1458CE:  LDR.W           R0, [R8,#0xC]
1458D2:  CMP             R0, R10
1458D4:  BNE             loc_1458DC
1458D6:  MOV             R0, R8
1458D8:  BL              sub_141418
1458DC:  MOVW            R8, #0xF050
1458E0:  ADDW            R6, R9, #0xFB4
1458E4:  MOVS            R5, #0
1458E6:  MOVT            R8, #0xFFFF
1458EA:  LDRB            R0, [R6,R5]
1458EC:  CBZ             R0, loc_145910
1458EE:  ADD.W           R0, R6, R5,LSL#2
1458F2:  LDR.W           R0, [R0,R8]
1458F6:  CBZ             R0, loc_145910
1458F8:  LDR             R0, [R0]
1458FA:  CBZ             R0, loc_145910
1458FC:  LDR.W           R1, [R0,#0x128]
145900:  CBZ             R1, loc_145910
145902:  LDRB            R1, [R0,#0x19]
145904:  CBZ             R1, loc_145910
145906:  LDR             R1, [R0,#4]
145908:  CMP             R1, R10
14590A:  BNE             loc_145910
14590C:  BL              sub_14A8B4
145910:  ADDS            R5, #1
145912:  CMP.W           R5, #0x3EC
145916:  BNE             loc_1458EA
145918:  MOVS            R5, #0
14591A:  UXTH            R1, R5
14591C:  MOV             R0, R4
14591E:  BL              sub_F2396
145922:  CBZ             R0, loc_14593E
145924:  LDR.W           R6, [R4,R5,LSL#2]
145928:  CBZ             R6, loc_14593E
14592A:  LDR             R0, [R6,#0x10]
14592C:  CMP             R0, R10
14592E:  BNE             loc_14593E
145930:  MOV             R0, R6
145932:  BL              sub_1099D0
145936:  MOV             R0, R6
145938:  MOVS            R1, #0
14593A:  BL              sub_109C00
14593E:  ADDS            R5, #1
145940:  CMP.W           R5, #0x7D0
145944:  BNE             loc_14591A
145946:  MOV             R0, R10
145948:  BL              sub_F8A2C
14594C:  LDRH.W          R1, [R7,#var_1A]
145950:  MOV             R5, R0
145952:  MOV             R0, R4
145954:  BL              sub_14FEB6
145958:  SUBW            R0, R5, #0x219
14595C:  CMP             R0, #1
14595E:  BHI             loc_14598A
145960:  LDRH.W          R0, [R7,#var_1A]
145964:  ADDS            R0, #1
145966:  UXTH            R1, R0
145968:  MOV             R0, R4
14596A:  BL              sub_14FEB6
14596E:  LDRH.W          R0, [R7,#var_1A]
145972:  ADDS            R0, #2
145974:  UXTH            R1, R0
145976:  MOV             R0, R4
145978:  BL              sub_14FEB6
14597C:  LDRH.W          R0, [R7,#var_1A]
145980:  ADDS            R0, #3
145982:  UXTH            R1, R0
145984:  MOV             R0, R4
145986:  BL              sub_14FEB6
14598A:  ADD             R0, SP, #0x170+var_130
14598C:  BL              sub_17D542
145990:  ADD             SP, SP, #0x158
145992:  POP.W           {R8-R10}
145996:  POP             {R4-R7,PC}
