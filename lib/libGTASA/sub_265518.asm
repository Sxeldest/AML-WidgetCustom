; =========================================================
; Game Engine Function: sub_265518
; Address            : 0x265518 - 0x26566E
; =========================================================

265518:  PUSH            {R4-R7,LR}
26551A:  ADD             R7, SP, #0xC
26551C:  PUSH.W          {R8-R11}
265520:  SUB             SP, SP, #0x24
265522:  MOV             R4, R0
265524:  MOV.W           R1, #0x3E8
265528:  LDRD.W          R2, R0, [R4,#0x10]
26552C:  MOVW            R3, #:lower16:(elf_hash_chain+0x6048)
265530:  UMULL.W         R0, R1, R0, R1
265534:  MOVT            R3, #:upper16:(elf_hash_chain+0x6048)
265538:  LDR             R5, [R4,R3]
26553A:  MOVS            R3, #0
26553C:  BLX             __aeabi_uldivmod
265540:  MOV             R8, R0
265542:  MOV             R6, R1
265544:  BLX             j_timeGetTime
265548:  STRD.W          R0, R5, [SP,#0x40+var_38]
26554C:  MOVS.W          R0, R6,LSR#1
265550:  LDR             R1, [R5]
265552:  MOV.W           R0, R8,RRX
265556:  CMP             R1, #0
265558:  BNE.W           loc_265664
26555C:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
265560:  MOVW            R3, #:lower16:(stru_44B78.st_size+3)
265564:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
265568:  MOVT            R3, #:upper16:(stru_44B78.st_size+3)
26556C:  MULS            R1, R0
26556E:  ADD.W           R10, SP, #0x40+var_30
265572:  MOV.W           R8, #0
265576:  MOV.W           R9, #0
26557A:  LSRS            R2, R1, #9
26557C:  UMULL.W         R2, R3, R2, R3
265580:  MOV             R2, #0x10624DD3
265588:  UMULL.W         R0, R2, R0, R2
26558C:  LSRS            R0, R3, #7
26558E:  MOV             R3, #0x3B9ACA00
265596:  MLS.W           R0, R0, R3, R1
26559A:  STR             R0, [SP,#0x40+var_3C]
26559C:  LSRS            R0, R2, #6
26559E:  STR             R0, [SP,#0x40+var_40]
2655A0:  LDRB            R0, [R4,#4]
2655A2:  CMP             R0, #0
2655A4:  BEQ             loc_265664
2655A6:  BLX             j_timeGetTime
2655AA:  LDR             R1, [SP,#0x40+var_38]
2655AC:  MOV.W           R2, #0x3E8
2655B0:  LDR.W           R11, [R4,#0x10]
2655B4:  MOVS            R3, #0
2655B6:  SUBS            R0, R0, R1
2655B8:  UMULL.W         R0, R1, R0, R11
2655BC:  BLX             __aeabi_uldivmod
2655C0:  MOV             R6, R0
2655C2:  SUBS.W          R0, R6, R8
2655C6:  MOV             R5, R1
2655C8:  SBCS.W          R0, R5, R9
2655CC:  BCS             loc_2655F0
2655CE:  MOVS            R0, #0
2655D0:  MOV             R1, R11
2655D2:  MOV.W           R2, #0x3E8
2655D6:  MOVS            R3, #0
2655D8:  BLX             __aeabi_uldivmod
2655DC:  SUBS.W          R0, R0, R8
2655E0:  MOV.W           R8, #0
2655E4:  SBC.W           R1, R1, R9
2655E8:  ADDS            R6, R6, R0
2655EA:  ADCS            R5, R1
2655EC:  MOV.W           R9, #0
2655F0:  LDR             R2, [R4,#0x14]
2655F2:  SUBS.W          R0, R6, R8
2655F6:  SBC.W           R1, R5, R9
2655FA:  SUBS            R0, R0, R2
2655FC:  SBCS.W          R0, R1, #0
265600:  BCS             loc_26563A
265602:  LDR             R0, [SP,#0x40+var_40]
265604:  ADD             R6, SP, #0x40+var_28
265606:  STR             R0, [SP,#0x40+var_28]
265608:  MOV             R1, R10; remaining
26560A:  LDR             R0, [SP,#0x40+var_3C]
26560C:  STR             R0, [SP,#0x40+var_24]
26560E:  MOV             R0, R6; requested_time
265610:  BLX             nanosleep
265614:  ADDS            R0, #1
265616:  BNE             loc_26565C
265618:  BLX             __errno
26561C:  MOV             R5, R0
26561E:  LDR             R0, [R5]
265620:  CMP             R0, #4
265622:  BNE             loc_26565C
265624:  LDRD.W          R0, R1, [SP,#0x40+var_30]
265628:  STRD.W          R0, R1, [SP,#0x40+var_28]
26562C:  MOV             R0, R6; requested_time
26562E:  MOV             R1, R10; remaining
265630:  BLX             nanosleep
265634:  ADDS            R0, #1
265636:  BEQ             loc_26561E
265638:  B               loc_26565C
26563A:  MOV             R0, R4
26563C:  MOVS            R1, #0
26563E:  BLX             j_aluMixData
265642:  LDR             R2, [R4,#0x14]
265644:  ADDS.W          R8, R8, R2
265648:  ADC.W           R9, R9, #0
26564C:  SUBS.W          R0, R6, R8
265650:  SBC.W           R1, R5, R9
265654:  SUBS            R0, R0, R2
265656:  SBCS.W          R0, R1, #0
26565A:  BCS             loc_26563A
26565C:  LDR             R0, [SP,#0x40+var_34]
26565E:  LDR             R0, [R0]
265660:  CMP             R0, #0
265662:  BEQ             loc_2655A0
265664:  MOVS            R0, #0
265666:  ADD             SP, SP, #0x24 ; '$'
265668:  POP.W           {R8-R11}
26566C:  POP             {R4-R7,PC}
