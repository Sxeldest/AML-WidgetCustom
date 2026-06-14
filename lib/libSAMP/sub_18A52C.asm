; =========================================================
; Game Engine Function: sub_18A52C
; Address            : 0x18A52C - 0x18A5BC
; =========================================================

18A52C:  PUSH            {R4-R7,LR}
18A52E:  ADD             R7, SP, #0xC
18A530:  PUSH.W          {R8,R9,R11}
18A534:  SUB             SP, SP, #0x38
18A536:  MOV             R8, R0
18A538:  ADD             R0, SP, #0x50+var_2C
18A53A:  MOV             R6, R3
18A53C:  MOV             R5, R2
18A53E:  MOV             R9, R1
18A540:  BL              sub_F06B2
18A544:  BL              sub_F0734
18A548:  MOV             R4, R0
18A54A:  LDR             R0, [R7,#arg_0]
18A54C:  LDRB            R1, [R4]
18A54E:  LSLS            R1, R1, #0x1F
18A550:  BNE             loc_18A558
18A552:  MOVS            R1, #0
18A554:  STRH            R1, [R4]
18A556:  B               loc_18A568
18A558:  LDR             R1, [R4,#8]
18A55A:  MOVS            R2, #0
18A55C:  STRB            R2, [R1]
18A55E:  LDRB            R3, [R4]
18A560:  LDR             R1, [R4]
18A562:  STR             R2, [R4,#4]
18A564:  LSLS            R2, R3, #0x1F
18A566:  BNE             loc_18A56C
18A568:  MOVS            R2, #9
18A56A:  B               loc_18A572
18A56C:  SUBS            R1, #2
18A56E:  BIC.W           R2, R1, #1
18A572:  LDR             R1, [R6]
18A574:  MOVS            R3, #0
18A576:  LDR             R0, [R0]
18A578:  STRD.W          R0, R3, [SP,#0x50+var_20]
18A57C:  STRD.W          R1, R3, [SP,#0x50+var_28]
18A580:  ADD             R0, SP, #0x50+var_28
18A582:  MOVS            R1, #0x11
18A584:  STRD.W          R0, R3, [SP,#0x50+var_40]
18A588:  ADD             R0, SP, #0x50+var_34
18A58A:  STRD.W          R1, R3, [SP,#0x50+var_48]
18A58E:  MOV             R1, R4
18A590:  MOV             R3, R9
18A592:  STR             R5, [SP,#0x50+var_50]
18A594:  BL              sub_DCA40
18A598:  LDRB            R0, [R4]
18A59A:  LDRD.W          R2, R1, [R4,#4]
18A59E:  ANDS.W          R3, R0, #1
18A5A2:  ITT EQ
18A5A4:  ADDEQ           R1, R4, #1; text
18A5A6:  LSREQ           R2, R0, #1
18A5A8:  MOV             R0, R8; int
18A5AA:  BL              sub_ED4F8
18A5AE:  ADD             R0, SP, #0x50+var_2C
18A5B0:  BL              sub_F0720
18A5B4:  ADD             SP, SP, #0x38 ; '8'
18A5B6:  POP.W           {R8,R9,R11}
18A5BA:  POP             {R4-R7,PC}
