; =========================================================
; Game Engine Function: sub_88724
; Address            : 0x88724 - 0x8874C
; =========================================================

88724:  PUSH            {R4,R5,R7,LR}
88726:  ADD             R7, SP, #8
88728:  MOV             R5, R1
8872A:  MOV             R4, R0
8872C:  BLX             vsnprintf
88730:  CBZ             R4, locret_8874A
88732:  SUBS            R1, R5, #1
88734:  CMP             R0, R5
88736:  MOV             R2, R1
88738:  IT LT
8873A:  MOVLT           R2, R0
8873C:  ADDS            R0, #1
8873E:  MOV.W           R0, #0
88742:  IT EQ
88744:  MOVEQ           R2, R1
88746:  STRB            R0, [R4,R2]
88748:  MOV             R0, R2
8874A:  POP             {R4,R5,R7,PC}
