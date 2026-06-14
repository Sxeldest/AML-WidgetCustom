; =========================================================
; Game Engine Function: sub_16E87C
; Address            : 0x16E87C - 0x16E93E
; =========================================================

16E87C:  PUSH            {R4-R7,LR}
16E87E:  ADD             R7, SP, #0xC
16E880:  PUSH.W          {R8,R9,R11}
16E884:  SUB             SP, SP, #8
16E886:  MOV             R4, R0
16E888:  LDR             R0, [R1]
16E88A:  STR             R1, [SP,#0x20+var_1C]
16E88C:  CMP             R0, #0
16E88E:  BEQ             loc_16E936
16E890:  SUBS            R0, #1
16E892:  LDR             R2, [R1,#8]
16E894:  ADD.W           R3, R0, R0,LSL#2
16E898:  LDR.W           R6, [R2,R3,LSL#3]
16E89C:  CBNZ            R6, loc_16E8AC
16E89E:  ADD.W           R2, R2, R3,LSL#3
16E8A2:  LDR             R2, [R2,#0x20]
16E8A4:  CBNZ            R2, loc_16E8AC
16E8A6:  CMP             R0, #0
16E8A8:  STR             R0, [R1]
16E8AA:  BEQ             loc_16E936
16E8AC:  LDRD.W          R0, R1, [R4]
16E8B0:  CMP             R0, R1
16E8B2:  BNE             loc_16E928
16E8B4:  CMP             R0, #0
16E8B6:  ADD.W           R6, R0, #1
16E8BA:  ITTE NE
16E8BC:  ADDNE.W         R1, R0, R0,LSR#31
16E8C0:  ADDNE.W         R1, R0, R1,ASR#1
16E8C4:  MOVEQ           R1, #8
16E8C6:  CMP             R1, R6
16E8C8:  IT GT
16E8CA:  MOVGT           R6, R1
16E8CC:  CMP             R0, R6
16E8CE:  BGE             loc_16E928
16E8D0:  LDR             R0, =(dword_381B58 - 0x16E8D6)
16E8D2:  ADD             R0, PC; dword_381B58
16E8D4:  LDR             R1, [R0]
16E8D6:  MOV             R9, R0
16E8D8:  LSLS            R0, R6, #2
16E8DA:  CBZ             R1, loc_16E8E6
16E8DC:  LDR.W           R2, [R1,#0x370]
16E8E0:  ADDS            R2, #1
16E8E2:  STR.W           R2, [R1,#0x370]
16E8E6:  LDR             R5, =(dword_381B60 - 0x16E8EE)
16E8E8:  LDR             R2, =(off_2390AC - 0x16E8F0)
16E8EA:  ADD             R5, PC; dword_381B60
16E8EC:  ADD             R2, PC; off_2390AC
16E8EE:  LDR             R1, [R5]
16E8F0:  LDR             R2, [R2]; sub_171190
16E8F2:  BLX             R2; sub_171190
16E8F4:  LDR             R1, [R4,#8]; src
16E8F6:  MOV             R8, R0
16E8F8:  CBZ             R1, loc_16E922
16E8FA:  LDR             R0, [R4]
16E8FC:  LSLS            R2, R0, #2; n
16E8FE:  MOV             R0, R8; dest
16E900:  BLX             j_memcpy
16E904:  LDR             R0, [R4,#8]
16E906:  CBZ             R0, loc_16E918
16E908:  LDR.W           R1, [R9]
16E90C:  CBZ             R1, loc_16E918
16E90E:  LDR.W           R2, [R1,#0x370]
16E912:  SUBS            R2, #1
16E914:  STR.W           R2, [R1,#0x370]
16E918:  LDR             R2, =(off_2390B0 - 0x16E920)
16E91A:  LDR             R1, [R5]
16E91C:  ADD             R2, PC; off_2390B0
16E91E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16E920:  BLX             R2; j_opus_decoder_destroy_0
16E922:  LDR             R0, [R4]
16E924:  STRD.W          R6, R8, [R4,#4]
16E928:  LDR             R1, [R4,#8]
16E92A:  LDR             R2, [SP,#0x20+var_1C]
16E92C:  STR.W           R2, [R1,R0,LSL#2]
16E930:  LDR             R0, [R4]
16E932:  ADDS            R0, #1
16E934:  STR             R0, [R4]
16E936:  ADD             SP, SP, #8
16E938:  POP.W           {R8,R9,R11}
16E93C:  POP             {R4-R7,PC}
