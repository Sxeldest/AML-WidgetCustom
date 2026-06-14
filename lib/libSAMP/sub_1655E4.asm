; =========================================================
; Game Engine Function: sub_1655E4
; Address            : 0x1655E4 - 0x16560C
; =========================================================

1655E4:  PUSH            {R4,R5,R7,LR}
1655E6:  ADD             R7, SP, #8
1655E8:  MOV             R5, R1
1655EA:  MOV             R4, R0
1655EC:  BLX             vsnprintf
1655F0:  CBZ             R4, locret_16560A
1655F2:  SUBS            R1, R5, #1
1655F4:  CMP             R0, R5
1655F6:  MOV             R2, R1
1655F8:  IT LT
1655FA:  MOVLT           R2, R0
1655FC:  ADDS            R0, #1
1655FE:  MOV.W           R0, #0
165602:  IT EQ
165604:  MOVEQ           R2, R1
165606:  STRB            R0, [R4,R2]
165608:  MOV             R0, R2
16560A:  POP             {R4,R5,R7,PC}
