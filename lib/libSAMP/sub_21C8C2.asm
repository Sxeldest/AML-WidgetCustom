; =========================================================
; Game Engine Function: sub_21C8C2
; Address            : 0x21C8C2 - 0x21C928
; =========================================================

21C8C2:  PUSH            {R4,R6,R7,LR}
21C8C4:  ADD             R7, SP, #8
21C8C6:  CMP             R0, R1
21C8C8:  BEQ             locret_21C916
21C8CA:  LDRB            R2, [R0]
21C8CC:  CMP             R2, #0x5F ; '_'
21C8CE:  BNE             loc_21C8FC
21C8D0:  ADDS            R2, R0, #1
21C8D2:  CMP             R2, R1
21C8D4:  BEQ             locret_21C916
21C8D6:  LDRB            R2, [R2]
21C8D8:  SUB.W           R3, R2, #0x3A ; ':'
21C8DC:  CMN.W           R3, #0xA
21C8E0:  BCS             loc_21C918
21C8E2:  CMP             R2, #0x5F ; '_'
21C8E4:  BNE             locret_21C916
21C8E6:  ADDS            R2, R0, #2
21C8E8:  CMP             R2, R1
21C8EA:  BEQ             locret_21C916
21C8EC:  LDRB            R3, [R2]
21C8EE:  SUB.W           R4, R3, #0x3A ; ':'
21C8F2:  CMN.W           R4, #0xA
21C8F6:  BCC             loc_21C920
21C8F8:  ADDS            R2, #1
21C8FA:  B               loc_21C8E8
21C8FC:  SUBS            R2, #0x3A ; ':'
21C8FE:  CMN.W           R2, #0xA
21C902:  BCC             locret_21C916
21C904:  ADDS            R2, R0, #1
21C906:  CMP             R2, R1
21C908:  BEQ             loc_21C91C
21C90A:  LDRB.W          R3, [R2],#1
21C90E:  SUBS            R3, #0x3A ; ':'
21C910:  CMN.W           R3, #0xB
21C914:  BHI             loc_21C906
21C916:  POP             {R4,R6,R7,PC}
21C918:  ADDS            R0, #2
21C91A:  POP             {R4,R6,R7,PC}
21C91C:  MOV             R0, R1
21C91E:  POP             {R4,R6,R7,PC}
21C920:  CMP             R3, #0x5F ; '_'
21C922:  IT EQ
21C924:  ADDEQ           R0, R2, #1
21C926:  POP             {R4,R6,R7,PC}
