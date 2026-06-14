; =========================================================
; Game Engine Function: sub_171874
; Address            : 0x171874 - 0x17193C
; =========================================================

171874:  PUSH            {R4-R7,LR}
171876:  ADD             R7, SP, #0xC
171878:  PUSH.W          {R8-R11}
17187C:  SUB             SP, SP, #4
17187E:  MOV             R4, R0
171880:  MOV             R8, R2
171882:  LDR             R6, [R4,#8]
171884:  LDRD.W          R2, R0, [R0]
171888:  SUBS            R1, R1, R6
17188A:  CMP             R2, R0
17188C:  MOV.W           R5, R1,ASR#2
171890:  BNE             loc_17190C
171892:  CMP             R2, #0
171894:  ADD.W           R9, R2, #1
171898:  ITTE NE
17189A:  ADDNE.W         R0, R2, R2,LSR#31
17189E:  ADDNE.W         R0, R2, R0,ASR#1
1718A2:  MOVEQ           R0, #8
1718A4:  CMP             R0, R9
1718A6:  IT GT
1718A8:  MOVGT           R9, R0
1718AA:  CMP             R2, R9
1718AC:  BGE             loc_17190C
1718AE:  LDR             R0, =(dword_381B58 - 0x1718B4)
1718B0:  ADD             R0, PC; dword_381B58
1718B2:  LDR             R1, [R0]
1718B4:  MOV             R10, R0
1718B6:  MOV.W           R0, R9,LSL#2
1718BA:  CBZ             R1, loc_1718C6
1718BC:  LDR.W           R2, [R1,#0x370]
1718C0:  ADDS            R2, #1
1718C2:  STR.W           R2, [R1,#0x370]
1718C6:  LDR             R1, =(dword_381B60 - 0x1718CE)
1718C8:  LDR             R2, =(off_2390AC - 0x1718D0)
1718CA:  ADD             R1, PC; dword_381B60
1718CC:  ADD             R2, PC; off_2390AC
1718CE:  MOV             R11, R1
1718D0:  LDR             R1, [R1]
1718D2:  LDR             R2, [R2]; sub_171190
1718D4:  BLX             R2; sub_171190
1718D6:  LDR             R1, [R4,#8]; src
1718D8:  MOV             R6, R0
1718DA:  CBZ             R1, loc_171906
1718DC:  LDR             R0, [R4]
1718DE:  LSLS            R2, R0, #2; n
1718E0:  MOV             R0, R6; dest
1718E2:  BLX             j_memcpy
1718E6:  LDR             R0, [R4,#8]
1718E8:  CBZ             R0, loc_1718FA
1718EA:  LDR.W           R1, [R10]
1718EE:  CBZ             R1, loc_1718FA
1718F0:  LDR.W           R2, [R1,#0x370]
1718F4:  SUBS            R2, #1
1718F6:  STR.W           R2, [R1,#0x370]
1718FA:  LDR             R2, =(off_2390B0 - 0x171904)
1718FC:  LDR.W           R1, [R11]
171900:  ADD             R2, PC; off_2390B0
171902:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171904:  BLX             R2; j_opus_decoder_destroy_0
171906:  LDR             R2, [R4]
171908:  STRD.W          R9, R6, [R4,#4]
17190C:  CMP             R2, R5
17190E:  BLE             loc_171920
171910:  SUBS            R2, R2, R5
171912:  ADD.W           R1, R6, R5,LSL#2; src
171916:  ADDS            R0, R1, #4; dest
171918:  LSLS            R2, R2, #2; n
17191A:  BLX             j_memmove
17191E:  LDR             R6, [R4,#8]
171920:  LDR.W           R0, [R8]
171924:  STR.W           R0, [R6,R5,LSL#2]
171928:  LDR             R0, [R4]
17192A:  LDR             R1, [R4,#8]
17192C:  ADDS            R0, #1
17192E:  STR             R0, [R4]
171930:  ADD.W           R0, R1, R5,LSL#2
171934:  ADD             SP, SP, #4
171936:  POP.W           {R8-R11}
17193A:  POP             {R4-R7,PC}
