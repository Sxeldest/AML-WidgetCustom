; =========================================================
; Game Engine Function: sub_98854
; Address            : 0x98854 - 0x98958
; =========================================================

98854:  PUSH            {R4-R7,LR}
98856:  ADD             R7, SP, #0xC
98858:  PUSH.W          {R8-R11}
9885C:  SUB             SP, SP, #0xC
9885E:  LDR             R5, =(dword_1ACF68 - 0x9886C)
98860:  MOV             R6, R0
98862:  MOV             R11, R1
98864:  MOVW            R1, #0x1A9C
98868:  ADD             R5, PC; dword_1ACF68
9886A:  ADD.W           R3, R6, R6,LSL#3
9886E:  LDR             R0, [R5]
98870:  ADDS            R4, R0, R1
98872:  MOVW            R1, #0x1AA4
98876:  LDR             R2, [R0,R1]
98878:  MOV.W           R1, #0x1AA0
9887C:  LDR             R1, [R0,R1]
9887E:  ADD.W           R2, R2, R3,LSL#2
98882:  LDRD.W          R9, R10, [R2,#4]
98886:  CMP             R1, R6
98888:  BGE             loc_98900
9888A:  CMP             R1, #0
9888C:  ITTE NE
9888E:  ADDNE.W         R2, R1, R1,LSR#31
98892:  ADDNE.W         R8, R1, R2,ASR#1
98896:  MOVEQ.W         R8, #8
9889A:  CMP             R8, R6
9889C:  IT LE
9889E:  MOVLE           R8, R6
988A0:  CMP             R1, R8
988A2:  BGE             loc_98900
988A4:  LDR             R1, =(off_117248 - 0x988B0)
988A6:  LDR             R3, =(dword_1ACF70 - 0x988B2)
988A8:  LDR.W           R2, [R0,#0x370]
988AC:  ADD             R1, PC; off_117248
988AE:  ADD             R3, PC; dword_1ACF70
988B0:  STR             R3, [SP,#0x28+var_20]
988B2:  LDR.W           R12, [R1]; sub_9A720
988B6:  ADDS            R2, #1
988B8:  STR.W           R2, [R0,#0x370]
988BC:  ADD.W           R0, R8, R8,LSL#3
988C0:  LDR             R1, [R3]
988C2:  LSLS            R0, R0, #2
988C4:  BLX             R12; sub_9A720
988C6:  LDR             R1, [R4,#8]; src
988C8:  CBZ             R1, loc_988FC
988CA:  LDR             R2, [R4]
988CC:  STR             R0, [SP,#0x28+var_24]
988CE:  ADD.W           R2, R2, R2,LSL#3
988D2:  LSLS            R2, R2, #2; n
988D4:  BLX             j_memcpy
988D8:  LDR             R0, [R4,#8]
988DA:  CMP             R0, #0
988DC:  ITTTT NE
988DE:  LDRNE           R1, [R5]
988E0:  CMPNE           R1, #0
988E2:  LDRNE.W         R2, [R1,#0x370]
988E6:  SUBNE           R2, #1
988E8:  IT NE
988EA:  STRNE.W         R2, [R1,#0x370]
988EE:  LDR             R2, =(off_11724C - 0x988F6)
988F0:  LDR             R1, [SP,#0x28+var_20]
988F2:  ADD             R2, PC; off_11724C
988F4:  LDR             R1, [R1]
988F6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
988F8:  BLX             R2; j_opus_decoder_destroy_0
988FA:  LDR             R0, [SP,#0x28+var_24]
988FC:  STRD.W          R8, R0, [R4,#4]
98900:  CMP.W           R11, #0
98904:  STR             R6, [R4]
98906:  BEQ             loc_9892C
98908:  CMP.W           R10, #0
9890C:  BEQ             loc_98934
9890E:  LDRB.W          R0, [R10,#0x7B]
98912:  CBNZ            R0, loc_98938
98914:  CMP.W           R9, #0
98918:  BEQ             loc_98938
9891A:  MOV             R0, R9
9891C:  MOVS            R1, #0
9891E:  ADD             SP, SP, #0xC
98920:  POP.W           {R8-R11}
98924:  POP.W           {R4-R7,LR}
98928:  B.W             sub_8FC24
9892C:  ADD             SP, SP, #0xC
9892E:  POP.W           {R8-R11}
98932:  POP             {R4-R7,PC}
98934:  MOVS            R0, #0
98936:  B               loc_9894A
98938:  LDR             R0, [R4,#0x70]
9893A:  CBZ             R0, loc_98940
9893C:  MOV             R0, R10
9893E:  B               loc_9894A
98940:  LDR.W           R0, [R10,#0x308]
98944:  CMP             R0, #0
98946:  IT EQ
98948:  MOVEQ           R0, R10
9894A:  ADD             SP, SP, #0xC
9894C:  POP.W           {R8-R11}
98950:  POP.W           {R4-R7,LR}
98954:  B.W             sub_8C628
