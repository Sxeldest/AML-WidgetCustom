; =========================================================
; Game Engine Function: sub_E53A0
; Address            : 0xE53A0 - 0xE54B6
; =========================================================

E53A0:  PUSH            {R4-R7,LR}
E53A2:  ADD             R7, SP, #0xC
E53A4:  PUSH.W          {R8,R9,R11}
E53A8:  SUB             SP, SP, #0x10
E53AA:  MOV             R4, R0
E53AC:  LDR             R0, [R0,#0x40]
E53AE:  CMP             R0, #0
E53B0:  BEQ             loc_E547A
E53B2:  LDR             R0, [R4,#0x44]
E53B4:  CMP             R0, #0
E53B6:  BEQ             loc_E54B2
E53B8:  LDR             R1, [R4,#0x54]
E53BA:  LSLS            R2, R1, #0x1B
E53BC:  BMI             loc_E53D4
E53BE:  LSLS            R1, R1, #0x1C
E53C0:  BPL             loc_E547A
E53C2:  LDRB.W          R1, [R4,#0x5A]
E53C6:  LDR             R2, [R4,#0x4C]
E53C8:  STR             R2, [SP,#0x28+var_20]
E53CA:  CBZ             R1, loc_E5434
E53CC:  LDRD.W          R0, R1, [R4,#0xC]
E53D0:  SUBS            R5, R1, R0
E53D2:  B               loc_E5450
E53D4:  LDRD.W          R0, R1, [R4,#0x14]
E53D8:  CMP             R1, R0
E53DA:  BEQ             loc_E53F0
E53DC:  LDR             R0, [R4]
E53DE:  MOV.W           R1, #0xFFFFFFFF
E53E2:  MOV.W           R5, #0xFFFFFFFF
E53E6:  LDR             R2, [R0,#0x34]
E53E8:  MOV             R0, R4
E53EA:  BLX             R2
E53EC:  ADDS            R0, #1
E53EE:  BEQ             loc_E547C
E53F0:  ADD.W           R8, R4, #0x48 ; 'H'
E53F4:  ADD.W           R9, SP, #0x28+var_1C
E53F8:  LDR             R0, [R4,#0x44]
E53FA:  LDR             R2, [R4,#0x20]
E53FC:  LDR             R1, [R4,#0x34]
E53FE:  LDR             R3, [R0]
E5400:  LDR             R6, [R3,#0x14]
E5402:  ADDS            R3, R2, R1
E5404:  MOV             R1, R8
E5406:  STR.W           R9, [SP,#0x28+var_28]
E540A:  BLX             R6
E540C:  MOV             R6, R0
E540E:  LDR             R0, [R4,#0x20]; ptr
E5410:  LDR             R1, [SP,#0x28+var_1C]
E5412:  LDR             R3, [R4,#0x40]; s
E5414:  SUBS            R5, R1, R0
E5416:  MOVS            R1, #1; size
E5418:  MOV             R2, R5; n
E541A:  BLX             fwrite
E541E:  CMP             R0, R5
E5420:  BNE             loc_E545E
E5422:  CMP             R6, #1
E5424:  BEQ             loc_E53F8
E5426:  CMP             R6, #2
E5428:  BEQ             loc_E545E
E542A:  LDR             R0, [R4,#0x40]; stream
E542C:  BLX             fflush
E5430:  CBNZ            R0, loc_E545E
E5432:  B               loc_E547A
E5434:  LDR             R1, [R0]
E5436:  LDR             R1, [R1,#0x18]
E5438:  BLX             R1
E543A:  LDRD.W          R3, R1, [R4,#0x24]
E543E:  CMP             R0, #1
E5440:  SUB.W           R5, R1, R3
E5444:  BLT             loc_E5486
E5446:  LDRD.W          R1, R2, [R4,#0xC]
E544A:  SUBS            R1, R2, R1
E544C:  MLA.W           R5, R1, R0, R5
E5450:  MOVS            R6, #0
E5452:  LDR             R0, [R4,#0x40]; stream
E5454:  NEGS            R1, R5; off
E5456:  MOVS            R2, #1; whence
E5458:  BLX             fseeko
E545C:  CBZ             R0, loc_E5464
E545E:  MOV.W           R5, #0xFFFFFFFF
E5462:  B               loc_E547C
E5464:  CBZ             R6, loc_E546A
E5466:  LDR             R0, [SP,#0x28+var_20]
E5468:  STR             R0, [R4,#0x48]
E546A:  LDR             R0, [R4,#0x20]
E546C:  MOVS            R1, #0
E546E:  STR             R1, [R4,#0x54]
E5470:  STRD.W          R1, R1, [R4,#8]
E5474:  STR             R1, [R4,#0x10]
E5476:  STRD.W          R0, R0, [R4,#0x24]
E547A:  MOVS            R5, #0
E547C:  MOV             R0, R5
E547E:  ADD             SP, SP, #0x10
E5480:  POP.W           {R8,R9,R11}
E5484:  POP             {R4-R7,PC}
E5486:  LDRD.W          R1, R0, [R4,#0xC]
E548A:  CMP             R1, R0
E548C:  BEQ             loc_E5450
E548E:  LDR             R0, [R4,#0x44]
E5490:  LDR.W           R12, [R4,#8]
E5494:  LDR             R2, [R4,#0x20]
E5496:  LDR             R6, [R0]
E5498:  SUB.W           R1, R1, R12
E549C:  LDR             R6, [R6,#0x20]
E549E:  STR             R1, [SP,#0x28+var_28]
E54A0:  ADD             R1, SP, #0x28+var_20
E54A2:  BLX             R6
E54A4:  LDRD.W          R1, R2, [R4,#0x20]
E54A8:  MOVS            R6, #1
E54AA:  ADD             R0, R1
E54AC:  ADDS            R1, R5, R2
E54AE:  SUBS            R5, R1, R0
E54B0:  B               loc_E5452
E54B2:  BL              sub_E5754
