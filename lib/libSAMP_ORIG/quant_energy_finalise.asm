; =========================================================
; Game Engine Function: quant_energy_finalise
; Address            : 0xBC4B8 - 0xBC606
; =========================================================

BC4B8:  PUSH            {R4-R7,LR}
BC4BA:  ADD             R7, SP, #0xC
BC4BC:  PUSH.W          {R8-R11}
BC4C0:  SUB             SP, SP, #0xC
BC4C2:  MOV             R11, R1
BC4C4:  MOV             R10, R3
BC4C6:  MOV             R4, R2
BC4C8:  CMP             R11, R2
BC4CA:  BGE.W           loc_BC5FE
BC4CE:  LDRD.W          R2, R1, [R7,#arg_10]
BC4D2:  LDRD.W          R5, R3, [R7,#arg_8]
BC4D6:  CMP             R3, R1
BC4D8:  LDRD.W          R9, R12, [R7,#arg_0]
BC4DC:  STRD.W          R4, R0, [SP,#0x28+var_24]
BC4E0:  BLT             loc_BC572
BC4E2:  MOV.W           LR, #1
BC4E6:  MOV             R6, R11
BC4E8:  MOV             R8, R4
BC4EA:  LDR.W           R4, [R12,R6,LSL#2]
BC4EE:  CMP             R4, #7
BC4F0:  BGT             loc_BC568
BC4F2:  LDR.W           R4, [R5,R6,LSL#2]
BC4F6:  CBNZ            R4, loc_BC568
BC4F8:  STR             R3, [SP,#0x28+var_28]
BC4FA:  MOV.W           R8, #0
BC4FE:  LDR             R4, [R0,#8]
BC500:  MLA.W           R0, R4, R8, R6
BC504:  LDRH.W          R0, [R9,R0,LSL#1]
BC508:  EOR.W           R5, LR, R0,LSR#15
BC50C:  MOV             R0, R2
BC50E:  MOVS            R2, #1
BC510:  MOV             R1, R5
BC512:  BLX             j_ec_enc_bits
BC516:  LDR             R4, [R7,#arg_4]
BC518:  MOVW            R3, #0xFE00
BC51C:  LDR             R0, [SP,#0x28+var_20]
BC51E:  MOVT            R3, #0xFFFF
BC522:  ADD.W           R3, R3, R5,LSL#10
BC526:  MOV.W           LR, #1
BC52A:  MOV             R12, R4
BC52C:  LDR             R4, [R0,#8]
BC52E:  LDR.W           R2, [R12,R6,LSL#2]
BC532:  MLA.W           R1, R4, R8, R6
BC536:  ADDS            R2, #1
BC538:  ADD.W           R8, R8, #1
BC53C:  ASR.W           R2, R3, R2
BC540:  LDRH.W          R5, [R10,R1,LSL#1]
BC544:  ADDS            R3, R2, R5
BC546:  STRH.W          R3, [R10,R1,LSL#1]
BC54A:  LDRH.W          R3, [R9,R1,LSL#1]
BC54E:  SUBS            R2, R3, R2
BC550:  STRH.W          R2, [R9,R1,LSL#1]
BC554:  LDRD.W          R2, R1, [R7,#arg_10]
BC558:  CMP             R8, R1
BC55A:  BLT             loc_BC500
BC55C:  LDR             R3, [SP,#0x28+var_28]
BC55E:  LDR             R5, [R7,#arg_8]
BC560:  SUB.W           R3, R3, R8
BC564:  LDR.W           R8, [SP,#0x28+var_24]
BC568:  ADDS            R6, #1
BC56A:  CMP             R6, R8
BC56C:  BGE             loc_BC572
BC56E:  CMP             R3, R1
BC570:  BGE             loc_BC4EA
BC572:  CMP             R3, R1
BC574:  BLT             loc_BC5FE
BC576:  MOVW            R8, #0xFE00
BC57A:  MOV.W           LR, #1
BC57E:  MOVT            R8, #0xFFFF
BC582:  LDR.W           R6, [R12,R11,LSL#2]
BC586:  CMP             R6, #7
BC588:  BGT             loc_BC5F0
BC58A:  LDR.W           R6, [R5,R11,LSL#2]
BC58E:  CMP             R6, #1
BC590:  BNE             loc_BC5F0
BC592:  STR             R3, [SP,#0x28+var_28]
BC594:  MOVS            R6, #0
BC596:  LDR             R4, [R0,#8]
BC598:  MLA.W           R0, R4, R6, R11
BC59C:  LDRH.W          R0, [R9,R0,LSL#1]
BC5A0:  EOR.W           R5, LR, R0,LSR#15
BC5A4:  MOV             R0, R2
BC5A6:  MOVS            R2, #1
BC5A8:  MOV             R1, R5
BC5AA:  BLX             j_ec_enc_bits
BC5AE:  LDR             R4, [R7,#arg_4]
BC5B0:  ADD.W           R3, R8, R5,LSL#10
BC5B4:  LDR             R0, [SP,#0x28+var_20]
BC5B6:  MOV.W           LR, #1
BC5BA:  MOV             R12, R4
BC5BC:  LDR             R4, [R0,#8]
BC5BE:  LDR.W           R2, [R12,R11,LSL#2]
BC5C2:  MLA.W           R1, R4, R6, R11
BC5C6:  ADDS            R2, #1
BC5C8:  ADDS            R6, #1
BC5CA:  ASR.W           R2, R3, R2
BC5CE:  LDRH.W          R5, [R10,R1,LSL#1]
BC5D2:  ADDS            R3, R2, R5
BC5D4:  STRH.W          R3, [R10,R1,LSL#1]
BC5D8:  LDRH.W          R3, [R9,R1,LSL#1]
BC5DC:  SUBS            R2, R3, R2
BC5DE:  STRH.W          R2, [R9,R1,LSL#1]
BC5E2:  LDRD.W          R2, R1, [R7,#arg_10]
BC5E6:  CMP             R6, R1
BC5E8:  BLT             loc_BC598
BC5EA:  LDR             R3, [SP,#0x28+var_28]
BC5EC:  LDR             R5, [R7,#arg_8]
BC5EE:  SUBS            R3, R3, R6
BC5F0:  LDR             R4, [SP,#0x28+var_24]
BC5F2:  ADD.W           R11, R11, #1
BC5F6:  CMP             R11, R4
BC5F8:  BGE             loc_BC5FE
BC5FA:  CMP             R3, R1
BC5FC:  BGE             loc_BC582
BC5FE:  ADD             SP, SP, #0xC
BC600:  POP.W           {R8-R11}
BC604:  POP             {R4-R7,PC}
