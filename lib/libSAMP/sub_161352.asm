; =========================================================
; Game Engine Function: sub_161352
; Address            : 0x161352 - 0x16137C
; =========================================================

161352:  PUSH            {R4-R7,LR}
161354:  ADD             R7, SP, #0xC
161356:  PUSH.W          {R11}
16135A:  SUB             SP, SP, #8
16135C:  MOV             R4, R2
16135E:  MOV             R5, R1
161360:  MOV             R6, R0
161362:  BLX             strlen
161366:  MOV             R2, R0
161368:  MOVS            R0, #2
16136A:  MOV             R1, R6
16136C:  MOV             R3, R5
16136E:  STR             R4, [SP,#0x18+var_18]
161370:  BL              sub_1617C8
161374:  ADD             SP, SP, #8
161376:  POP.W           {R11}
16137A:  POP             {R4-R7,PC}
