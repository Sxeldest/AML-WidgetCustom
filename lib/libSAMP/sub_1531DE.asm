; =========================================================
; Game Engine Function: sub_1531DE
; Address            : 0x1531DE - 0x153314
; =========================================================

1531DE:  PUSH            {R4-R7,LR}
1531E0:  ADD             R7, SP, #0xC
1531E2:  PUSH.W          {R8-R11}
1531E6:  SUB             SP, SP, #0xC
1531E8:  LDR             R6, [R1,#4]
1531EA:  MOV             R5, R2
1531EC:  MOV             R2, R0
1531EE:  MOV.W           R0, #0x55555555
1531F2:  MOV             R9, R1
1531F4:  MOV.W           R1, #0x33333333
1531F8:  AND.W           R0, R0, R6,LSR#1
1531FC:  LDR.W           R10, [R5,#4]
153200:  SUBS            R0, R6, R0
153202:  AND.W           R1, R1, R0,LSR#2
153206:  BIC.W           R0, R0, #0xCCCCCCCC
15320A:  ADD             R0, R1
15320C:  MOV.W           R1, #0x1010101
153210:  ADD.W           R0, R0, R0,LSR#4
153214:  BIC.W           R0, R0, #0xF0F0F0F0
153218:  MULS            R0, R1
15321A:  MOV.W           R8, R0,LSR#24
15321E:  CMP.W           R8, #1
153222:  BHI             loc_15322C
153224:  SUBS            R0, R6, #1
153226:  AND.W           R10, R10, R0
15322A:  B               loc_15323E
15322C:  CMP             R10, R6
15322E:  BCC             loc_15323E
153230:  MOV             R0, R10
153232:  MOV             R1, R6
153234:  MOV             R4, R2
153236:  BLX             sub_221798
15323A:  MOV             R2, R4
15323C:  MOV             R10, R1
15323E:  LDR.W           R11, [R9]
153242:  LDR.W           R0, [R11,R10,LSL#2]
153246:  MOV             R4, R0
153248:  LDR             R0, [R0]
15324A:  CMP             R0, R5
15324C:  BNE             loc_153246
15324E:  ADD.W           R12, R9, #8
153252:  CMP             R4, R12
153254:  BEQ             loc_15327C
153256:  LDR             R0, [R4,#4]
153258:  CMP.W           R8, #1
15325C:  BHI             loc_153264
15325E:  SUBS            R1, R6, #1
153260:  ANDS            R0, R1
153262:  B               loc_153278
153264:  CMP             R0, R6
153266:  BCC             loc_153278
153268:  MOV             R1, R6
15326A:  STRD.W          R12, R2, [SP,#0x28+var_24]
15326E:  BLX             sub_221798
153272:  LDRD.W          R12, R2, [SP,#0x28+var_24]
153276:  MOV             R0, R1
153278:  CMP             R0, R10
15327A:  BEQ             loc_1532AC
15327C:  LDR             R0, [R5]
15327E:  CBZ             R0, loc_1532A6
153280:  LDR             R0, [R0,#4]
153282:  CMP.W           R8, #1
153286:  BHI             loc_15328E
153288:  SUBS            R1, R6, #1
15328A:  ANDS            R0, R1
15328C:  B               loc_1532A2
15328E:  CMP             R0, R6
153290:  BCC             loc_1532A2
153292:  MOV             R1, R6
153294:  STRD.W          R12, R2, [SP,#0x28+var_24]
153298:  BLX             sub_221798
15329C:  LDRD.W          R12, R2, [SP,#0x28+var_24]
1532A0:  MOV             R0, R1
1532A2:  CMP             R0, R10
1532A4:  BEQ             loc_1532AC
1532A6:  MOVS            R0, #0
1532A8:  STR.W           R0, [R11,R10,LSL#2]
1532AC:  LDR.W           R11, [R5]
1532B0:  MOVS            R3, #0
1532B2:  CMP.W           R11, #0
1532B6:  BEQ             loc_1532C8
1532B8:  LDR.W           R0, [R11,#4]
1532BC:  CMP.W           R8, #1
1532C0:  BHI             loc_1532CE
1532C2:  SUBS            R1, R6, #1
1532C4:  ANDS            R0, R1
1532C6:  B               loc_1532E4
1532C8:  MOV.W           R11, #0
1532CC:  B               loc_1532F4
1532CE:  CMP             R0, R6
1532D0:  BCC             loc_1532E4
1532D2:  MOV             R1, R6
1532D4:  MOV             R8, R2
1532D6:  MOV             R6, R12
1532D8:  BLX             sub_221798
1532DC:  MOVS            R3, #0
1532DE:  MOV             R12, R6
1532E0:  MOV             R2, R8
1532E2:  MOV             R0, R1
1532E4:  CMP             R0, R10
1532E6:  ITTT NE
1532E8:  LDRNE.W         R1, [R9]
1532EC:  STRNE.W         R4, [R1,R0,LSL#2]
1532F0:  LDRNE.W         R11, [R5]
1532F4:  MOVS            R0, #1
1532F6:  STR.W           R11, [R4]
1532FA:  STRB            R0, [R2,#8]
1532FC:  LDR.W           R0, [R9,#0xC]
153300:  STRD.W          R5, R12, [R2]
153304:  SUBS            R0, #1
153306:  STR             R3, [R5]
153308:  STR.W           R0, [R9,#0xC]
15330C:  ADD             SP, SP, #0xC
15330E:  POP.W           {R8-R11}
153312:  POP             {R4-R7,PC}
