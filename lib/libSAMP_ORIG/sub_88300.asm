; =========================================================
; Game Engine Function: sub_88300
; Address            : 0x88300 - 0x883EA
; =========================================================

88300:  PUSH            {R4-R7,LR}
88302:  ADD             R7, SP, #0xC
88304:  PUSH.W          {R8-R11}
88308:  SUB             SP, SP, #4
8830A:  LDR             R0, =(dword_1ACF68 - 0x88316)
8830C:  MOV             R9, R1
8830E:  MOVW            R1, #0x2CD4
88312:  ADD             R0, PC; dword_1ACF68
88314:  LDR             R2, [R0]
88316:  MOV             R11, R0
88318:  MOVW            R0, #0x2CDC
8831C:  ADDS            R4, R2, R1
8831E:  LDR             R0, [R2,R0]
88320:  CBZ             R0, loc_88346
88322:  LDR             R1, =(off_11724C - 0x8832E)
88324:  MOV.W           R8, #0
88328:  LDR             R3, =(dword_1ACF70 - 0x88334)
8832A:  ADD             R1, PC; off_11724C
8832C:  LDR.W           R6, [R2,#0x370]
88330:  ADD             R3, PC; dword_1ACF70
88332:  STRD.W          R8, R8, [R4]
88336:  LDR             R5, [R1]; j_opus_decoder_destroy_0
88338:  LDR             R1, [R3]
8833A:  SUBS            R3, R6, #1
8833C:  STR.W           R3, [R2,#0x370]
88340:  BLX             R5; j_opus_decoder_destroy_0
88342:  STR.W           R8, [R4,#8]
88346:  MOV             R0, R9; s
88348:  BLX             strlen
8834C:  MOV             R5, R0
8834E:  LDR             R0, [R4,#4]
88350:  ADD.W           R10, R5, #1
88354:  CMP             R0, R5
88356:  BGT             loc_883CE
88358:  CMP             R0, #0
8835A:  ITTE NE
8835C:  ADDNE.W         R1, R0, R0,LSR#31
88360:  ADDNE.W         R1, R0, R1,ASR#1
88364:  MOVEQ           R1, #8
88366:  CMP             R1, R10
88368:  MOV             R6, R10
8836A:  IT GT
8836C:  MOVGT           R6, R1
8836E:  CMP             R0, R6
88370:  BGE             loc_883CE
88372:  MOV             R0, R11
88374:  LDR.W           R0, [R11]
88378:  CMP             R0, #0
8837A:  ITTT NE
8837C:  LDRNE.W         R1, [R0,#0x370]
88380:  ADDNE           R1, #1
88382:  STRNE.W         R1, [R0,#0x370]
88386:  LDR             R1, =(dword_1ACF70 - 0x8838E)
88388:  LDR             R0, =(off_117248 - 0x88392)
8838A:  ADD             R1, PC; dword_1ACF70
8838C:  STR             R1, [SP,#0x20+var_20]
8838E:  ADD             R0, PC; off_117248
88390:  LDR             R1, [R1]
88392:  LDR             R2, [R0]; sub_9A720
88394:  MOV             R0, R6
88396:  BLX             R2; sub_9A720
88398:  LDR             R1, [R4,#8]; src
8839A:  MOV             R8, R0
8839C:  CBZ             R1, loc_883CA
8839E:  LDR             R2, [R4]; n
883A0:  MOV             R0, R8; dest
883A2:  BLX             j_memcpy
883A6:  LDR             R0, [R4,#8]
883A8:  CMP             R0, #0
883AA:  ITTTT NE
883AC:  LDRNE.W         R1, [R11]
883B0:  CMPNE           R1, #0
883B2:  LDRNE.W         R2, [R1,#0x370]
883B6:  SUBNE           R2, #1
883B8:  IT NE
883BA:  STRNE.W         R2, [R1,#0x370]
883BE:  LDR             R2, =(off_11724C - 0x883C6)
883C0:  LDR             R1, [SP,#0x20+var_20]
883C2:  ADD             R2, PC; off_11724C
883C4:  LDR             R1, [R1]
883C6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
883C8:  BLX             R2; j_opus_decoder_destroy_0
883CA:  STRD.W          R6, R8, [R4,#4]
883CE:  LDR             R0, [R4,#8]; dest
883D0:  MOV             R1, R9; src
883D2:  MOV             R2, R5; n
883D4:  STR.W           R10, [R4]
883D8:  BLX             j_memcpy
883DC:  LDR             R0, [R4,#8]
883DE:  MOVS            R1, #0
883E0:  STRB            R1, [R0,R5]
883E2:  ADD             SP, SP, #4
883E4:  POP.W           {R8-R11}
883E8:  POP             {R4-R7,PC}
