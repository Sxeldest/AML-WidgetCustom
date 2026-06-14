; =========================================================
; Game Engine Function: sub_1788DE
; Address            : 0x1788DE - 0x1789B4
; =========================================================

1788DE:  PUSH            {R4-R7,LR}
1788E0:  ADD             R7, SP, #0xC
1788E2:  PUSH.W          {R8}
1788E6:  SUB             SP, SP, #8
1788E8:  MOV             R5, R0
1788EA:  LDR             R0, [R0,#0x14]
1788EC:  CMP             R0, R1
1788EE:  BGE             loc_1789AC
1788F0:  LDR             R0, [R5,#4]
1788F2:  MOV             R4, R1
1788F4:  MOVS            R1, #0xBF800000
1788FA:  CMP             R0, R4
1788FC:  STR             R1, [SP,#0x18+var_14]
1788FE:  BGE             loc_178938
178900:  CMP             R0, #0
178902:  ITTE NE
178904:  ADDNE.W         R1, R0, R0,LSR#31
178908:  ADDNE.W         R6, R0, R1,ASR#1
17890C:  MOVEQ           R6, #8
17890E:  CMP             R6, R4
178910:  IT LE
178912:  MOVLE           R6, R4
178914:  CMP             R0, R6
178916:  BGE             loc_178938
178918:  LSLS            R0, R6, #2
17891A:  BL              sub_1654B0
17891E:  LDR             R1, [R5,#8]; src
178920:  MOV             R8, R0
178922:  CBZ             R1, loc_178934
178924:  LDR             R0, [R5]
178926:  LSLS            R2, R0, #2; n
178928:  MOV             R0, R8; dest
17892A:  BLX             j_memcpy
17892E:  LDR             R0, [R5,#8]
178930:  BL              sub_165578
178934:  STRD.W          R6, R8, [R5,#4]
178938:  LDR             R0, [R5]
17893A:  CMP             R0, R4
17893C:  BGE             loc_17894C
17893E:  LDR             R1, [SP,#0x18+var_14]
178940:  LDR             R2, [R5,#8]
178942:  STR.W           R1, [R2,R0,LSL#2]
178946:  ADDS            R0, #1
178948:  CMP             R4, R0
17894A:  BNE             loc_178940
17894C:  LDR             R0, [R5,#0x18]
17894E:  MOVW            R1, #0xFFFF
178952:  STR             R4, [R5]
178954:  CMP             R0, R4
178956:  STRH.W          R1, [R7,#var_16]
17895A:  BGE             loc_178994
17895C:  CMP             R0, #0
17895E:  ITTE NE
178960:  ADDNE.W         R1, R0, R0,LSR#31
178964:  ADDNE.W         R6, R0, R1,ASR#1
178968:  MOVEQ           R6, #8
17896A:  CMP             R6, R4
17896C:  IT LE
17896E:  MOVLE           R6, R4
178970:  CMP             R0, R6
178972:  BGE             loc_178994
178974:  LSLS            R0, R6, #1
178976:  BL              sub_1654B0
17897A:  LDR             R1, [R5,#0x1C]; src
17897C:  MOV             R8, R0
17897E:  CBZ             R1, loc_178990
178980:  LDR             R0, [R5,#0x14]
178982:  LSLS            R2, R0, #1; n
178984:  MOV             R0, R8; dest
178986:  BLX             j_memcpy
17898A:  LDR             R0, [R5,#0x1C]
17898C:  BL              sub_165578
178990:  STRD.W          R6, R8, [R5,#0x18]
178994:  LDR             R0, [R5,#0x14]
178996:  CMP             R0, R4
178998:  BGE             loc_1789AA
17899A:  LDRH.W          R1, [R7,#var_16]
17899E:  LDR             R2, [R5,#0x1C]
1789A0:  STRH.W          R1, [R2,R0,LSL#1]
1789A4:  ADDS            R0, #1
1789A6:  CMP             R4, R0
1789A8:  BNE             loc_17899E
1789AA:  STR             R4, [R5,#0x14]
1789AC:  ADD             SP, SP, #8
1789AE:  POP.W           {R8}
1789B2:  POP             {R4-R7,PC}
