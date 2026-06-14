; =========================================================
; Game Engine Function: sub_123748
; Address            : 0x123748 - 0x1237EC
; =========================================================

123748:  PUSH            {R4-R7,LR}
12374A:  ADD             R7, SP, #0xC
12374C:  PUSH.W          {R8-R11}
123750:  SUB             SP, SP, #4
123752:  MOV             R10, R1
123754:  LDRH            R5, [R0,#0x26]
123756:  LDR             R1, =(unk_B7168 - 0x123762)
123758:  MOV             R4, R0
12375A:  MOV             R8, R3
12375C:  MOV             R9, R2
12375E:  ADD             R1, PC; unk_B7168
123760:  MOVS            R0, #0
123762:  LDR             R2, [R1,R0]
123764:  CMP             R2, R5
123766:  BEQ             loc_123770
123768:  ADDS            R0, #4
12376A:  CMP             R0, #0x28 ; '('
12376C:  BNE             loc_123762
12376E:  B               loc_1237D0
123770:  CMP             R0, #0x28 ; '('
123772:  BEQ             loc_1237D0
123774:  MOVW            R0, #0x202
123778:  STRH            R0, [R4,#0x26]
12377A:  BL              sub_163768
12377E:  MOV             R6, R0
123780:  LDR             R0, =(off_263BD4 - 0x123786)
123782:  ADD             R0, PC; off_263BD4
123784:  MOV             R11, R0
123786:  BL              sub_163768
12378A:  LDR.W           R2, [R0,#0x808]
12378E:  MOV             R3, R8
123790:  LDR.W           R1, [R6,R5,LSL#2]
123794:  STR.W           R2, [R6,R5,LSL#2]
123798:  MOV             R2, R9
12379A:  LDR.W           R6, [R11]
12379E:  STR.W           R1, [R0,#0x808]
1237A2:  MOV             R0, R4
1237A4:  MOV             R1, R10
1237A6:  BLX             R6
1237A8:  MOV             R8, R0
1237AA:  BL              sub_163768
1237AE:  MOV             R6, R0
1237B0:  BL              sub_163768
1237B4:  LDR.W           R1, [R6,R5,LSL#2]
1237B8:  LDR.W           R2, [R0,#0x808]
1237BC:  STR.W           R2, [R6,R5,LSL#2]
1237C0:  STR.W           R1, [R0,#0x808]
1237C4:  MOV             R0, R8
1237C6:  STRH            R5, [R4,#0x26]
1237C8:  ADD             SP, SP, #4
1237CA:  POP.W           {R8-R11}
1237CE:  POP             {R4-R7,PC}
1237D0:  LDR             R0, =(off_263BD4 - 0x1237DC)
1237D2:  MOV             R1, R10
1237D4:  MOV             R2, R9
1237D6:  MOV             R3, R8
1237D8:  ADD             R0, PC; off_263BD4
1237DA:  LDR.W           R12, [R0]
1237DE:  MOV             R0, R4
1237E0:  ADD             SP, SP, #4
1237E2:  POP.W           {R8-R11}
1237E6:  POP.W           {R4-R7,LR}
1237EA:  BX              R12
