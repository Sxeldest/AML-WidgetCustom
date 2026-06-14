; =========================================================
; Game Engine Function: sub_95344
; Address            : 0x95344 - 0x95412
; =========================================================

95344:  PUSH            {R4-R7,LR}
95346:  ADD             R7, SP, #0xC
95348:  PUSH.W          {R8,R9,R11}
9534C:  SUB             SP, SP, #8
9534E:  MOV             R4, R0
95350:  LDR             R0, [R1]
95352:  STR             R1, [SP,#0x20+var_1C]
95354:  CMP             R0, #0
95356:  BEQ             loc_95402
95358:  SUBS            R0, #1
9535A:  LDR             R2, [R1,#8]
9535C:  ADD.W           R3, R0, R0,LSL#2
95360:  LDR.W           R6, [R2,R3,LSL#3]
95364:  CMP             R6, #0
95366:  ITTT EQ
95368:  ADDEQ.W         R2, R2, R3,LSL#3
9536C:  LDREQ           R2, [R2,#0x20]
9536E:  CMPEQ           R2, #0
95370:  BEQ             loc_9540A
95372:  LDRD.W          R0, R1, [R4]
95376:  CMP             R0, R1
95378:  BNE             loc_953F4
9537A:  CMP             R0, #0
9537C:  ADD.W           R6, R0, #1
95380:  ITTE NE
95382:  ADDNE.W         R1, R0, R0,LSR#31
95386:  ADDNE.W         R1, R0, R1,ASR#1
9538A:  MOVEQ           R1, #8
9538C:  CMP             R1, R6
9538E:  IT GT
95390:  MOVGT           R6, R1
95392:  CMP             R0, R6
95394:  BGE             loc_953F4
95396:  LDR             R0, =(dword_1ACF68 - 0x9539C)
95398:  ADD             R0, PC; dword_1ACF68
9539A:  LDR             R1, [R0]
9539C:  MOV             R9, R0
9539E:  LSLS            R0, R6, #2
953A0:  CMP             R1, #0
953A2:  ITTT NE
953A4:  LDRNE.W         R2, [R1,#0x370]
953A8:  ADDNE           R2, #1
953AA:  STRNE.W         R2, [R1,#0x370]
953AE:  LDR             R5, =(dword_1ACF70 - 0x953B6)
953B0:  LDR             R2, =(off_117248 - 0x953B8)
953B2:  ADD             R5, PC; dword_1ACF70
953B4:  ADD             R2, PC; off_117248
953B6:  LDR             R1, [R5]
953B8:  LDR             R2, [R2]; sub_9A720
953BA:  BLX             R2; sub_9A720
953BC:  LDR             R1, [R4,#8]; src
953BE:  MOV             R8, R0
953C0:  CBZ             R1, loc_953EE
953C2:  LDR             R0, [R4]
953C4:  LSLS            R2, R0, #2; n
953C6:  MOV             R0, R8; dest
953C8:  BLX             j_memcpy
953CC:  LDR             R0, [R4,#8]
953CE:  CMP             R0, #0
953D0:  ITTTT NE
953D2:  LDRNE.W         R1, [R9]
953D6:  CMPNE           R1, #0
953D8:  LDRNE.W         R2, [R1,#0x370]
953DC:  SUBNE           R2, #1
953DE:  IT NE
953E0:  STRNE.W         R2, [R1,#0x370]
953E4:  LDR             R2, =(off_11724C - 0x953EC)
953E6:  LDR             R1, [R5]
953E8:  ADD             R2, PC; off_11724C
953EA:  LDR             R2, [R2]; j_opus_decoder_destroy_0
953EC:  BLX             R2; j_opus_decoder_destroy_0
953EE:  LDR             R0, [R4]
953F0:  STRD.W          R6, R8, [R4,#4]
953F4:  LDR             R1, [R4,#8]
953F6:  LDR             R2, [SP,#0x20+var_1C]
953F8:  STR.W           R2, [R1,R0,LSL#2]
953FC:  LDR             R0, [R4]
953FE:  ADDS            R0, #1
95400:  STR             R0, [R4]
95402:  ADD             SP, SP, #8
95404:  POP.W           {R8,R9,R11}
95408:  POP             {R4-R7,PC}
9540A:  CMP             R0, #0
9540C:  STR             R0, [R1]
9540E:  BNE             loc_95372
95410:  B               loc_95402
