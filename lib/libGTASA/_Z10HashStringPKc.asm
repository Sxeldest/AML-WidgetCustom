; =========================================================
; Game Engine Function: _Z10HashStringPKc
; Address            : 0x1E7280 - 0x1E72A2
; =========================================================

1E7280:  PUSH            {R4,R6,R7,LR}
1E7282:  ADD             R7, SP, #8
1E7284:  MOV             R4, R0
1E7286:  BLX             strlen
1E728A:  MOVS            R1, #0
1E728C:  CBZ             R0, loc_1E729C
1E728E:  LDRB.W          R2, [R4],#1
1E7292:  ADD.W           R1, R1, R1,LSL#5
1E7296:  SUBS            R0, #1
1E7298:  ADD             R1, R2
1E729A:  BNE             loc_1E728E
1E729C:  ADD.W           R0, R1, R1,LSR#5
1E72A0:  POP             {R4,R6,R7,PC}
