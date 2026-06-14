; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime13ReloadEntriesEv
; Address            : 0x1EA558 - 0x1EA6B6
; =========================================================

1EA558:  PUSH            {R4-R7,LR}
1EA55A:  ADD             R7, SP, #0xC
1EA55C:  PUSH.W          {R8,R9,R11}
1EA560:  MOV             R4, R0
1EA562:  MOV.W           R8, #0
1EA566:  LDR             R6, [R4,#0x18]
1EA568:  STR.W           R8, [R4,#0xC]
1EA56C:  CBZ             R6, loc_1EA57A
1EA56E:  MOVS            R0, #0x17
1EA570:  MULS            R0, R6; byte_count
1EA572:  BLX             malloc
1EA576:  MOV             R9, R0
1EA578:  B               loc_1EA57E
1EA57A:  MOV.W           R9, #0
1EA57E:  MOVS            R5, #0x17
1EA580:  MOV             R0, R9
1EA582:  MUL.W           R1, R6, R5
1EA586:  BLX             j___aeabi_memclr8_1
1EA58A:  LDRD.W          R0, R1, [R4,#0x18]; void *
1EA58E:  MUL.W           R2, R0, R5; size_t
1EA592:  MOV             R0, R9; void *
1EA594:  BLX             memcpy_1
1EA598:  MOV             R0, R4; this
1EA59A:  MOVS            R1, #1; bool
1EA59C:  MOVS            R2, #0; bool
1EA59E:  STR.W           R8, [R4,#0x18]
1EA5A2:  BLX             j__ZN15TextureDatabase11LoadEntriesEbb; TextureDatabase::LoadEntries(bool,bool)
1EA5A6:  CMP             R0, #1
1EA5A8:  BNE             loc_1EA69C
1EA5AA:  MOV             R0, R4; this
1EA5AC:  MOVS            R1, #1; bool
1EA5AE:  BLX             j__ZN22TextureDatabaseRuntime11SortEntriesEb; TextureDatabaseRuntime::SortEntries(bool)
1EA5B2:  LDR.W           R12, [R4,#0x18]
1EA5B6:  CMP.W           R12, #0
1EA5BA:  BEQ             loc_1EA5D8
1EA5BC:  LDR             R2, [R4,#0x1C]
1EA5BE:  ADD.W           R1, R9, #4
1EA5C2:  MOVS            R3, #0
1EA5C4:  ADDS            R2, #4
1EA5C6:  LDR             R5, [R1]
1EA5C8:  LDR             R0, [R2]
1EA5CA:  CMP             R0, R5
1EA5CC:  BNE             loc_1EA6A2
1EA5CE:  ADDS            R3, #1
1EA5D0:  ADDS            R1, #0x17
1EA5D2:  ADDS            R2, #0x17
1EA5D4:  CMP             R3, R12
1EA5D6:  BCC             loc_1EA5C6
1EA5D8:  CMP             R6, #0
1EA5DA:  BEQ             loc_1EA69C
1EA5DC:  MOVS            R0, #0xA
1EA5DE:  LDR             R1, [R4,#0x1C]
1EA5E0:  ADD.W           R2, R9, R0
1EA5E4:  ADD             R1, R0
1EA5E6:  LDR.W           R3, [R2,#9]
1EA5EA:  STR.W           R3, [R1,#9]
1EA5EE:  LDR             R1, [R4,#0x1C]
1EA5F0:  LDRH.W          R2, [R2,#-2]
1EA5F4:  ADD             R1, R0
1EA5F6:  AND.W           R2, R2, #0xF000
1EA5FA:  LDRH.W          R3, [R1,#-2]
1EA5FE:  BFC.W           R3, #0xC, #0x14
1EA602:  ORRS            R2, R3
1EA604:  STRH.W          R2, [R1,#-2]
1EA608:  LDR             R1, [R4,#0x1C]
1EA60A:  LDRB            R2, [R1,R0]
1EA60C:  LSLS            R2, R2, #0x1D
1EA60E:  BMI             loc_1EA692
1EA610:  ADD             R1, R0
1EA612:  LDR.W           R1, [R1,#9]
1EA616:  CBZ             R1, loc_1EA692
1EA618:  LDR.W           R12, [R1]
1EA61C:  LDRH.W          R2, [R12,#0x30]
1EA620:  BIC.W           R2, R2, #0x6F0
1EA624:  STRH.W          R2, [R12,#0x30]
1EA628:  LDR             R5, [R4,#0x1C]
1EA62A:  LDRH            R3, [R5,R0]
1EA62C:  TST.W           R3, #8
1EA630:  ITTTT NE
1EA632:  ORRNE.W         R2, R2, #0x80
1EA636:  STRHNE.W        R2, [R12,#0x30]
1EA63A:  LDRNE           R5, [R4,#0x1C]
1EA63C:  LDRHNE          R3, [R5,R0]
1EA63E:  LSLS            R1, R3, #0x1A
1EA640:  BPL             loc_1EA656
1EA642:  ADDS            R1, R5, R0
1EA644:  LDRB            R1, [R1,#3]
1EA646:  CMP             R1, #0
1EA648:  ITTTT NE
1EA64A:  ORRNE.W         R2, R2, #0x40 ; '@'
1EA64E:  STRHNE.W        R2, [R12,#0x30]
1EA652:  LDRNE           R1, [R4,#0x1C]
1EA654:  LDRHNE          R3, [R1,R0]
1EA656:  LSLS            R1, R3, #0x19
1EA658:  ITTTT MI
1EA65A:  ORRMI.W         R2, R2, #0x20 ; ' '
1EA65E:  STRHMI.W        R2, [R12,#0x30]
1EA662:  LDRMI           R1, [R4,#0x1C]
1EA664:  LDRHMI          R3, [R1,R0]
1EA666:  LSLS            R1, R3, #0x18
1EA668:  ITTTT MI
1EA66A:  ORRMI.W         R2, R2, #0x10
1EA66E:  STRHMI.W        R2, [R12,#0x30]
1EA672:  LDRMI           R1, [R4,#0x1C]
1EA674:  LDRHMI          R3, [R1,R0]
1EA676:  LSLS            R1, R3, #0x17
1EA678:  ITTTT MI
1EA67A:  ORRMI.W         R2, R2, #0x200
1EA67E:  STRHMI.W        R2, [R12,#0x30]
1EA682:  LDRMI           R1, [R4,#0x1C]
1EA684:  LDRHMI          R3, [R1,R0]
1EA686:  LSLS            R1, R3, #0x16
1EA688:  ITT MI
1EA68A:  ORRMI.W         R1, R2, #0x400
1EA68E:  STRHMI.W        R1, [R12,#0x30]
1EA692:  SUBS            R6, #1
1EA694:  ADD.W           R0, R0, #0x17
1EA698:  BNE             loc_1EA5DE
1EA69A:  B               loc_1EA6A2
1EA69C:  CMP.W           R9, #0
1EA6A0:  BEQ             loc_1EA6B0
1EA6A2:  MOV             R0, R9; p
1EA6A4:  POP.W           {R8,R9,R11}
1EA6A8:  POP.W           {R4-R7,LR}
1EA6AC:  B.W             j_free
1EA6B0:  POP.W           {R8,R9,R11}
1EA6B4:  POP             {R4-R7,PC}
