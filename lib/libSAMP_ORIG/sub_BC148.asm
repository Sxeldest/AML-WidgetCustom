; =========================================================
; Game Engine Function: sub_BC148
; Address            : 0xBC148 - 0xBC3D4
; =========================================================

BC148:  PUSH            {R4-R7,LR}
BC14A:  ADD             R7, SP, #0xC
BC14C:  PUSH.W          {R8-R11}
BC150:  SUB             SP, SP, #0x44
BC152:  STR             R3, [SP,#0x60+var_3C]
BC154:  MOV             R5, R2
BC156:  STRD.W          R0, R1, [SP,#0x60+var_38]
BC15A:  LDR             R0, =(__stack_chk_guard_ptr - 0xBC162)
BC15C:  LDR             R1, [R7,#arg_8]
BC15E:  ADD             R0, PC; __stack_chk_guard_ptr
BC160:  LDR             R6, [R7,#arg_20]
BC162:  LDR             R4, [R7,#arg_4]
BC164:  LDR             R0, [R0]; __stack_chk_guard
BC166:  LDR             R0, [R0]
BC168:  STR             R0, [SP,#0x60+var_20]
BC16A:  MOVS            R0, #0
BC16C:  STRD.W          R0, R0, [SP,#0x60+var_28]
BC170:  ADDS            R0, R1, #3
BC172:  CMP             R0, R4
BC174:  BGT             loc_BC180
BC176:  LDR             R0, [R7,#arg_14]
BC178:  MOV             R1, R6
BC17A:  MOVS            R2, #3
BC17C:  BLX             j_ec_enc_bit_logp
BC180:  CBZ             R6, loc_BC18A
BC182:  MOVS            R1, #0
BC184:  MOVW            R2, #0x1333
BC188:  B               loc_BC19C
BC18A:  LDR             R1, =(unk_5B29E - 0xBC194)
BC18C:  LDR             R2, =(unk_5B296 - 0xBC196)
BC18E:  LDR             R0, [R7,#arg_1C]
BC190:  ADD             R1, PC; unk_5B29E
BC192:  ADD             R2, PC; unk_5B296
BC194:  LDRH.W          R1, [R1,R0,LSL#1]
BC198:  LDRH.W          R2, [R2,R0,LSL#1]
BC19C:  LDR             R0, [SP,#0x60+var_34]
BC19E:  CMP             R0, R5
BC1A0:  BGE.W           loc_BC3AA
BC1A4:  LDR             R0, [SP,#0x60+var_38]
BC1A6:  SXTH            R2, R2
BC1A8:  LDR             R3, [R7,#arg_18]
BC1AA:  SXTH            R1, R1
BC1AC:  LDR.W           LR, [R7,#arg_0]
BC1B0:  MOV.W           R11, #0
BC1B4:  LDR             R0, [R0,#8]
BC1B6:  STR             R2, [SP,#0x60+var_40]
BC1B8:  ADD.W           R2, R3, R3,LSL#1
BC1BC:  LDR             R6, [SP,#0x60+var_34]
BC1BE:  STR             R2, [SP,#0x60+var_5C]
BC1C0:  ADD.W           R2, R4, #0x20 ; ' '
BC1C4:  ADD             R4, SP, #0x60+var_28
BC1C6:  STR             R2, [SP,#0x60+var_44]
BC1C8:  STR             R1, [SP,#0x60+var_48]
BC1CA:  STR             R5, [SP,#0x60+var_58]
BC1CC:  LDR             R2, [R7,#arg_28]
BC1CE:  CMP             R6, #1
BC1D0:  MOV.W           R1, #0
BC1D4:  MOV.W           R9, #0
BC1D8:  IT GT
BC1DA:  MOVGT           R1, #1
BC1DC:  CMP             R2, #0
BC1DE:  IT NE
BC1E0:  MOVNE           R2, #1
BC1E2:  CMP             R6, #0x14
BC1E4:  AND.W           R1, R1, R2
BC1E8:  LDR             R2, [SP,#0x60+var_5C]
BC1EA:  STR             R1, [SP,#0x60+var_30]
BC1EC:  SUB.W           R1, R5, R6
BC1F0:  MUL.W           R1, R2, R1
BC1F4:  MOV.W           R2, #1
BC1F8:  STR             R1, [SP,#0x60+var_4C]
BC1FA:  MOV             R1, R6
BC1FC:  IT GE
BC1FE:  MOVGE           R1, #0x14
BC200:  ORR.W           R2, R2, R1,LSL#1
BC204:  LSLS            R1, R1, #1
BC206:  STR             R2, [SP,#0x60+var_50]
BC208:  STR             R1, [SP,#0x60+var_54]
BC20A:  MLA.W           R0, R0, R9, R6
BC20E:  MOV             R1, #0xFFFFDC00
BC216:  LDRSH.W         R2, [LR,R0,LSL#1]
BC21A:  CMN.W           R2, #0x2400
BC21E:  IT GT
BC220:  MOVGT           R1, R2
BC222:  LDR             R3, [SP,#0x60+var_48]
BC224:  LDR.W           R10, [R4,R9,LSL#2]
BC228:  MULS            R3, R1
BC22A:  LDR             R1, [SP,#0x60+var_3C]
BC22C:  LDRSH.W         R1, [R1,R0,LSL#1]
BC230:  ADD.W           R0, R3, #0x80
BC234:  LSLS            R3, R1, #7
BC236:  SUB.W           R3, R3, R0,ASR#8
BC23A:  SUB.W           R4, R3, R10
BC23E:  ADD.W           R3, R4, #0x10000
BC242:  ASRS            R5, R3, #0x11
BC244:  CMP.W           R5, #0xFFFFFFFF
BC248:  STR             R5, [SP,#0x60+var_2C]
BC24A:  BGT             loc_BC272
BC24C:  LDR             R3, [R7,#arg_24]
BC24E:  SUBS            R2, R2, R3
BC250:  MOVW            R3, #0x9000
BC254:  CMN.W           R2, #0x7000
BC258:  MOVT            R3, #0xFFFF
BC25C:  IT LE
BC25E:  MOVLE           R2, R3
BC260:  SXTH            R2, R2
BC262:  CMP             R2, R1
BC264:  ITTTT GT
BC266:  SUBGT           R1, R2, R1
BC268:  ADDGT.W         R1, R5, R1,ASR#10
BC26C:  ANDGT.W         R5, R1, R1,ASR#31
BC270:  STRGT           R5, [SP,#0x60+var_2C]
BC272:  LDR             R1, [R7,#arg_14]
BC274:  LDR             R3, [SP,#0x60+var_44]
BC276:  MOV             R2, R1
BC278:  LDR             R1, [R2,#0x14]
BC27A:  LDR             R2, [R2,#0x1C]
BC27C:  SUBS            R1, R3, R1
BC27E:  CLZ.W           R2, R2
BC282:  SUBS            R2, R1, R2
BC284:  LDR             R1, [SP,#0x60+var_34]
BC286:  CMP             R6, R1
BC288:  MOV             R1, R5
BC28A:  BEQ             loc_BC2B4
BC28C:  LDR             R1, [SP,#0x60+var_4C]
BC28E:  SUBS            R3, R2, R1
BC290:  MOV             R1, R5
BC292:  CMP             R3, #0x17
BC294:  BGT             loc_BC2B4
BC296:  CMP             R5, #1
BC298:  MOV.W           R1, #1
BC29C:  IT LT
BC29E:  MOVLT           R1, R5
BC2A0:  CMP             R3, #0xF
BC2A2:  STR             R1, [SP,#0x60+var_2C]
BC2A4:  BGT             loc_BC2B4
BC2A6:  CMP.W           R1, #0xFFFFFFFF
BC2AA:  MOV.W           R3, #0xFFFFFFFF
BC2AE:  IT LE
BC2B0:  MOVLE           R1, R3
BC2B2:  STR             R1, [SP,#0x60+var_2C]
BC2B4:  LDR             R3, [SP,#0x60+var_30]
BC2B6:  MOV.W           R8, R0,ASR#8
BC2BA:  CMP             R3, #1
BC2BC:  ITT EQ
BC2BE:  ANDEQ.W         R1, R1, R1,ASR#31
BC2C2:  STREQ           R1, [SP,#0x60+var_2C]
BC2C4:  CMP             R2, #0xF
BC2C6:  BLT             loc_BC2E6
BC2C8:  LDR             R0, [R7,#arg_C]
BC2CA:  LDR             R2, [SP,#0x60+var_50]
BC2CC:  MOV             R1, R0
BC2CE:  LDR             R0, [SP,#0x60+var_54]
BC2D0:  LDRB            R0, [R1,R0]
BC2D2:  LDRB            R1, [R1,R2]
BC2D4:  LSLS            R2, R0, #7
BC2D6:  LDR             R0, [R7,#arg_14]
BC2D8:  LSLS            R3, R1, #6
BC2DA:  ADD             R1, SP, #0x60+var_2C
BC2DC:  BLX             j_ec_laplace_encode
BC2E0:  LDR.W           LR, [R7,#arg_0]
BC2E4:  B               loc_BC33A
BC2E6:  CMP             R2, #2
BC2E8:  BLT             loc_BC31A
BC2EA:  CMP             R1, #1
BC2EC:  MOV.W           R0, #1
BC2F0:  IT GE
BC2F2:  MOVGE           R1, R0
BC2F4:  MOV.W           R0, #0xFFFFFFFF
BC2F8:  CMP.W           R1, #0xFFFFFFFF
BC2FC:  LDR             R2, =(unk_5B293 - 0xBC312)
BC2FE:  IT LE
BC300:  MOVLE           R1, R0
BC302:  MOVS            R3, #2
BC304:  LSLS            R0, R1, #1
BC306:  STR             R1, [SP,#0x60+var_2C]
BC308:  EOR.W           R1, R0, R1,ASR#31
BC30C:  LDR             R0, [R7,#arg_14]
BC30E:  ADD             R2, PC; unk_5B293
BC310:  BLX             j_ec_enc_icdf
BC314:  LDR.W           LR, [R7,#arg_0]
BC318:  B               loc_BC33A
BC31A:  CMP             R2, #1
BC31C:  BNE             loc_BC334
BC31E:  AND.W           R0, R1, R1,ASR#31
BC322:  STR             R0, [SP,#0x60+var_2C]
BC324:  NEGS            R1, R0
BC326:  LDR             R0, [R7,#arg_14]
BC328:  MOVS            R2, #1
BC32A:  BLX             j_ec_enc_bit_logp
BC32E:  LDR.W           LR, [R7,#arg_0]
BC332:  B               loc_BC33A
BC334:  MOV.W           R0, #0xFFFFFFFF
BC338:  STR             R0, [SP,#0x60+var_2C]
BC33A:  LDR             R0, [SP,#0x60+var_38]
BC33C:  ADD.W           R3, R4, #0x40 ; '@'
BC340:  LDR             R2, [SP,#0x60+var_2C]
BC342:  MOV             R12, R6
BC344:  LDR             R4, [SP,#0x60+var_40]
BC346:  LSRS            R3, R3, #7
BC348:  LDR             R0, [R0,#8]
BC34A:  SUB.W           R3, R3, R2,LSL#10
BC34E:  MLA.W           R1, R0, R9, R6
BC352:  LSLS            R6, R2, #0x12
BC354:  SMULTB.W        R6, R6, R4
BC358:  LDR             R4, [R7,#arg_10]
BC35A:  STRH.W          R3, [R4,R1,LSL#1]
BC35E:  ADD.W           R3, R10, R8
BC362:  MOVS            R4, #0
BC364:  ADD.W           R3, R3, R2,LSL#17
BC368:  MOVT            R4, #0xFFC8
BC36C:  CMN.W           R3, #0x380000
BC370:  IT LE
BC372:  MOVLE           R3, R4
BC374:  ADD             R4, SP, #0x60+var_28
BC376:  ADDS            R3, #0x40 ; '@'
BC378:  LSRS            R3, R3, #7
BC37A:  STRH.W          R3, [LR,R1,LSL#1]
BC37E:  RSB.W           R1, R6, R2,LSL#17
BC382:  ADD             R1, R10
BC384:  STR.W           R1, [R4,R9,LSL#2]
BC388:  SUBS            R1, R5, R2
BC38A:  IT MI
BC38C:  NEGMI           R1, R1
BC38E:  ADD.W           R9, R9, #1
BC392:  ADD             R11, R1
BC394:  LDR             R1, [R7,#arg_18]
BC396:  MOV             R6, R12
BC398:  CMP             R9, R1
BC39A:  BLT.W           loc_BC20A
BC39E:  LDR             R5, [SP,#0x60+var_58]
BC3A0:  ADDS            R6, #1
BC3A2:  CMP             R6, R5
BC3A4:  BNE.W           loc_BC1CC
BC3A8:  B               loc_BC3AE
BC3AA:  MOV.W           R11, #0
BC3AE:  LDR             R0, [R7,#arg_28]
BC3B0:  CMP             R0, #0
BC3B2:  LDR             R0, =(__stack_chk_guard_ptr - 0xBC3C0)
BC3B4:  IT NE
BC3B6:  MOVNE.W         R11, #0
BC3BA:  LDR             R1, [SP,#0x60+var_20]
BC3BC:  ADD             R0, PC; __stack_chk_guard_ptr
BC3BE:  LDR             R0, [R0]; __stack_chk_guard
BC3C0:  LDR             R0, [R0]
BC3C2:  SUBS            R0, R0, R1
BC3C4:  ITTTT EQ
BC3C6:  MOVEQ           R0, R11
BC3C8:  ADDEQ           SP, SP, #0x44 ; 'D'
BC3CA:  POPEQ.W         {R8-R11}
BC3CE:  POPEQ           {R4-R7,PC}
BC3D0:  BLX             __stack_chk_fail
