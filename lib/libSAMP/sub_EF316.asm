; =========================================================
; Game Engine Function: sub_EF316
; Address            : 0xEF316 - 0xEF3EC
; =========================================================

EF316:  PUSH            {R4-R7,LR}
EF318:  ADD             R7, SP, #0xC
EF31A:  PUSH.W          {R8-R10}
EF31E:  SUB             SP, SP, #8
EF320:  MOV             R4, R0
EF322:  CBZ             R1, loc_EF33A
EF324:  LDRB            R0, [R4,#4]
EF326:  CBNZ            R0, loc_EF33A
EF328:  LDR             R2, [R4]
EF32A:  MOVS            R3, #0x45 ; 'E'
EF32C:  LDRD.W          R0, R1, [R4,#8]
EF330:  STR             R3, [SP,#0x20+var_20]
EF332:  MOVS            R3, #0x43 ; 'C'
EF334:  BL              sub_EFCE0
EF338:  B               loc_EF3E2
EF33A:  LDR             R0, [R4,#0xC]
EF33C:  MOVS            R2, #0x64 ; 'd'
EF33E:  MOVS            R3, #0
EF340:  MOV.W           R10, #0
EF344:  LDR.W           R8, [R0,#0x14]
EF348:  MOVW            R0, #0x76C
EF34C:  ADDS.W          R5, R8, R0
EF350:  MOV.W           R9, R8,ASR#31
EF354:  ADC.W           R6, R9, #0
EF358:  MOV             R0, R5
EF35A:  MOV             R1, R6
EF35C:  BLX             sub_221404
EF360:  MOV             R2, R0
EF362:  MOV             R0, #0xFFFFFF9D
EF366:  SUBS            R0, R5, R0
EF368:  SBCS.W          R0, R6, #0xFFFFFFFF
EF36C:  BCC             loc_EF3B0
EF36E:  LDR             R5, [R4,#8]
EF370:  LDRD.W          R0, R2, [R5,#8]
EF374:  ADDS            R1, R0, #1
EF376:  CMP             R2, R1
EF378:  BCS             loc_EF386
EF37A:  LDR             R0, [R5]
EF37C:  LDR             R2, [R0]
EF37E:  MOV             R0, R5
EF380:  BLX             R2
EF382:  LDR             R0, [R5,#8]
EF384:  ADDS            R1, R0, #1
EF386:  LDR             R2, [R5,#4]
EF388:  STR             R1, [R5,#8]
EF38A:  MOVS            R1, #0x2D ; '-'
EF38C:  STRB            R1, [R2,R0]
EF38E:  LDR             R4, [R4,#8]
EF390:  LDRD.W          R0, R2, [R4,#8]
EF394:  ADDS            R1, R0, #1
EF396:  CMP             R2, R1
EF398:  BCS             loc_EF3A6
EF39A:  LDR             R0, [R4]
EF39C:  LDR             R2, [R0]
EF39E:  MOV             R0, R4
EF3A0:  BLX             R2
EF3A2:  LDR             R0, [R4,#8]
EF3A4:  ADDS            R1, R0, #1
EF3A6:  LDR             R2, [R4,#4]
EF3A8:  STR             R1, [R4,#8]
EF3AA:  MOVS            R1, #0x30 ; '0'
EF3AC:  STRB            R1, [R2,R0]
EF3AE:  B               loc_EF3E4
EF3B0:  MOVW            R0, #0x7CF
EF3B4:  MOVW            R6, #0x2772
EF3B8:  ADDS.W          R0, R0, R8
EF3BC:  ADC.W           R3, R9, #0
EF3C0:  SUBS            R0, R6, R0
EF3C2:  SBCS.W          R0, R10, R3
EF3C6:  BCC             loc_EF3DA
EF3C8:  MOV             R0, R4
EF3CA:  MOV             R1, R2
EF3CC:  ADD             SP, SP, #8
EF3CE:  POP.W           {R8-R10}
EF3D2:  POP.W           {R4-R7,LR}
EF3D6:  B.W             sub_EFC70
EF3DA:  LDR             R0, [R4,#8]
EF3DC:  MOV             R3, R1
EF3DE:  BL              sub_DCFF4
EF3E2:  STR             R0, [R4,#8]
EF3E4:  ADD             SP, SP, #8
EF3E6:  POP.W           {R8-R10}
EF3EA:  POP             {R4-R7,PC}
