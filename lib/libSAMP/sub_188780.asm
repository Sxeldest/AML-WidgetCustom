; =========================================================
; Game Engine Function: sub_188780
; Address            : 0x188780 - 0x188832
; =========================================================

188780:  PUSH            {R4-R7,LR}
188782:  ADD             R7, SP, #0xC
188784:  PUSH.W          {R8-R10}
188788:  SUB             SP, SP, #8
18878A:  LDRB            R5, [R1,#0x10]
18878C:  STR             R1, [SP,#0x20+var_1C]
18878E:  CMP             R5, #0x1F
188790:  BHI             loc_18882A
188792:  LDR             R6, [R0,#4]
188794:  MOV             R4, R0
188796:  CMP             R6, R5
188798:  BLS             loc_1887A2
18879A:  LDR             R0, [R4]
18879C:  LDR.W           R0, [R0,R5,LSL#2]
1887A0:  CBNZ            R0, loc_18881C
1887A2:  MOVS            R0, #0xC; unsigned int
1887A4:  BLX             j__Znwj; operator new(uint)
1887A8:  MOV             R10, R0
1887AA:  MOVS            R0, #0
1887AC:  CMP             R6, R5
1887AE:  STRD.W          R0, R0, [R10]
1887B2:  STR.W           R0, [R10,#8]
1887B6:  BLS             loc_1887C0
1887B8:  LDR             R0, [R4]
1887BA:  ADD.W           R0, R0, R5,LSL#2
1887BE:  B               loc_18880E
1887C0:  LDR             R0, [R4,#8]
1887C2:  CMP             R0, R5
1887C4:  BHI             loc_1887F0
1887C6:  ADDS            R0, R5, #1
1887C8:  STR             R0, [R4,#8]
1887CA:  LSLS            R0, R0, #2; unsigned int
1887CC:  BLX             j__Znaj; operator new[](uint)
1887D0:  LDR.W           R9, [R4]
1887D4:  LSLS            R2, R6, #2; n
1887D6:  MOV             R8, R0
1887D8:  MOV             R1, R9; src
1887DA:  BLX             j_memcpy
1887DE:  CMP.W           R9, #0
1887E2:  BEQ             loc_1887EC
1887E4:  MOV             R0, R9; void *
1887E6:  BLX             j__ZdaPv; operator delete[](void *)
1887EA:  LDR             R6, [R4,#4]
1887EC:  STR.W           R8, [R4]
1887F0:  CMP             R6, R5
1887F2:  BCS             loc_188804
1887F4:  MOVS            R0, #0
1887F6:  LDR             R1, [R4]
1887F8:  STR.W           R0, [R1,R6,LSL#2]
1887FC:  ADDS            R6, #1
1887FE:  CMP             R5, R6
188800:  BNE             loc_1887F6
188802:  MOV             R6, R5
188804:  LDR             R0, [R4]
188806:  ADDS            R1, R6, #1
188808:  STR             R1, [R4,#4]
18880A:  ADD.W           R0, R0, R6,LSL#2
18880E:  STR.W           R10, [R0]
188812:  LDR             R0, [SP,#0x20+var_1C]
188814:  LDR             R1, [R4]
188816:  LDRB            R0, [R0,#0x10]
188818:  LDR.W           R0, [R1,R0,LSL#2]
18881C:  LDR             R1, [R0,#4]
18881E:  CBZ             R1, loc_188824
188820:  LDR             R1, [R1,#4]
188822:  STR             R1, [R0,#8]
188824:  ADD             R1, SP, #0x20+var_1C
188826:  BL              sub_18A02E
18882A:  ADD             SP, SP, #8
18882C:  POP.W           {R8-R10}
188830:  POP             {R4-R7,PC}
