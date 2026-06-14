; =========================================================
; Game Engine Function: sub_1F2468
; Address            : 0x1F2468 - 0x1F247C
; =========================================================

1F2468:  PUSH            {R4,R6,R7,LR}
1F246A:  ADD             R7, SP, #8
1F246C:  MOV             R4, R0
1F246E:  STR             R1, [R0]
1F2470:  MOV             R0, R1; s
1F2472:  BLX             strlen
1F2476:  STR             R0, [R4,#4]
1F2478:  MOV             R0, R4
1F247A:  POP             {R4,R6,R7,PC}
