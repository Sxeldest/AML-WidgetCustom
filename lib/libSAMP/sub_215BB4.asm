; =========================================================
; Game Engine Function: sub_215BB4
; Address            : 0x215BB4 - 0x215C02
; =========================================================

215BB4:  PUSH            {R4,R5,R7,LR}
215BB6:  ADD             R7, SP, #8
215BB8:  LDRD.W          R3, R4, [R1]
215BBC:  CMP             R2, #0
215BBE:  MOV             R2, R3
215BC0:  BEQ             loc_215BD2
215BC2:  CMP             R3, R4
215BC4:  BEQ             loc_215BE0
215BC6:  LDRB            R2, [R3]
215BC8:  CMP             R2, #0x6E ; 'n'
215BCA:  MOV             R2, R3
215BCC:  ITT EQ
215BCE:  ADDEQ           R2, R3, #1
215BD0:  STREQ           R2, [R1]
215BD2:  CMP             R4, R2
215BD4:  BEQ             loc_215BE0
215BD6:  LDRB            R5, [R2]
215BD8:  SUBS            R5, #0x3A ; ':'
215BDA:  CMN.W           R5, #0xA
215BDE:  BCS             loc_215BEA
215BE0:  MOVS            R3, #0
215BE2:  MOVS            R4, #0
215BE4:  STRD.W          R3, R4, [R0]
215BE8:  POP             {R4,R5,R7,PC}
215BEA:  CMP             R2, R4
215BEC:  BEQ             loc_215BE4
215BEE:  LDRB            R5, [R2]
215BF0:  SUBS            R5, #0x3A ; ':'
215BF2:  CMN.W           R5, #0xA
215BF6:  BCC             loc_215BFE
215BF8:  ADDS            R2, #1
215BFA:  STR             R2, [R1]
215BFC:  B               loc_215BEA
215BFE:  MOV             R4, R2
215C00:  B               loc_215BE4
