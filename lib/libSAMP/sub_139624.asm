; =========================================================
; Game Engine Function: sub_139624
; Address            : 0x139624 - 0x139724
; =========================================================

139624:  PUSH            {R4-R7,LR}
139626:  ADD             R7, SP, #0xC
139628:  PUSH.W          {R8}
13962C:  SUB             SP, SP, #0x18
13962E:  MOV             R4, R0
139630:  LDR             R0, [R0,#0x10]
139632:  CMP             R0, #0xAA
139634:  BCC             loc_13964E
139636:  SUBS            R0, #0xAA
139638:  STR             R0, [R4,#0x10]
13963A:  LDR             R0, [R4,#4]
13963C:  LDR.W           R1, [R0],#4
139640:  STR             R1, [SP,#0x28+var_24]
139642:  ADD             R1, SP, #0x28+var_24
139644:  STR             R0, [R4,#4]
139646:  MOV             R0, R4
139648:  BL              sub_139754
13964C:  B               loc_139704
13964E:  LDRD.W          R0, R3, [R4]
139652:  LDRD.W          R1, R2, [R4,#8]
139656:  SUBS            R0, R2, R0
139658:  SUBS            R3, R1, R3
13965A:  ASRS            R5, R3, #2
13965C:  CMP.W           R5, R0,ASR#2
139660:  BCS             loc_13967A
139662:  MOV.W           R0, #0xFF0; unsigned int
139666:  CMP             R2, R1
139668:  BEQ             loc_13970C
13966A:  BLX             j__Znwj; operator new(uint)
13966E:  ADD             R1, SP, #0x28+var_24
139670:  STR             R0, [SP,#0x28+var_24]
139672:  MOV             R0, R4
139674:  BL              sub_13982C
139678:  B               loc_139704
13967A:  ASRS            R6, R0, #1
13967C:  CMP             R0, #0
13967E:  ADD.W           R1, R4, #0xC
139682:  STR             R1, [SP,#0x28+var_14]
139684:  IT EQ
139686:  MOVEQ           R6, #1
139688:  CMP.W           R6, #0x40000000
13968C:  BCS             loc_13971C
13968E:  LSLS            R0, R6, #2; unsigned int
139690:  BLX             j__Znwj; operator new(uint)
139694:  ADD.W           R1, R0, R5,LSL#2
139698:  STR             R0, [SP,#0x28+var_24]
13969A:  ADD.W           R0, R0, R6,LSL#2
13969E:  STR             R1, [SP,#0x28+var_1C]
1396A0:  STR             R0, [SP,#0x28+var_18]
1396A2:  STR             R1, [SP,#0x28+var_20]
1396A4:  MOV.W           R0, #0xFF0; unsigned int
1396A8:  BLX             j__Znwj; operator new(uint)
1396AC:  MOV             R5, R0
1396AE:  STR             R0, [SP,#0x28+var_28]
1396B0:  ADD             R0, SP, #0x28+var_24
1396B2:  MOV             R1, SP
1396B4:  BL              sub_1399E0
1396B8:  LDR             R5, [R4,#8]
1396BA:  ADD.W           R8, SP, #0x28+var_24
1396BE:  ADDS            R6, R5, #4
1396C0:  LDR             R0, [R4,#4]
1396C2:  CMP             R5, R0
1396C4:  BEQ             loc_1396D4
1396C6:  SUBS            R6, #4
1396C8:  SUBS            R5, #4
1396CA:  MOV             R0, R8
1396CC:  MOV             R1, R5
1396CE:  BL              sub_139AB8
1396D2:  B               loc_1396C0
1396D4:  ADD.W           LR, SP, #0x28+var_24
1396D8:  LDRD.W          R1, R8, [R4,#8]
1396DC:  LDR             R0, [R4]; void *
1396DE:  LDM.W           LR, {R2,R3,R12,LR}
1396E2:  CMP             R5, R1
1396E4:  STRD.W          R0, R5, [SP,#0x28+var_24]
1396E8:  STM.W           R4, {R2,R3,R12,LR}
1396EC:  STRD.W          R1, R8, [SP,#0x28+var_1C]
1396F0:  ITTTT NE
1396F2:  SUBNE           R2, R1, R6
1396F4:  MVNNE.W         R2, R2,LSR#2
1396F8:  ADDNE.W         R1, R1, R2,LSL#2
1396FC:  STRNE           R1, [SP,#0x28+var_1C]
1396FE:  CBZ             R0, loc_139704
139700:  BLX             j__ZdlPv; operator delete(void *)
139704:  ADD             SP, SP, #0x18
139706:  POP.W           {R8}
13970A:  POP             {R4-R7,PC}
13970C:  BLX             j__Znwj; operator new(uint)
139710:  ADD             R1, SP, #0x28+var_24
139712:  STR             R0, [SP,#0x28+var_24]
139714:  MOV             R0, R4
139716:  BL              sub_139904
13971A:  B               loc_13963A
13971C:  LDR             R0, =(aAllocatorTAllo - 0x139722); "allocator<T>::allocate(size_t n) 'n' ex"... ...
13971E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
139720:  BL              sub_DC8D4
