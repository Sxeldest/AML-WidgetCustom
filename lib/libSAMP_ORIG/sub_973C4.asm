; =========================================================
; Game Engine Function: sub_973C4
; Address            : 0x973C4 - 0x97502
; =========================================================

973C4:  PUSH            {R4-R7,LR}
973C6:  ADD             R7, SP, #0xC
973C8:  PUSH.W          {R8-R10}
973CC:  SUB             SP, SP, #8
973CE:  LDR             R3, =(dword_1ACF68 - 0x973DE)
973D0:  MOV             R4, R0
973D2:  MOVW            R1, #0x18C4
973D6:  MOVW            R2, #0x18D0
973DA:  ADD             R3, PC; dword_1ACF68
973DC:  STR             R4, [SP,#0x20+var_1C]
973DE:  LDR             R0, [R3]
973E0:  ADD             R1, R0
973E2:  ADD.W           R6, R0, R2
973E6:  CBNZ            R4, loc_973FA
973E8:  LDR.W           R4, [R0,#0xA0]
973EC:  CMP             R4, #0
973EE:  ITTT EQ
973F0:  LDREQ.W         R2, [R0,#0x94]
973F4:  LDREQ           R2, [R2,#0x3C]
973F6:  LDREQ           R4, [R2]
973F8:  STR             R4, [SP,#0x20+var_1C]
973FA:  VLDR            S0, [R4,#0x10]
973FE:  MOV             R9, R3
97400:  VLDR            S4, [R0,#0x98]
97404:  VLDR            S2, [R4,#0x44]
97408:  VMUL.F32        S0, S4, S0
9740C:  VMOV.F32        S4, #1.0
97410:  VMUL.F32        S0, S0, S2
97414:  VCMP.F32        S0, S4
97418:  VMRS            APSR_nzcv, FPSCR
9741C:  IT LS
9741E:  VMOVLS.F32      S0, S4
97422:  LDR.W           R2, [R6,#0xDC]
97426:  STR             R4, [R1]
97428:  VSTR            S0, [R1,#8]
9742C:  CMP             R2, #0
9742E:  ITTE NE
97430:  VLDRNE          S2, [R2,#0x274]
97434:  VMULNE.F32      S0, S0, S2
97438:  VLDREQ          S0, =0.0
9743C:  VSTR            S0, [R1,#4]
97440:  LDR             R2, [R4,#0x38]
97442:  LDRD.W          R1, R5, [R6,#0x1C0]
97446:  LDRD.W          R3, R2, [R2,#0x2C]
9744A:  CMP             R1, R5
9744C:  VSTR            S0, [R6,#0xC]
97450:  STRD.W          R3, R2, [R6]
97454:  STR             R4, [R6,#8]
97456:  BNE             loc_974D4
97458:  CMP             R1, #0
9745A:  ADD.W           R5, R1, #1
9745E:  ITTE NE
97460:  ADDNE.W         R2, R1, R1,LSR#31
97464:  ADDNE.W         R2, R1, R2,ASR#1
97468:  MOVEQ           R2, #8
9746A:  CMP             R2, R5
9746C:  IT GT
9746E:  MOVGT           R5, R2
97470:  CMP             R1, R5
97472:  BGE             loc_974D4
97474:  LDR             R1, =(off_117248 - 0x9747C)
97476:  LDR             R3, =(dword_1ACF70 - 0x97482)
97478:  ADD             R1, PC; off_117248
9747A:  LDR.W           R2, [R0,#0x370]
9747E:  ADD             R3, PC; dword_1ACF70
97480:  LDR.W           R12, [R1]; sub_9A720
97484:  ADDS            R2, #1
97486:  LDR             R1, [R3]
97488:  MOV             R10, R3
9748A:  STR.W           R2, [R0,#0x370]
9748E:  LSLS            R0, R5, #2
97490:  BLX             R12; sub_9A720
97492:  LDR.W           R1, [R6,#0x1C8]; src
97496:  MOV             R8, R0
97498:  CBZ             R1, loc_974CC
9749A:  LDR.W           R0, [R6,#0x1C0]
9749E:  LSLS            R2, R0, #2; n
974A0:  MOV             R0, R8; dest
974A2:  BLX             j_memcpy
974A6:  LDR.W           R0, [R6,#0x1C8]
974AA:  CMP             R0, #0
974AC:  ITTTT NE
974AE:  LDRNE.W         R1, [R9]
974B2:  CMPNE           R1, #0
974B4:  LDRNE.W         R2, [R1,#0x370]
974B8:  SUBNE           R2, #1
974BA:  IT NE
974BC:  STRNE.W         R2, [R1,#0x370]
974C0:  LDR             R2, =(off_11724C - 0x974CA)
974C2:  LDR.W           R1, [R10]
974C6:  ADD             R2, PC; off_11724C
974C8:  LDR             R2, [R2]; j_opus_decoder_destroy_0
974CA:  BLX             R2; j_opus_decoder_destroy_0
974CC:  LDR.W           R1, [R6,#0x1C0]
974D0:  STRD.W          R5, R8, [R6,#0x1C4]
974D4:  LDR.W           R0, [R6,#0x1C8]
974D8:  LDR             R2, [SP,#0x20+var_1C]
974DA:  STR.W           R2, [R0,R1,LSL#2]
974DE:  LDR.W           R0, [R6,#0xDC]
974E2:  LDR             R1, [R4,#0x38]
974E4:  LDR.W           R2, [R6,#0x1C0]
974E8:  LDR.W           R0, [R0,#0x27C]
974EC:  ADDS            R2, #1
974EE:  LDR             R1, [R1,#8]
974F0:  STR.W           R2, [R6,#0x1C0]
974F4:  ADD             SP, SP, #8
974F6:  POP.W           {R8-R10}
974FA:  POP.W           {R4-R7,LR}
974FE:  B.W             sub_9C138
