; =========================================================
; Game Engine Function: sub_16590C
; Address            : 0x16590C - 0x1659DC
; =========================================================

16590C:  PUSH            {R4-R7,LR}
16590E:  ADD             R7, SP, #0xC
165910:  PUSH.W          {R8-R11}
165914:  SUB             SP, SP, #4
165916:  MOV             R4, R0
165918:  MOV             R8, R2
16591A:  LDR             R6, [R4,#8]
16591C:  LDRD.W          R2, R0, [R0]
165920:  SUBS            R1, R1, R6
165922:  CMP             R2, R0
165924:  MOV.W           R5, R1,ASR#3
165928:  BNE             loc_1659A4
16592A:  CMP             R2, #0
16592C:  ADD.W           R9, R2, #1
165930:  ITTE NE
165932:  ADDNE.W         R0, R2, R2,LSR#31
165936:  ADDNE.W         R0, R2, R0,ASR#1
16593A:  MOVEQ           R0, #8
16593C:  CMP             R0, R9
16593E:  IT GT
165940:  MOVGT           R9, R0
165942:  CMP             R2, R9
165944:  BGE             loc_1659A4
165946:  LDR             R0, =(dword_381B58 - 0x16594C)
165948:  ADD             R0, PC; dword_381B58
16594A:  LDR             R1, [R0]
16594C:  MOV             R10, R0
16594E:  MOV.W           R0, R9,LSL#3
165952:  CBZ             R1, loc_16595E
165954:  LDR.W           R2, [R1,#0x370]
165958:  ADDS            R2, #1
16595A:  STR.W           R2, [R1,#0x370]
16595E:  LDR             R1, =(dword_381B60 - 0x165966)
165960:  LDR             R2, =(off_2390AC - 0x165968)
165962:  ADD             R1, PC; dword_381B60
165964:  ADD             R2, PC; off_2390AC
165966:  MOV             R11, R1
165968:  LDR             R1, [R1]
16596A:  LDR             R2, [R2]; sub_171190
16596C:  BLX             R2; sub_171190
16596E:  LDR             R1, [R4,#8]; src
165970:  MOV             R6, R0
165972:  CBZ             R1, loc_16599E
165974:  LDR             R0, [R4]
165976:  LSLS            R2, R0, #3; n
165978:  MOV             R0, R6; dest
16597A:  BLX             j_memcpy
16597E:  LDR             R0, [R4,#8]
165980:  CBZ             R0, loc_165992
165982:  LDR.W           R1, [R10]
165986:  CBZ             R1, loc_165992
165988:  LDR.W           R2, [R1,#0x370]
16598C:  SUBS            R2, #1
16598E:  STR.W           R2, [R1,#0x370]
165992:  LDR             R2, =(off_2390B0 - 0x16599C)
165994:  LDR.W           R1, [R11]
165998:  ADD             R2, PC; off_2390B0
16599A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16599C:  BLX             R2; j_opus_decoder_destroy_0
16599E:  LDR             R2, [R4]
1659A0:  STRD.W          R9, R6, [R4,#4]
1659A4:  CMP             R2, R5
1659A6:  BLE             loc_1659BA
1659A8:  SUBS            R2, R2, R5
1659AA:  ADD.W           R1, R6, R5,LSL#3; src
1659AE:  ADD.W           R0, R1, #8; dest
1659B2:  LSLS            R2, R2, #3; n
1659B4:  BLX             j_memmove
1659B8:  LDR             R6, [R4,#8]
1659BA:  LDRD.W          R0, R1, [R8]
1659BE:  STR.W           R0, [R6,R5,LSL#3]
1659C2:  ADD.W           R0, R6, R5,LSL#3
1659C6:  STR             R1, [R0,#4]
1659C8:  LDR             R0, [R4]
1659CA:  LDR             R1, [R4,#8]
1659CC:  ADDS            R0, #1
1659CE:  STR             R0, [R4]
1659D0:  ADD.W           R0, R1, R5,LSL#3
1659D4:  ADD             SP, SP, #4
1659D6:  POP.W           {R8-R11}
1659DA:  POP             {R4-R7,PC}
