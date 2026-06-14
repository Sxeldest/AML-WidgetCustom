; =========================================================
; Game Engine Function: _Z12RwStreamReadP8RwStreamPvj
; Address            : 0x1E5754 - 0x1E582A
; =========================================================

1E5754:  PUSH            {R4-R7,LR}
1E5756:  ADD             R7, SP, #0xC
1E5758:  PUSH.W          {R8,R9,R11}
1E575C:  SUB             SP, SP, #8
1E575E:  MOV             R5, R0
1E5760:  MOV             R9, R1
1E5762:  LDR             R0, [R5]
1E5764:  MOV             R4, R2
1E5766:  SUBS            R1, R0, #1
1E5768:  CMP             R1, #2
1E576A:  BCC             loc_1E5788
1E576C:  CMP             R0, #3
1E576E:  BEQ             loc_1E57D8
1E5770:  CMP             R0, #4
1E5772:  BNE             loc_1E580E
1E5774:  LDR             R3, [R5,#0x10]
1E5776:  MOV             R1, R9
1E5778:  LDR             R0, [R5,#0x1C]
1E577A:  MOV             R2, R4
1E577C:  ADD             SP, SP, #8
1E577E:  POP.W           {R8,R9,R11}
1E5782:  POP.W           {R4-R7,LR}
1E5786:  BX              R3
1E5788:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5794)
1E578A:  MOVS            R1, #1
1E578C:  LDR             R5, [R5,#0xC]
1E578E:  MOV             R2, R4
1E5790:  ADD             R0, PC; RwEngineInstance_ptr
1E5792:  LDR             R0, [R0]; RwEngineInstance
1E5794:  MOV             R3, R5
1E5796:  LDR             R0, [R0]
1E5798:  LDR.W           R6, [R0,#0xD0]
1E579C:  MOV             R0, R9
1E579E:  BLX             R6
1E57A0:  MOV             R6, R0
1E57A2:  CMP             R6, R4
1E57A4:  BEQ             loc_1E5820
1E57A6:  LDR             R0, =(RwEngineInstance_ptr - 0x1E57AC)
1E57A8:  ADD             R0, PC; RwEngineInstance_ptr
1E57AA:  LDR             R0, [R0]; RwEngineInstance
1E57AC:  LDR             R0, [R0]
1E57AE:  LDR.W           R1, [R0,#0xE0]
1E57B2:  MOV             R0, R5
1E57B4:  BLX             R1
1E57B6:  CMP             R0, #0
1E57B8:  MOV.W           R0, #0
1E57BC:  STR             R0, [SP,#0x20+var_20]
1E57BE:  ITEE NE
1E57C0:  MOVNE           R0, #5
1E57C2:  MOVEQ           R0, #0x1A
1E57C4:  MOVTEQ          R0, #0x8000; int
1E57C8:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E57CC:  STR             R0, [SP,#0x20+var_1C]
1E57CE:  MOV             R0, SP
1E57D0:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E57D4:  MOV             R4, R6
1E57D6:  B               loc_1E5820
1E57D8:  LDRD.W          R0, R1, [R5,#0xC]
1E57DC:  SUB.W           R8, R1, R0
1E57E0:  CMP             R8, R4
1E57E2:  BCS             loc_1E57FA
1E57E4:  MOVS            R0, #1
1E57E6:  STR             R0, [SP,#0x20+var_20]
1E57E8:  MOVS            R0, #5; int
1E57EA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E57EE:  STR             R0, [SP,#0x20+var_1C]
1E57F0:  MOV             R0, SP
1E57F2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E57F6:  LDR             R0, [R5,#0xC]
1E57F8:  MOV             R4, R8
1E57FA:  LDR             R1, [R5,#0x14]
1E57FC:  MOV             R2, R4; size_t
1E57FE:  ADD             R1, R0; void *
1E5800:  MOV             R0, R9; void *
1E5802:  BLX             memcpy_1
1E5806:  LDR             R0, [R5,#0xC]
1E5808:  ADD             R0, R4
1E580A:  STR             R0, [R5,#0xC]
1E580C:  B               loc_1E5820
1E580E:  MOVS            R4, #0
1E5810:  MOVS            R0, #0xE; int
1E5812:  STR             R4, [SP,#0x20+var_20]
1E5814:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E5818:  STR             R0, [SP,#0x20+var_1C]
1E581A:  MOV             R0, SP
1E581C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E5820:  MOV             R0, R4
1E5822:  ADD             SP, SP, #8
1E5824:  POP.W           {R8,R9,R11}
1E5828:  POP             {R4-R7,PC}
