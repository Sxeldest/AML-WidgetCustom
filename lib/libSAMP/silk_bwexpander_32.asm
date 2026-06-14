; =========================================================
; Game Engine Function: silk_bwexpander_32
; Address            : 0x191728 - 0x1917A6
; =========================================================

191728:  PUSH            {R4-R7,LR}
19172A:  ADD             R7, SP, #0xC
19172C:  PUSH.W          {R8,R9,R11}
191730:  SUB.W           R12, R1, #1
191734:  MOV.W           R9, R2,ASR#16
191738:  CMP             R1, #2
19173A:  BLT             loc_19177E
19173C:  SUB.W           LR, R2, #0x10000
191740:  MOV.W           R8, #1
191744:  MOV             R4, R12
191746:  MOV             R5, R0
191748:  LDR             R6, [R5]
19174A:  UXTH            R1, R2
19174C:  SUBS            R4, #1
19174E:  SXTH            R3, R6
191750:  MUL.W           R1, R3, R1
191754:  MUL.W           R3, R3, R9
191758:  MUL.W           R9, R2, LR
19175C:  ADD.W           R1, R3, R1,ASR#16
191760:  ADD.W           R3, R8, R6,ASR#15
191764:  MOV.W           R3, R3,ASR#1
191768:  MLA.W           R1, R3, R2, R1
19176C:  STR.W           R1, [R5],#4
191770:  ADD.W           R1, R8, R9,ASR#15
191774:  ADD.W           R2, R2, R1,ASR#1
191778:  MOV.W           R9, R2,ASR#16
19177C:  BNE             loc_191748
19177E:  LDR.W           R1, [R0,R12,LSL#2]
191782:  UXTH            R6, R2
191784:  SXTH            R3, R1
191786:  MULS            R6, R3
191788:  SMULBB.W        R3, R3, R9
19178C:  ADD.W           R3, R3, R6,ASR#16
191790:  MOVS            R6, #1
191792:  ADD.W           R1, R6, R1,ASR#15
191796:  ASRS            R1, R1, #1
191798:  MLA.W           R1, R1, R2, R3
19179C:  STR.W           R1, [R0,R12,LSL#2]
1917A0:  POP.W           {R8,R9,R11}
1917A4:  POP             {R4-R7,PC}
