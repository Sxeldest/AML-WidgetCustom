; =========================================================
; Game Engine Function: sub_1655A8
; Address            : 0x1655A8 - 0x1655E4
; =========================================================

1655A8:  SUB             SP, SP, #4
1655AA:  PUSH            {R4,R5,R7,LR}
1655AC:  ADD             R7, SP, #8
1655AE:  SUB             SP, SP, #4
1655B0:  STR             R3, [R7,#var_s8]
1655B2:  ADD.W           R3, R7, #8; arg
1655B6:  MOV             R5, R1
1655B8:  MOV             R4, R0
1655BA:  STR             R3, [SP,#0xC+var_C]
1655BC:  BLX             vsnprintf
1655C0:  CBZ             R4, loc_1655DA
1655C2:  SUBS            R1, R5, #1
1655C4:  CMP             R0, R5
1655C6:  MOV             R2, R1
1655C8:  IT LT
1655CA:  MOVLT           R2, R0
1655CC:  ADDS            R0, #1
1655CE:  MOV.W           R0, #0
1655D2:  IT EQ
1655D4:  MOVEQ           R2, R1
1655D6:  STRB            R0, [R4,R2]
1655D8:  MOV             R0, R2
1655DA:  ADD             SP, SP, #4
1655DC:  POP.W           {R4,R5,R7,LR}
1655E0:  ADD             SP, SP, #4
1655E2:  BX              LR
