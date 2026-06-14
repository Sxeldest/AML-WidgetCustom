; =========================================================
; Game Engine Function: png_do_bgr
; Address            : 0x203634 - 0x2036D0
; =========================================================

203634:  PUSH            {R7,LR}
203636:  MOV             R7, SP
203638:  LDRB            R2, [R0,#8]
20363A:  TST.W           R2, #2
20363E:  BEQ             locret_2036CE
203640:  LDRB            R3, [R0,#9]
203642:  LDR             R0, [R0]
203644:  CMP             R3, #0x10
203646:  BEQ             loc_203668
203648:  CMP             R3, #8
20364A:  BNE             locret_2036CE
20364C:  CMP             R2, #2
20364E:  BEQ             loc_203694
203650:  CMP             R2, #6
203652:  BNE             locret_2036CE
203654:  CBZ             R0, locret_2036CE
203656:  LDRB            R2, [R1]
203658:  SUBS            R0, #1
20365A:  LDRB            R3, [R1,#2]
20365C:  STRB            R3, [R1]
20365E:  STRB            R2, [R1,#2]
203660:  ADD.W           R1, R1, #4
203664:  BNE             loc_203656
203666:  B               locret_2036CE
203668:  CMP             R2, #2
20366A:  BEQ             loc_2036A8
20366C:  CMP             R2, #6
20366E:  BNE             locret_2036CE
203670:  CBZ             R0, locret_2036CE
203672:  LDRB.W          LR, [R1]
203676:  SUBS            R0, #1
203678:  LDRB.W          R12, [R1,#1]
20367C:  LDRB            R3, [R1,#4]
20367E:  LDRB            R2, [R1,#5]
203680:  STRB            R3, [R1]
203682:  STRB.W          LR, [R1,#4]
203686:  STRB            R2, [R1,#1]
203688:  STRB.W          R12, [R1,#5]
20368C:  ADD.W           R1, R1, #8
203690:  BNE             loc_203672
203692:  B               locret_2036CE
203694:  CBZ             R0, locret_2036CE
203696:  LDRB            R2, [R1]
203698:  SUBS            R0, #1
20369A:  LDRB            R3, [R1,#2]
20369C:  STRB            R3, [R1]
20369E:  STRB            R2, [R1,#2]
2036A0:  ADD.W           R1, R1, #3
2036A4:  BNE             loc_203696
2036A6:  B               locret_2036CE
2036A8:  CMP             R0, #0
2036AA:  IT EQ
2036AC:  POPEQ           {R7,PC}
2036AE:  LDRB.W          LR, [R1]
2036B2:  SUBS            R0, #1
2036B4:  LDRB.W          R12, [R1,#1]
2036B8:  LDRB            R3, [R1,#4]
2036BA:  LDRB            R2, [R1,#5]
2036BC:  STRB            R3, [R1]
2036BE:  STRB.W          LR, [R1,#4]
2036C2:  STRB            R2, [R1,#1]
2036C4:  STRB.W          R12, [R1,#5]
2036C8:  ADD.W           R1, R1, #6
2036CC:  BNE             loc_2036AE
2036CE:  POP             {R7,PC}
