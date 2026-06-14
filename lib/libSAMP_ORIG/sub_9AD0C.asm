; =========================================================
; Game Engine Function: sub_9AD0C
; Address            : 0x9AD0C - 0x9AD46
; =========================================================

9AD0C:  PUSH            {R7,LR}
9AD0E:  MOV             R7, SP
9AD10:  LDR.W           LR, [R1]
9AD14:  LDR.W           R12, [R0]
9AD18:  LDR.W           R1, [LR,#8]
9AD1C:  LDR.W           R3, [R12,#8]
9AD20:  AND.W           R0, R1, #0x4000000
9AD24:  AND.W           R2, R3, #0x4000000
9AD28:  SUBS            R0, R2, R0
9AD2A:  ITTTT EQ
9AD2C:  ANDEQ.W         R0, R1, #0x2000000
9AD30:  ANDEQ.W         R1, R3, #0x2000000
9AD34:  SUBSEQ.W        R0, R1, R0
9AD38:  LDRSHEQ.W       R0, [LR,#0x86]
9AD3C:  ITT EQ
9AD3E:  LDRSHEQ.W       R1, [R12,#0x86]
9AD42:  SUBEQ           R0, R1, R0
9AD44:  POP             {R7,PC}
