; =========================================================
; Game Engine Function: sub_1702CC
; Address            : 0x1702CC - 0x1703CC
; =========================================================

1702CC:  PUSH            {R4-R7,LR}
1702CE:  ADD             R7, SP, #0xC
1702D0:  PUSH.W          {R8-R11}
1702D4:  SUB             SP, SP, #0xC
1702D6:  LDR             R5, =(dword_381B58 - 0x1702E4)
1702D8:  MOV             R6, R0
1702DA:  MOV             R11, R1
1702DC:  MOVW            R1, #0x1A9C
1702E0:  ADD             R5, PC; dword_381B58
1702E2:  ADD.W           R3, R6, R6,LSL#3
1702E6:  LDR             R0, [R5]
1702E8:  ADDS            R4, R0, R1
1702EA:  MOVW            R1, #0x1AA4
1702EE:  LDR             R2, [R0,R1]
1702F0:  MOV.W           R1, #0x1AA0
1702F4:  LDR             R1, [R0,R1]
1702F6:  ADD.W           R2, R2, R3,LSL#2
1702FA:  LDRD.W          R9, R10, [R2,#4]
1702FE:  CMP             R1, R6
170300:  BGE             loc_170374
170302:  CMP             R1, #0
170304:  ITTE NE
170306:  ADDNE.W         R2, R1, R1,LSR#31
17030A:  ADDNE.W         R8, R1, R2,ASR#1
17030E:  MOVEQ.W         R8, #8
170312:  CMP             R8, R6
170314:  IT LE
170316:  MOVLE           R8, R6
170318:  CMP             R1, R8
17031A:  BGE             loc_170374
17031C:  LDR             R1, =(off_2390AC - 0x170328)
17031E:  LDR             R3, =(dword_381B60 - 0x17032A)
170320:  LDR.W           R2, [R0,#0x370]
170324:  ADD             R1, PC; off_2390AC
170326:  ADD             R3, PC; dword_381B60
170328:  STR             R3, [SP,#0x28+var_20]
17032A:  LDR.W           R12, [R1]; sub_171190
17032E:  ADDS            R2, #1
170330:  STR.W           R2, [R0,#0x370]
170334:  ADD.W           R0, R8, R8,LSL#3
170338:  LDR             R1, [R3]
17033A:  LSLS            R0, R0, #2
17033C:  BLX             R12; sub_171190
17033E:  LDR             R1, [R4,#8]; src
170340:  CBZ             R1, loc_170370
170342:  LDR             R2, [R4]
170344:  STR             R0, [SP,#0x28+var_24]
170346:  ADD.W           R2, R2, R2,LSL#3
17034A:  LSLS            R2, R2, #2; n
17034C:  BLX             j_memcpy
170350:  LDR             R0, [R4,#8]
170352:  CBZ             R0, loc_170362
170354:  LDR             R1, [R5]
170356:  CBZ             R1, loc_170362
170358:  LDR.W           R2, [R1,#0x370]
17035C:  SUBS            R2, #1
17035E:  STR.W           R2, [R1,#0x370]
170362:  LDR             R2, =(off_2390B0 - 0x17036A)
170364:  LDR             R1, [SP,#0x28+var_20]
170366:  ADD             R2, PC; off_2390B0
170368:  LDR             R1, [R1]
17036A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
17036C:  BLX             R2; j_opus_decoder_destroy_0
17036E:  LDR             R0, [SP,#0x28+var_24]
170370:  STRD.W          R8, R0, [R4,#4]
170374:  CMP.W           R11, #0
170378:  STR             R6, [R4]
17037A:  BEQ             loc_1703A0
17037C:  CMP.W           R10, #0
170380:  BEQ             loc_1703A8
170382:  LDRB.W          R0, [R10,#0x7B]
170386:  CBNZ            R0, loc_1703AC
170388:  CMP.W           R9, #0
17038C:  BEQ             loc_1703AC
17038E:  MOV             R0, R9
170390:  MOVS            R1, #0
170392:  ADD             SP, SP, #0xC
170394:  POP.W           {R8-R11}
170398:  POP.W           {R4-R7,LR}
17039C:  B.W             sub_16A8F8
1703A0:  ADD             SP, SP, #0xC
1703A2:  POP.W           {R8-R11}
1703A6:  POP             {R4-R7,PC}
1703A8:  MOVS            R0, #0
1703AA:  B               loc_1703BE
1703AC:  LDR             R0, [R4,#0x70]
1703AE:  CBZ             R0, loc_1703B4
1703B0:  MOV             R0, R10
1703B2:  B               loc_1703BE
1703B4:  LDR.W           R0, [R10,#0x308]
1703B8:  CMP             R0, #0
1703BA:  IT EQ
1703BC:  MOVEQ           R0, R10
1703BE:  ADD             SP, SP, #0xC
1703C0:  POP.W           {R8-R11}
1703C4:  POP.W           {R4-R7,LR}
1703C8:  B.W             sub_168010
