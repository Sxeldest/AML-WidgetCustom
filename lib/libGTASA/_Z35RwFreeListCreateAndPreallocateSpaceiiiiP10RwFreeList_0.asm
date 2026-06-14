; =========================================================
; Game Engine Function: _Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList_0
; Address            : 0x1E4584 - 0x1E46CA
; =========================================================

1E4584:  PUSH            {R4-R7,LR}
1E4586:  ADD             R7, SP, #0xC
1E4588:  PUSH.W          {R8-R11}
1E458C:  SUB             SP, SP, #4
1E458E:  MOV             R9, R0
1E4590:  LDR             R0, =(dword_682974 - 0x1E459C)
1E4592:  MOV             R5, R3
1E4594:  LDR.W           R10, [R7,#arg_0]
1E4598:  ADD             R0, PC; dword_682974
1E459A:  MOV             R6, R2
1E459C:  MOV             R8, R1
1E459E:  LDR             R0, [R0]
1E45A0:  CMP             R0, #0
1E45A2:  IT EQ
1E45A4:  MOVEQ           R5, R0
1E45A6:  CMP             R6, #0
1E45A8:  IT EQ
1E45AA:  MOVEQ           R6, #4
1E45AC:  CMP.W           R10, #0
1E45B0:  BEQ             loc_1E45B6
1E45B2:  MOVS            R0, #3
1E45B4:  B               loc_1E45DE
1E45B6:  LDR             R0, =(RwEngineInstance_ptr - 0x1E45BE)
1E45B8:  LDR             R1, =(dword_6BD054 - 0x1E45C0)
1E45BA:  ADD             R0, PC; RwEngineInstance_ptr
1E45BC:  ADD             R1, PC; dword_6BD054
1E45BE:  LDR             R2, [R0]; RwEngineInstance
1E45C0:  LDR             R0, [R1]
1E45C2:  LDR             R1, [R2]
1E45C4:  CMP             R0, #0
1E45C6:  ITTE EQ
1E45C8:  LDREQ.W         R1, [R1,#0x12C]
1E45CC:  MOVEQ           R0, #0x24 ; '$'
1E45CE:  LDRNE.W         R1, [R1,#0x13C]
1E45D2:  BLX             R1
1E45D4:  MOV             R10, R0
1E45D6:  CMP.W           R10, #0
1E45DA:  BEQ             loc_1E46AE
1E45DC:  MOVS            R0, #2
1E45DE:  ADD.W           R1, R9, R6
1E45E2:  NEGS            R2, R6
1E45E4:  SUBS            R1, #1
1E45E6:  MOVW            R3, #0xFFFE
1E45EA:  ANDS            R1, R2
1E45EC:  ADD.W           R2, R8, #0xF
1E45F0:  MOVT            R3, #0x1FFF
1E45F4:  ADD.W           R4, R10, #0x10
1E45F8:  AND.W           R9, R3, R2,LSR#3
1E45FC:  CMP             R5, #0
1E45FE:  STM.W           R10, {R1,R8,R9}
1E4602:  STRD.W          R6, R4, [R10,#0xC]
1E4606:  STRD.W          R4, R0, [R10,#0x14]
1E460A:  BEQ             loc_1E464A
1E460C:  ADD.W           R0, R9, R6
1E4610:  MOV.W           R11, #0
1E4614:  MLA.W           R0, R1, R8, R0
1E4618:  ADD.W           R8, R0, #7
1E461C:  LDR             R0, =(RwEngineInstance_ptr - 0x1E4622)
1E461E:  ADD             R0, PC; RwEngineInstance_ptr
1E4620:  LDR             R6, [R0]; RwEngineInstance
1E4622:  LDR             R0, [R6]
1E4624:  LDR.W           R1, [R0,#0x12C]
1E4628:  MOV             R0, R8
1E462A:  BLX             R1
1E462C:  CBZ             R0, loc_1E465E
1E462E:  STRD.W          R11, R11, [R0]
1E4632:  LDR             R1, [R4]
1E4634:  STRD.W          R1, R4, [R0]
1E4638:  LDR             R1, [R4]
1E463A:  STR             R0, [R1,#4]
1E463C:  MOV             R1, R9
1E463E:  STR             R0, [R4]
1E4640:  ADDS            R0, #8
1E4642:  BLX             j___aeabi_memclr8_1
1E4646:  SUBS            R5, #1
1E4648:  BNE             loc_1E4622
1E464A:  LDR             R0, =(dword_6BD04C - 0x1E4652)
1E464C:  MOV             R2, R10
1E464E:  ADD             R0, PC; dword_6BD04C
1E4650:  LDR             R1, [R0]
1E4652:  STR.W           R1, [R2,#0x1C]!
1E4656:  STR             R0, [R2,#4]
1E4658:  STR             R2, [R1,#4]
1E465A:  STR             R2, [R0]
1E465C:  B               loc_1E46B2
1E465E:  MOV             R4, R10
1E4660:  LDR.W           R0, [R4,#0x10]!
1E4664:  CMP             R0, R4
1E4666:  BEQ             loc_1E4688
1E4668:  LDR             R1, =(RwEngineInstance_ptr - 0x1E466E)
1E466A:  ADD             R1, PC; RwEngineInstance_ptr
1E466C:  LDR             R5, [R1]; RwEngineInstance
1E466E:  LDRD.W          R1, R2, [R0]
1E4672:  STR             R1, [R2]
1E4674:  LDRD.W          R1, R2, [R0]
1E4678:  STR             R2, [R1,#4]
1E467A:  LDR             R1, [R5]
1E467C:  LDR.W           R1, [R1,#0x130]
1E4680:  BLX             R1
1E4682:  LDR             R0, [R4]
1E4684:  CMP             R0, R4
1E4686:  BNE             loc_1E466E
1E4688:  LDRB.W          R0, [R10,#0x18]
1E468C:  LSLS            R0, R0, #0x1F
1E468E:  BNE             loc_1E46AE
1E4690:  LDR             R0, =(RwEngineInstance_ptr - 0x1E4698)
1E4692:  LDR             R1, =(dword_6BD054 - 0x1E469A)
1E4694:  ADD             R0, PC; RwEngineInstance_ptr
1E4696:  ADD             R1, PC; dword_6BD054
1E4698:  LDR             R2, [R0]; RwEngineInstance
1E469A:  LDR             R0, [R1]
1E469C:  LDR             R1, [R2]
1E469E:  CMP             R0, R10
1E46A0:  IT NE
1E46A2:  CMPNE           R0, #0
1E46A4:  BNE             loc_1E46BC
1E46A6:  LDR.W           R1, [R1,#0x130]
1E46AA:  MOV             R0, R10
1E46AC:  BLX             R1
1E46AE:  MOV.W           R10, #0
1E46B2:  MOV             R0, R10
1E46B4:  ADD             SP, SP, #4
1E46B6:  POP.W           {R8-R11}
1E46BA:  POP             {R4-R7,PC}
1E46BC:  LDR.W           R2, [R1,#0x140]
1E46C0:  MOV             R1, R10
1E46C2:  BLX             R2
1E46C4:  MOV.W           R10, #0
1E46C8:  B               loc_1E46B2
