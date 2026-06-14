; =========================================================
; Game Engine Function: Resample_point32_C
; Address            : 0x260528 - 0x260556
; =========================================================

260528:  PUSH            {R4,R6,R7,LR}
26052A:  ADD             R7, SP, #8
26052C:  LDR.W           R12, [R7,#arg_0]
260530:  ADDS.W          R12, R12, #1
260534:  IT EQ
260536:  POPEQ           {R4,R6,R7,PC}
260538:  MOV.W           LR, #0
26053C:  ADD             R1, R2
26053E:  LDR.W           R4, [R0,LR,LSL#2]
260542:  STR.W           R4, [R3],#4
260546:  ADD.W           LR, LR, R1,LSR#14
26054A:  BFC.W           R1, #0xE, #0x12
26054E:  SUBS.W          R12, R12, #1
260552:  BNE             loc_26053C
260554:  POP             {R4,R6,R7,PC}
