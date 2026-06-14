; =========================================================
; Game Engine Function: sub_210760
; Address            : 0x210760 - 0x210A80
; =========================================================

210760:  PUSH            {R4-R7,LR}
210762:  ADD             R7, SP, #0xC
210764:  PUSH.W          {R8-R11}
210768:  SUB             SP, SP, #0x20
21076A:  STR             R1, [SP,#0x3C+var_20]
21076C:  MOVW            R1, #0x1698
210770:  STR             R2, [SP,#0x3C+var_34]
210772:  LDR             R2, [R0,R1]
210774:  CMP             R2, #0
210776:  BEQ.W           loc_210A00
21077A:  ADD             R1, R0
21077C:  STR             R1, [SP,#0x3C+var_24]
21077E:  MOVW            R1, #0x16B0
210782:  ADD.W           LR, R0, R1
210786:  MOVW            R1, #0x16B4
21078A:  MOVW            R2, #0x1690
21078E:  ADD.W           R9, R0, R1
210792:  ADDS            R1, R0, R2
210794:  MOVW            R2, #0x169C
210798:  STR             R1, [SP,#0x3C+var_28]
21079A:  ADDS            R1, R0, R2
21079C:  LDR             R2, =(_length_code_ptr - 0x2107A8)
21079E:  STR             R1, [SP,#0x3C+var_2C]
2107A0:  MOV.W           R11, #0
2107A4:  ADD             R2, PC; _length_code_ptr
2107A6:  STR.W           R9, [SP,#0x3C+var_30]
2107AA:  LDR             R1, [R2]; _length_code
2107AC:  LDR             R2, =(_dist_code_ptr - 0x2107B4)
2107AE:  STR             R1, [SP,#0x3C+var_38]
2107B0:  ADD             R2, PC; _dist_code_ptr
2107B2:  LDR             R1, [R2]; _dist_code
2107B4:  STR             R1, [SP,#0x3C+var_3C]
2107B6:  LDR             R1, [SP,#0x3C+var_2C]
2107B8:  LDR             R2, [R1]
2107BA:  LDR             R1, [SP,#0x3C+var_28]
2107BC:  LDRH.W          R8, [R2,R11,LSL#1]
2107C0:  LDR             R3, [R1]
2107C2:  CMP.W           R8, #0
2107C6:  LDRB.W          R12, [R3,R11]
2107CA:  ADD.W           R11, R11, #1
2107CE:  BEQ             loc_210838
2107D0:  LDR             R1, [SP,#0x3C+var_38]
2107D2:  LDR             R3, [SP,#0x3C+var_20]
2107D4:  LDR.W           R2, [R9]
2107D8:  LDRB.W          R6, [R1,R12]
2107DC:  LDRH.W          R5, [LR]
2107E0:  ORR.W           R1, R6, #0x100
2107E4:  ADD.W           R1, R3, R1,LSL#2
2107E8:  MOV             R3, R9
2107EA:  LDRH.W          R10, [R1,#4]
2107EE:  LDRH            R4, [R1,#6]
2107F0:  LSL.W           R1, R10, R2
2107F4:  ORRS            R5, R1
2107F6:  RSB.W           R1, R4, #0x10
2107FA:  STRH.W          R5, [LR]
2107FE:  CMP             R2, R1
210800:  BLE             loc_210892
210802:  LDR             R2, [R0,#0x14]
210804:  LDR.W           R9, [R0,#8]
210808:  ADDS            R1, R2, #1
21080A:  STR             R1, [R0,#0x14]
21080C:  STRB.W          R5, [R9,R2]
210810:  LDR             R2, [R0,#0x14]
210812:  LDR.W           R9, [R0,#8]
210816:  LDRB.W          R5, [LR,#1]
21081A:  ADDS            R1, R2, #1
21081C:  STR             R1, [R0,#0x14]
21081E:  STRB.W          R5, [R9,R2]
210822:  LDR             R1, [R3]
210824:  RSB.W           R2, R1, #0x10
210828:  ADD             R1, R4
21082A:  SUB.W           R9, R1, #0x10
21082E:  LSR.W           R5, R10, R2
210832:  STRH.W          R5, [LR]
210836:  B               loc_210896
210838:  LDR             R1, [SP,#0x3C+var_20]
21083A:  LDR.W           R2, [R9]
21083E:  ADD.W           R3, R1, R12,LSL#2
210842:  LDRH.W          R5, [LR]
210846:  LDRH.W          R4, [R1,R12,LSL#2]
21084A:  LDRH            R3, [R3,#2]
21084C:  LSL.W           R6, R4, R2
210850:  ORR.W           R10, R6, R5
210854:  RSB.W           R6, R3, #0x10
210858:  STRH.W          R10, [LR]
21085C:  CMP             R2, R6
21085E:  BLE             loc_2108FE
210860:  LDR             R6, [R0,#0x14]
210862:  LDR             R2, [R0,#8]
210864:  ADDS            R5, R6, #1
210866:  STR             R5, [R0,#0x14]
210868:  STRB.W          R10, [R2,R6]
21086C:  LDR             R6, [R0,#0x14]
21086E:  LDR             R2, [R0,#8]
210870:  LDRB.W          R5, [LR,#1]
210874:  ADDS            R1, R6, #1
210876:  STR             R1, [R0,#0x14]
210878:  STRB            R5, [R2,R6]
21087A:  LDR.W           R1, [R9]
21087E:  RSB.W           R2, R1, #0x10
210882:  ADD             R1, R3
210884:  LSR.W           R10, R4, R2
210888:  SUB.W           R4, R1, #0x10
21088C:  STRH.W          R10, [LR]
210890:  B               loc_2109F0
210892:  ADD.W           R9, R2, R4
210896:  SUB.W           R1, R6, #8
21089A:  STR.W           R9, [R3]
21089E:  CMP             R1, #0x13
2108A0:  BHI             loc_21090A
2108A2:  LDR             R1, =(unk_5F0468 - 0x2108AA)
2108A4:  UXTH            R2, R5
2108A6:  ADD             R1, PC; unk_5F0468
2108A8:  LDR.W           R10, [R1,R6,LSL#2]
2108AC:  LDR             R1, =(unk_5F05A0 - 0x2108B2)
2108AE:  ADD             R1, PC; unk_5F05A0
2108B0:  LDR.W           R1, [R1,R6,LSL#2]
2108B4:  SUB.W           R3, R12, R1
2108B8:  LSL.W           R1, R3, R9
2108BC:  ORR.W           R5, R1, R2
2108C0:  RSB.W           R1, R10, #0x10
2108C4:  STRH.W          R5, [LR]
2108C8:  CMP             R9, R1
2108CA:  BLE             loc_210902
2108CC:  LDR             R2, [R0,#0x14]
2108CE:  UXTH            R3, R3
2108D0:  LDR             R1, [R0,#8]
2108D2:  ADDS            R6, R2, #1
2108D4:  STR             R6, [R0,#0x14]
2108D6:  STRB            R5, [R1,R2]
2108D8:  LDR             R2, [R0,#0x14]
2108DA:  LDR             R1, [R0,#8]
2108DC:  LDRB.W          R6, [LR,#1]
2108E0:  ADDS            R5, R2, #1
2108E2:  STR             R5, [R0,#0x14]
2108E4:  STRB            R6, [R1,R2]
2108E6:  LDR             R6, [SP,#0x3C+var_30]
2108E8:  LDR             R1, [R6]
2108EA:  RSB.W           R2, R1, #0x10
2108EE:  ADD             R1, R10
2108F0:  SUB.W           R9, R1, #0x10
2108F4:  LSR.W           R5, R3, R2
2108F8:  STRH.W          R5, [LR]
2108FC:  B               loc_210906
2108FE:  ADDS            R4, R2, R3
210900:  B               loc_2109F0
210902:  LDR             R6, [SP,#0x3C+var_30]
210904:  ADD             R9, R10
210906:  STR.W           R9, [R6]
21090A:  SUB.W           R8, R8, #1
21090E:  MOV.W           R2, #0x100
210912:  CMP.W           R8, #0x100
210916:  MOV             R1, R8
210918:  IT CS
21091A:  ADDCS.W         R1, R2, R1,LSR#7
21091E:  LDR             R2, [SP,#0x3C+var_3C]
210920:  LDRB            R6, [R2,R1]
210922:  UXTH            R2, R5
210924:  LDR             R1, [SP,#0x3C+var_34]
210926:  LDRH.W          R3, [R1,R6,LSL#2]
21092A:  ADD.W           R1, R1, R6,LSL#2
21092E:  LDRH            R4, [R1,#2]
210930:  LSL.W           R1, R3, R9
210934:  ORR.W           R10, R1, R2
210938:  RSB.W           R1, R4, #0x10
21093C:  STRH.W          R10, [LR]
210940:  CMP             R9, R1
210942:  BLE             loc_21097E
210944:  LDR             R2, [R0,#0x14]
210946:  LDR             R1, [R0,#8]
210948:  ADDS            R5, R2, #1
21094A:  STR             R5, [R0,#0x14]
21094C:  STRB.W          R10, [R1,R2]
210950:  LDR             R2, [R0,#0x14]
210952:  LDR.W           R12, [R0,#8]
210956:  LDRB.W          R5, [LR,#1]
21095A:  ADDS            R1, R2, #1
21095C:  STR             R1, [R0,#0x14]
21095E:  STRB.W          R5, [R12,R2]
210962:  LDR.W           R9, [SP,#0x3C+var_30]
210966:  LDR.W           R1, [R9]
21096A:  RSB.W           R2, R1, #0x10
21096E:  ADD             R1, R4
210970:  SUB.W           R4, R1, #0x10
210974:  LSR.W           R10, R3, R2
210978:  STRH.W          R10, [LR]
21097C:  B               loc_210984
21097E:  ADD             R4, R9
210980:  LDR.W           R9, [SP,#0x3C+var_30]
210984:  SUBS            R1, R6, #4
210986:  STR.W           R4, [R9]
21098A:  CMP             R1, #0x19
21098C:  BHI             loc_2109F4
21098E:  LDR             R1, =(unk_5F04DC - 0x210998)
210990:  UXTH.W          R2, R10
210994:  ADD             R1, PC; unk_5F04DC
210996:  LDR.W           R5, [R1,R6,LSL#2]
21099A:  LDR             R1, =(unk_5F0614 - 0x2109A0)
21099C:  ADD             R1, PC; unk_5F0614
21099E:  LDR.W           R1, [R1,R6,LSL#2]
2109A2:  SUB.W           R3, R8, R1
2109A6:  LSL.W           R1, R3, R4
2109AA:  ORR.W           R10, R1, R2
2109AE:  RSB.W           R1, R5, #0x10
2109B2:  STRH.W          R10, [LR]
2109B6:  CMP             R4, R1
2109B8:  BLE             loc_2109EE
2109BA:  LDR             R2, [R0,#0x14]
2109BC:  UXTH            R3, R3
2109BE:  LDR             R1, [R0,#8]
2109C0:  ADDS            R6, R2, #1
2109C2:  STR             R6, [R0,#0x14]
2109C4:  STRB.W          R10, [R1,R2]
2109C8:  LDR             R2, [R0,#0x14]
2109CA:  LDR             R1, [R0,#8]
2109CC:  LDRB.W          R6, [LR,#1]
2109D0:  ADDS            R4, R2, #1
2109D2:  STR             R4, [R0,#0x14]
2109D4:  STRB            R6, [R1,R2]
2109D6:  LDR.W           R1, [R9]
2109DA:  RSB.W           R2, R1, #0x10
2109DE:  ADD             R1, R5
2109E0:  SUB.W           R4, R1, #0x10
2109E4:  LSR.W           R10, R3, R2
2109E8:  STRH.W          R10, [LR]
2109EC:  B               loc_2109F0
2109EE:  ADD             R4, R5
2109F0:  STR.W           R4, [R9]
2109F4:  LDR             R1, [SP,#0x3C+var_24]
2109F6:  LDR             R1, [R1]
2109F8:  CMP             R11, R1
2109FA:  BCC.W           loc_2107B6
2109FE:  B               loc_210A16
210A00:  MOVW            R1, #0x16B0
210A04:  MOVW            R2, #0x16B4
210A08:  LDRH.W          R10, [R0,R1]
210A0C:  ADD.W           LR, R0, R1
210A10:  LDR             R4, [R0,R2]
210A12:  ADD.W           R9, R0, R2
210A16:  LDR             R1, [SP,#0x3C+var_20]
210A18:  UXTH.W          R2, R10
210A1C:  LDRH.W          R6, [R1,#0x400]
210A20:  LDRH.W          R3, [R1,#0x402]
210A24:  LSL.W           R1, R6, R4
210A28:  ORRS            R2, R1
210A2A:  RSB.W           R1, R3, #0x10
210A2E:  STRH.W          R2, [LR]
210A32:  CMP             R4, R1
210A34:  BLE             loc_210A66
210A36:  LDR             R5, [R0,#0x14]
210A38:  LDR             R1, [R0,#8]
210A3A:  ADDS            R4, R5, #1
210A3C:  STR             R4, [R0,#0x14]
210A3E:  STRB            R2, [R1,R5]
210A40:  LDR             R2, [R0,#0x14]
210A42:  LDR             R1, [R0,#8]
210A44:  LDRB.W          R5, [LR,#1]
210A48:  ADDS            R4, R2, #1
210A4A:  STR             R4, [R0,#0x14]
210A4C:  STRB            R5, [R1,R2]
210A4E:  LDR.W           R1, [R9]
210A52:  RSB.W           R2, R1, #0x10
210A56:  ADD             R1, R3
210A58:  LSR.W           R2, R6, R2
210A5C:  STRH.W          R2, [LR]
210A60:  SUB.W           R2, R1, #0x10
210A64:  B               loc_210A68
210A66:  ADDS            R2, R4, R3
210A68:  STR.W           R2, [R9]
210A6C:  MOVW            R1, #0x16AC
210A70:  LDR             R2, [SP,#0x3C+var_20]
210A72:  LDRH.W          R2, [R2,#0x402]
210A76:  STR             R2, [R0,R1]
210A78:  ADD             SP, SP, #0x20 ; ' '
210A7A:  POP.W           {R8-R11}
210A7E:  POP             {R4-R7,PC}
