; =========================================================
; Game Engine Function: ec_enc_uint
; Address            : 0x195360 - 0x195422
; =========================================================

195360:  PUSH            {R4-R7,LR}
195362:  ADD             R7, SP, #0xC
195364:  PUSH.W          {R8}
195368:  MOV             R3, R2
19536A:  MOV             R4, R0
19536C:  SUBS            R0, R3, #1
19536E:  MOV             R5, R1
195370:  CLZ.W           R1, R0
195374:  RSB.W           R1, R1, #0x20 ; ' '
195378:  CMP             R1, #9
19537A:  BLT             loc_195410
19537C:  SUB.W           R8, R1, #8
195380:  LSR.W           R1, R5, R8
195384:  LSR.W           R0, R0, R8
195388:  ADDS            R3, R0, #1
19538A:  ADDS            R2, R1, #1
19538C:  MOV             R0, R4
19538E:  BLX             j_ec_encode
195392:  MOVS            R0, #1
195394:  LSL.W           R2, R0, R8
195398:  LDRD.W          R0, R1, [R4,#0xC]
19539C:  SUBS            R2, #1
19539E:  AND.W           LR, R2, R5
1953A2:  ADD.W           R2, R1, R8
1953A6:  CMP             R2, #0x21 ; '!'
1953A8:  BCC             loc_1953F4
1953AA:  MVNS            R2, R1
1953AC:  CMN.W           R2, #0x10
1953B0:  IT LE
1953B2:  MOVLE           R2, #0xFFFFFFF0
1953B6:  ADD.W           R5, R1, #8
1953BA:  ADD.W           R12, R5, R2
1953BE:  LDRD.W          R3, R2, [R4,#4]
1953C2:  LDR             R6, [R4,#0x18]
1953C4:  ADD             R6, R2
1953C6:  CMP             R6, R3
1953C8:  BCS             loc_1953D8
1953CA:  ADDS            R2, #1
1953CC:  STR             R2, [R4,#8]
1953CE:  LDR             R6, [R4]
1953D0:  SUBS            R2, R3, R2
1953D2:  MOVS            R3, #0
1953D4:  STRB            R0, [R6,R2]
1953D6:  B               loc_1953DC
1953D8:  MOV.W           R3, #0xFFFFFFFF
1953DC:  LDR             R2, [R4,#0x2C]
1953DE:  SUBS            R5, #8
1953E0:  LSRS            R0, R0, #8
1953E2:  CMP             R5, #0xF
1953E4:  ORR.W           R2, R2, R3
1953E8:  STR             R2, [R4,#0x2C]
1953EA:  BGT             loc_1953BE
1953EC:  BIC.W           R2, R12, #7
1953F0:  SUBS            R1, #8
1953F2:  SUBS            R1, R1, R2
1953F4:  ADD.W           R2, R1, R8
1953F8:  STR             R2, [R4,#0x10]
1953FA:  LDR             R2, [R4,#0x14]
1953FC:  LSL.W           R1, LR, R1
195400:  ORRS            R0, R1
195402:  STR             R0, [R4,#0xC]
195404:  ADD.W           R0, R2, R8
195408:  STR             R0, [R4,#0x14]
19540A:  POP.W           {R8}
19540E:  POP             {R4-R7,PC}
195410:  ADDS            R2, R5, #1
195412:  MOV             R0, R4
195414:  MOV             R1, R5
195416:  POP.W           {R8}
19541A:  POP.W           {R4-R7,LR}
19541E:  B.W             sub_22440C
