; =========================================================
; Game Engine Function: mpg123_framebyframe_decode
; Address            : 0x2306B0 - 0x230746
; =========================================================

2306B0:  PUSH            {R4-R7,LR}
2306B2:  ADD             R7, SP, #0xC
2306B4:  PUSH.W          {R8-R10}
2306B8:  MOV             R5, R2
2306BA:  CMP             R5, #0
2306BC:  MOV             R4, R3
2306BE:  MOV             R6, R0
2306C0:  MOV.W           R0, #0x11
2306C4:  IT NE
2306C6:  CMPNE           R4, #0
2306C8:  BEQ             loc_230740
2306CA:  CBZ             R6, loc_2306E4
2306CC:  MOVW            R0, #0xB2C4
2306D0:  MOVW            R2, #0xB2AC
2306D4:  LDR             R0, [R6,R0]
2306D6:  LDR             R2, [R6,R2]
2306D8:  CMP             R2, R0
2306DA:  BCS             loc_2306EC
2306DC:  MOVS            R0, #0xE
2306DE:  POP.W           {R8-R10}
2306E2:  POP             {R4-R7,PC}
2306E4:  MOVS            R0, #0xA
2306E6:  POP.W           {R8-R10}
2306EA:  POP             {R4-R7,PC}
2306EC:  MOVS            R0, #0
2306EE:  MOVW            R12, #0xB2A8
2306F2:  STR             R0, [R4]
2306F4:  MOVW            R3, #0xB2C8
2306F8:  STR.W           R0, [R6,R12]
2306FC:  LDR             R2, [R6,R3]
2306FE:  CBZ             R2, loc_230740
230700:  MOVW            R0, #0xB2A0
230704:  CMP             R1, #0
230706:  ADD.W           R9, R6, R0
23070A:  ITTT NE
23070C:  MOVWNE          R0, #0x9314
230710:  LDRNE           R0, [R6,R0]
230712:  STRNE           R0, [R1]
230714:  MOV             R0, R6
230716:  ADD.W           R10, R6, R3
23071A:  ADD.W           R8, R6, R12
23071E:  BL              sub_230748
230722:  MOVS            R0, #0
230724:  MOVW            R1, #0xB2CC
230728:  STR             R0, [R6,R1]
23072A:  MOVW            R2, #0xB2A4
23072E:  STR.W           R0, [R10]
230732:  LDR.W           R1, [R9]
230736:  STR             R1, [R6,R2]
230738:  STR             R1, [R5]
23073A:  LDR.W           R1, [R8]
23073E:  STR             R1, [R4]
230740:  POP.W           {R8-R10}
230744:  POP             {R4-R7,PC}
