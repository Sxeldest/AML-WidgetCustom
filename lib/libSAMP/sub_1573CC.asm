; =========================================================
; Game Engine Function: sub_1573CC
; Address            : 0x1573CC - 0x157522
; =========================================================

1573CC:  PUSH            {R4-R7,LR}
1573CE:  ADD             R7, SP, #0xC
1573D0:  PUSH.W          {R8-R11}
1573D4:  SUB             SP, SP, #0x74
1573D6:  STRD.W          R2, R0, [SP,#0x90+var_5C]
1573DA:  MOV             R4, R2
1573DC:  LDRD.W          R2, R3, [R7,#arg_0]
1573E0:  ADD             R0, SP, #0x90+var_50
1573E2:  STR             R1, [SP,#0x90+var_54]
1573E4:  BL              sub_15764A
1573E8:  LDR             R1, [SP,#0x90+var_28]
1573EA:  MOV             R0, #0xFFFFFFC3
1573EE:  MOVW            R2, #:lower16:(elf_gnu_hash_chain+0x21AD)
1573F2:  LDR             R3, =(unk_B9EA0 - 0x157400)
1573F4:  SUBS            R0, R0, R1
1573F6:  MOVT            R2, #:upper16:(elf_gnu_hash_chain+0x21AD)
1573FA:  CMP             R0, #0
1573FC:  ADD             R3, PC; unk_B9EA0
1573FE:  MUL.W           R2, R0, R2
157402:  MOV             R9, R3
157404:  MOV.W           R6, R2,ASR#31
157408:  ADD.W           R2, R2, R6,LSR#14
15740C:  MOV.W           R6, #1
157410:  MOV.W           R5, R2,ASR#18
157414:  IT GT
157416:  ADDGT.W         R5, R6, R2,ASR#18
15741A:  ADDW            R0, R5, #0x133
15741E:  LDR.W           R12, [SP,#0x90+var_48]
157422:  UBFX.W          R2, R0, #0x1C, #3
157426:  LDRD.W          R11, R8, [SP,#0x90+var_30]
15742A:  ADD             R0, R2
15742C:  MOV             R2, #0xFFFFFFF1
157430:  SXTH            R0, R0
157432:  AND.W           R5, R2, R0,LSL#1
157436:  ADDS            R2, R3, R5
157438:  LDR             R3, [SP,#0x90+var_40]
15743A:  LDRD.W          R0, R6, [R2,#4]
15743E:  LDR             R2, [R2,#0xC]
157440:  STR             R3, [SP,#0x90+var_60]
157442:  NEGS            R2, R2
157444:  STR             R2, [R4]
157446:  ADD.W           R2, R6, #0x40 ; '@'
15744A:  LDRD.W          R10, R3, [SP,#0x90+var_3C]
15744E:  ADD.W           LR, R2, R1
157452:  ADD.W           R6, R2, R12
157456:  ADD             R2, R3
157458:  LDR.W           R3, [R9,R5]
15745C:  LDRD.W          R4, R1, [SP,#0x90+var_50]
157460:  STR             R6, [SP,#0x90+var_78]
157462:  STR             R2, [SP,#0x90+var_88]
157464:  UMULL.W         R2, R6, R0, R4
157468:  STR.W           LR, [SP,#0x90+var_68]
15746C:  MOV.W           LR, #0
157470:  STR.W           LR, [SP,#0x90+var_64]
157474:  UMULL.W         R12, R5, R3, R1
157478:  STR.W           LR, [SP,#0x90+var_74]
15747C:  STR.W           LR, [SP,#0x90+var_84]
157480:  UMAAL.W         R5, R6, R0, R1
157484:  UMULL.W         R1, R4, R3, R4
157488:  ADDS            R2, R2, R4
15748A:  ADC.W           R4, LR, #0
15748E:  ADDS.W          R2, R2, R12
157492:  ADC.W           R4, R4, #0
157496:  ADDS.W          R2, R2, #0x80000000
15749A:  ADCS.W          R2, R5, R4
15749E:  STR             R2, [SP,#0x90+var_80]
1574A0:  ADC.W           R2, R6, #0
1574A4:  STR             R2, [SP,#0x90+var_7C]
1574A6:  UMULL.W         R2, R6, R0, R11
1574AA:  UMULL.W         R12, R4, R3, R8
1574AE:  UMULL.W         R1, R5, R3, R11
1574B2:  UMAAL.W         R4, R6, R0, R8
1574B6:  ADDS            R1, R2, R5
1574B8:  ADC.W           R2, LR, #0
1574BC:  ADDS.W          R1, R1, R12
1574C0:  ADC.W           R2, R2, #0
1574C4:  ADDS.W          R1, R1, #0x80000000
1574C8:  ADCS.W          R1, R4, R2
1574CC:  ADC.W           R2, R6, #0
1574D0:  SUBS            R1, #1
1574D2:  STR             R1, [SP,#0x90+var_70]
1574D4:  LDR             R1, [SP,#0x90+var_60]
1574D6:  SBC.W           R12, R2, #0
1574DA:  UMULL.W         R5, R4, R3, R10
1574DE:  STR.W           R12, [SP,#0x90+var_6C]
1574E2:  UMULL.W         R2, R6, R0, R1
1574E6:  UMAAL.W         R4, R6, R0, R10
1574EA:  UMULL.W         R0, R3, R3, R1
1574EE:  LDR             R1, [SP,#0x90+var_54]
1574F0:  ADDS            R0, R2, R3
1574F2:  ADC.W           R2, LR, #0
1574F6:  ADDS            R0, R0, R5
1574F8:  ADC.W           R2, R2, #0
1574FC:  ADDS.W          R0, R0, #0x80000000
157500:  ADCS.W          R0, R4, R2
157504:  ADC.W           R2, R6, #0
157508:  ADDS            R0, #1
15750A:  STR             R0, [SP,#0x90+var_90]
15750C:  ADC.W           R0, R2, #0
157510:  STR             R0, [SP,#0x90+var_8C]
157512:  LDRD.W          R2, R0, [SP,#0x90+var_5C]
157516:  BL              sub_157736
15751A:  ADD             SP, SP, #0x74 ; 't'
15751C:  POP.W           {R8-R11}
157520:  POP             {R4-R7,PC}
