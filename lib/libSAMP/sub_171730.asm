; =========================================================
; Game Engine Function: sub_171730
; Address            : 0x171730 - 0x17176A
; =========================================================

171730:  PUSH            {R7,LR}
171732:  MOV             R7, SP
171734:  LDR.W           LR, [R1]
171738:  LDR.W           R12, [R0]
17173C:  LDR.W           R1, [LR,#8]
171740:  LDR.W           R3, [R12,#8]
171744:  AND.W           R0, R1, #0x4000000
171748:  AND.W           R2, R3, #0x4000000
17174C:  SUBS            R0, R2, R0
17174E:  ITTTT EQ
171750:  ANDEQ.W         R0, R1, #0x2000000
171754:  ANDEQ.W         R1, R3, #0x2000000
171758:  SUBSEQ.W        R0, R1, R0
17175C:  LDRSHEQ.W       R0, [LR,#0x86]
171760:  ITT EQ
171762:  LDRSHEQ.W       R1, [R12,#0x86]
171766:  SUBEQ           R0, R1, R0
171768:  POP             {R7,PC}
