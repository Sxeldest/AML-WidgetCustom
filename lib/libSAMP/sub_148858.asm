; =========================================================
; Game Engine Function: sub_148858
; Address            : 0x148858 - 0x14898C
; =========================================================

148858:  PUSH            {R4-R7,LR}
14885A:  ADD             R7, SP, #0xC
14885C:  PUSH.W          {R8-R11}
148860:  SUB             SP, SP, #0x144
148862:  MOV             R11, R0
148864:  BL              sub_1489AC
148868:  MOVW            R0, #0xC005
14886C:  MOVW            R6, #0xF008
148870:  ADD             R0, R11
148872:  STR             R0, [SP,#0x160+var_140]
148874:  MOVW            R0, #0x8004
148878:  ADD.W           R4, R11, R0
14887C:  LDR             R0, =(unk_B9550 - 0x14888C)
14887E:  MOV.W           R5, #0x4000
148882:  MOV.W           R8, #0
148886:  STR             R4, [SP,#0x160+var_13C]
148888:  ADD             R0, PC; unk_B9550
14888A:  STR             R0, [SP,#0x160+var_138]
14888C:  ADD.W           R0, R11, R8,LSL#2
148890:  LDR             R1, [R0,#4]
148892:  CMP             R1, #0
148894:  BEQ             loc_148976
148896:  ADD.W           R9, R8, R8,LSL#1
14889A:  ADD.W           R10, R4, R9
14889E:  LDRB.W          R0, [R10,R5]
1488A2:  CBNZ            R0, loc_1488AC
1488A4:  LDR.W           R0, [R11,R6]
1488A8:  CMP             R0, #0xE
1488AA:  BNE             loc_148968
1488AC:  LDR             R0, [SP,#0x160+var_138]
1488AE:  BL              sub_107188
1488B2:  CMP             R0, #0
1488B4:  BEQ             loc_148976
1488B6:  ADD             R4, SP, #0x160+var_134
1488B8:  ADD.W           R5, R10, #0x4000
1488BC:  MOV             R0, R4
1488BE:  BL              sub_17D4A8
1488C2:  LDRB            R0, [R5]
1488C4:  CBZ             R0, loc_148914
1488C6:  LDR             R0, [SP,#0x160+var_140]
1488C8:  LDRH.W          R0, [R0,R9]
1488CC:  STRH.W          R0, [SP,#0x160+var_20]
1488D0:  ADD             R1, SP, #0x160+var_20
1488D2:  MOV             R0, R4
1488D4:  MOVS            R2, #0x10
1488D6:  MOVS            R3, #1
1488D8:  BL              sub_17D628
1488DC:  LDR             R0, =(off_23496C - 0x1488E2)
1488DE:  ADD             R0, PC; off_23496C
1488E0:  LDR             R0, [R0]; dword_23DEF4
1488E2:  LDR             R0, [R0]
1488E4:  LDR.W           R0, [R0,#0x210]
1488E8:  LDR             R1, =(off_234D08 - 0x1488EE)
1488EA:  ADD             R1, PC; off_234D08
1488EC:  LDR             R2, [R0]
1488EE:  LDR             R1, [R1]; unk_23C7B8
1488F0:  LDR             R5, [R2,#0x6C]
1488F2:  MOVS            R2, #0xA
1488F4:  MOV.W           R3, #0xFFFFFFFF
1488F8:  STR             R2, [SP,#0x160+var_160]
1488FA:  MOVS            R2, #0
1488FC:  STR             R3, [SP,#0x160+var_154]
1488FE:  MOVW            R3, #0xFFFF
148902:  STRD.W          R3, R3, [SP,#0x160+var_150]
148906:  MOVS            R3, #1
148908:  STRD.W          R2, R2, [SP,#0x160+var_15C]
14890C:  STR             R2, [SP,#0x160+var_148]
14890E:  MOV             R2, R4
148910:  BLX             R5
148912:  B               loc_14895A
148914:  STR.W           R8, [SP,#0x160+var_20]
148918:  ADD             R1, SP, #0x160+var_20
14891A:  MOV             R0, R4
14891C:  MOVS            R2, #0x20 ; ' '
14891E:  MOVS            R3, #1
148920:  BL              sub_17D628
148924:  LDR             R0, =(off_23496C - 0x14892A)
148926:  ADD             R0, PC; off_23496C
148928:  LDR             R0, [R0]; dword_23DEF4
14892A:  LDR             R0, [R0]
14892C:  LDR.W           R0, [R0,#0x210]
148930:  LDR             R1, =(off_234D08 - 0x148936)
148932:  ADD             R1, PC; off_234D08
148934:  LDR             R2, [R0]
148936:  LDR             R1, [R1]; unk_23C7B8
148938:  LDR             R5, [R2,#0x6C]
14893A:  MOVS            R2, #0xA
14893C:  MOV.W           R3, #0xFFFFFFFF
148940:  STR             R2, [SP,#0x160+var_160]
148942:  MOVS            R2, #0
148944:  STR             R3, [SP,#0x160+var_154]
148946:  MOVW            R3, #0xFFFF
14894A:  STRD.W          R3, R3, [SP,#0x160+var_150]
14894E:  MOVS            R3, #1
148950:  STRD.W          R2, R2, [SP,#0x160+var_15C]
148954:  STR             R2, [SP,#0x160+var_148]
148956:  MOV             R2, R4
148958:  BLX             R5
14895A:  MOV             R0, R4
14895C:  BL              sub_17D542
148960:  MOV.W           R5, #0x4000
148964:  LDR             R4, [SP,#0x160+var_13C]
148966:  B               loc_148976
148968:  LDR.W           R0, [R4,R8,LSL#2]
14896C:  CMP             R0, #1
14896E:  ITT GE
148970:  SUBGE           R0, #1
148972:  STRGE.W         R0, [R4,R8,LSL#2]
148976:  ADD.W           R8, R8, #1
14897A:  ADDS            R6, #0x14
14897C:  CMP.W           R8, #0x1000
148980:  BNE.W           loc_14888C
148984:  ADD             SP, SP, #0x144
148986:  POP.W           {R8-R11}
14898A:  POP             {R4-R7,PC}
