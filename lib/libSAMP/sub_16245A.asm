; =========================================================
; Game Engine Function: sub_16245A
; Address            : 0x16245A - 0x162484
; =========================================================

16245A:  PUSH            {R4-R7,LR}
16245C:  ADD             R7, SP, #0xC
16245E:  PUSH.W          {R11}
162462:  SUB             SP, SP, #8
162464:  MOV             R4, R2
162466:  MOV             R5, R1
162468:  MOV             R6, R0
16246A:  BLX             strlen
16246E:  MOV             R2, R0
162470:  MOVS            R0, #2
162472:  MOV             R1, R6
162474:  MOV             R3, R5
162476:  STR             R4, [SP,#0x18+var_18]
162478:  BL              sub_162814
16247C:  ADD             SP, SP, #8
16247E:  POP.W           {R11}
162482:  POP             {R4-R7,PC}
