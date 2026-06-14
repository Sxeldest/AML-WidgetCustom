; =========================================================
; Game Engine Function: sub_180642
; Address            : 0x180642 - 0x1806C4
; =========================================================

180642:  PUSH            {R4,R6,R7,LR}
180644:  ADD             R7, SP, #8
180646:  LDR.W           LR, [R0,#0x340]
18064A:  CMP.W           LR, #0
18064E:  BEQ             loc_180654
180650:  LDRB            R3, [R0,#4]
180652:  CBZ             R3, loc_180660
180654:  MOV.W           R12, #0
180658:  MOVS            R0, #0
18065A:  STRH.W          R12, [R2]
18065E:  POP             {R4,R6,R7,PC}
180660:  LDRH            R0, [R0,#8]
180662:  CBZ             R1, loc_1806A0
180664:  CMP             R0, #0
180666:  BEQ             loc_180654
180668:  MOV.W           R12, #0
18066C:  LDRB.W          R3, [LR]
180670:  CBZ             R3, loc_180696
180672:  LDR.W           R3, [LR,#0x83C]
180676:  CMP             R3, #8
180678:  BNE             loc_180696
18067A:  LDRH            R3, [R2]
18067C:  CMP             R12, R3
18067E:  BGE             loc_180692
180680:  LDR.W           R4, [LR,#4]
180684:  STR.W           R4, [R1,R12,LSL#3]
180688:  ADD.W           R4, R1, R12,LSL#3
18068C:  LDRH.W          R3, [LR,#8]
180690:  STRH            R3, [R4,#4]
180692:  ADD.W           R12, R12, #1
180696:  ADD.W           LR, LR, #0x840
18069A:  SUBS            R0, #1
18069C:  BNE             loc_18066C
18069E:  B               loc_180658
1806A0:  CMP             R0, #0
1806A2:  BEQ             loc_180654
1806A4:  MOV.W           R12, #0
1806A8:  LDRB.W          R1, [LR]
1806AC:  CBZ             R1, loc_1806BA
1806AE:  LDR.W           R1, [LR,#0x83C]
1806B2:  CMP             R1, #8
1806B4:  IT EQ
1806B6:  ADDEQ.W         R12, R12, #1
1806BA:  ADD.W           LR, LR, #0x840
1806BE:  SUBS            R0, #1
1806C0:  BNE             loc_1806A8
1806C2:  B               loc_180658
