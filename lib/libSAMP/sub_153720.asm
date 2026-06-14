; =========================================================
; Game Engine Function: sub_153720
; Address            : 0x153720 - 0x1537C6
; =========================================================

153720:  PUSH            {R4-R7,LR}
153722:  ADD             R7, SP, #0xC
153724:  PUSH.W          {R8-R10}
153728:  LDR             R4, [R0,#4]
15372A:  CMP             R4, #0
15372C:  BEQ             loc_1537BC
15372E:  MOV             R6, R0
153730:  MOV.W           R0, #0x55555555
153734:  AND.W           R0, R0, R4,LSR#1
153738:  LDRH            R5, [R1]
15373A:  SUBS            R0, R4, R0
15373C:  MOV.W           R1, #0x33333333
153740:  AND.W           R1, R1, R0,LSR#2
153744:  BIC.W           R0, R0, #0xCCCCCCCC
153748:  ADD             R0, R1
15374A:  MOV.W           R1, #0x1010101
15374E:  ADD.W           R0, R0, R0,LSR#4
153752:  BIC.W           R0, R0, #0xF0F0F0F0
153756:  MULS            R0, R1
153758:  MOV.W           R9, R0,LSR#24
15375C:  CMP.W           R9, #1
153760:  BHI             loc_15376A
153762:  SUBS            R0, R4, #1
153764:  AND.W           R8, R0, R5
153768:  B               loc_15377C
15376A:  CMP             R4, R5
15376C:  BLS             loc_153772
15376E:  MOV             R8, R5
153770:  B               loc_15377C
153772:  MOV             R0, R5
153774:  MOV             R1, R4
153776:  BLX             sub_221798
15377A:  MOV             R8, R1
15377C:  LDR             R0, [R6]
15377E:  LDR.W           R0, [R0,R8,LSL#2]
153782:  CBZ             R0, loc_1537BC
153784:  LDR             R6, [R0]
153786:  CBZ             R6, loc_1537BC
153788:  SUB.W           R10, R4, #1
15378C:  LDR             R0, [R6,#4]
15378E:  CMP             R0, R5
153790:  BNE             loc_15379A
153792:  LDRH            R0, [R6,#8]
153794:  CMP             R0, R5
153796:  BNE             loc_1537B6
153798:  B               loc_1537BE
15379A:  CMP.W           R9, #1
15379E:  BHI             loc_1537A6
1537A0:  AND.W           R0, R0, R10
1537A4:  B               loc_1537B2
1537A6:  CMP             R0, R4
1537A8:  BCC             loc_1537B2
1537AA:  MOV             R1, R4
1537AC:  BLX             sub_221798
1537B0:  MOV             R0, R1
1537B2:  CMP             R0, R8
1537B4:  BNE             loc_1537BC
1537B6:  LDR             R6, [R6]
1537B8:  CMP             R6, #0
1537BA:  BNE             loc_15378C
1537BC:  MOVS            R6, #0
1537BE:  MOV             R0, R6
1537C0:  POP.W           {R8-R10}
1537C4:  POP             {R4-R7,PC}
