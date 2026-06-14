; =========================================================
; Game Engine Function: sub_75206
; Address            : 0x75206 - 0x75362
; =========================================================

75206:  PUSH            {R4-R7,LR}
75208:  ADD             R7, SP, #0xC
7520A:  PUSH.W          {R8-R11}
7520E:  SUB             SP, SP, #4
75210:  MOV             R4, R0
75212:  LDR             R0, [R1,#0x30]
75214:  LSLS            R2, R0, #0x1B
75216:  BMI             loc_75226
75218:  LSLS            R0, R0, #0x1C
7521A:  BMI             loc_7525C
7521C:  MOVS            R0, #0
7521E:  STRD.W          R0, R0, [R4]
75222:  STR             R0, [R4,#8]
75224:  B               loc_75354
75226:  LDR.W           R9, [R1,#0x2C]
7522A:  LDR.W           R10, [R1,#0x18]
7522E:  MOV             R6, R9
75230:  CMP             R9, R10
75232:  ITT CC
75234:  STRCC.W         R10, [R1,#0x2C]
75238:  MOVCC           R6, R10
7523A:  LDR             R5, [R1,#0x14]
7523C:  SUB.W           R11, R6, R5
75240:  CMN.W           R11, #0x10
75244:  BCS.W           loc_7535C
75248:  CMP.W           R11, #0xA
7524C:  BHI             loc_7527E
7524E:  MOV.W           R0, R11,LSL#1
75252:  STRB.W          R0, [R4],#1
75256:  CMP             R5, R6
75258:  BNE             loc_7529C
7525A:  B               loc_7533C
7525C:  LDR             R5, [R1,#8]
7525E:  LDR             R6, [R1,#0x10]
75260:  SUB.W           R9, R6, R5
75264:  CMN.W           R9, #0x10
75268:  BCS             loc_7535C
7526A:  CMP.W           R9, #0xA
7526E:  BHI             loc_752F0
75270:  MOV.W           R0, R9,LSL#1
75274:  STRB.W          R0, [R4],#1
75278:  CMP             R5, R6
7527A:  BNE             loc_7530E
7527C:  B               loc_7533C
7527E:  ADD.W           R0, R11, #0x10
75282:  BIC.W           R8, R0, #0xF
75286:  MOV             R0, R8; unsigned int
75288:  BLX             j__Znwj; operator new(uint)
7528C:  ADD.W           R1, R8, #1
75290:  STRD.W          R1, R11, [R4]
75294:  STR             R0, [R4,#8]
75296:  MOV             R4, R0
75298:  CMP             R5, R6
7529A:  BEQ             loc_7533C
7529C:  MOV             R0, R9
7529E:  CMP             R10, R9
752A0:  IT HI
752A2:  MOVHI           R0, R10
752A4:  SUBS            R2, R0, R5
752A6:  CMP             R2, #0x10
752A8:  BCC             loc_752DE
752AA:  CMP             R10, R9
752AC:  IT HI
752AE:  MOVHI           R9, R10
752B0:  CMP             R4, R9
752B2:  ITTT CC
752B4:  SUBCC.W         R0, R9, R5
752B8:  ADDCC           R0, R4
752BA:  CMPCC           R5, R0
752BC:  BCC             loc_752DE
752BE:  BIC.W           R12, R2, #0xF
752C2:  ADD.W           R0, R4, R12
752C6:  ADD.W           R1, R5, R12
752CA:  MOV             R3, R12
752CC:  VLD1.8          {D16-D17}, [R5]!
752D0:  SUBS            R3, #0x10
752D2:  VST1.8          {D16-D17}, [R4]!
752D6:  BNE             loc_752CC
752D8:  CMP             R2, R12
752DA:  BNE             loc_752E2
752DC:  B               loc_75350
752DE:  MOV             R1, R5
752E0:  MOV             R0, R4
752E2:  LDRB.W          R2, [R1],#1
752E6:  STRB.W          R2, [R0],#1
752EA:  CMP             R1, R6
752EC:  BNE             loc_752E2
752EE:  B               loc_75350
752F0:  ADD.W           R0, R9, #0x10
752F4:  BIC.W           R8, R0, #0xF
752F8:  MOV             R0, R8; unsigned int
752FA:  BLX             j__Znwj; operator new(uint)
752FE:  ADD.W           R1, R8, #1
75302:  STRD.W          R1, R9, [R4]
75306:  STR             R0, [R4,#8]
75308:  MOV             R4, R0
7530A:  CMP             R5, R6
7530C:  BEQ             loc_7533C
7530E:  CMP.W           R9, #0x10
75312:  BCC             loc_75340
75314:  CMP             R4, R6
75316:  ITT CC
75318:  ADDCC.W         R0, R4, R9
7531C:  CMPCC           R5, R0
7531E:  BCC             loc_75340
75320:  BIC.W           R2, R9, #0xF
75324:  ADDS            R0, R4, R2
75326:  ADDS            R1, R5, R2
75328:  MOV             R3, R2
7532A:  VLD1.8          {D16-D17}, [R5]!
7532E:  SUBS            R3, #0x10
75330:  VST1.8          {D16-D17}, [R4]!
75334:  BNE             loc_7532A
75336:  CMP             R9, R2
75338:  BNE             loc_75344
7533A:  B               loc_75350
7533C:  MOV             R0, R4
7533E:  B               loc_75350
75340:  MOV             R1, R5
75342:  MOV             R0, R4
75344:  LDRB.W          R2, [R1],#1
75348:  STRB.W          R2, [R0],#1
7534C:  CMP             R1, R6
7534E:  BNE             loc_75344
75350:  MOVS            R1, #0
75352:  STRB            R1, [R0]
75354:  ADD             SP, SP, #4
75356:  POP.W           {R8-R11}
7535A:  POP             {R4-R7,PC}
7535C:  MOV             R0, R4
7535E:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
