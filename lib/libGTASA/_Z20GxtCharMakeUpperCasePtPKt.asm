; =========================================================
; Game Engine Function: _Z20GxtCharMakeUpperCasePtPKt
; Address            : 0x5A8412 - 0x5A8446
; =========================================================

5A8412:  PUSH            {R7,LR}
5A8414:  MOV             R7, SP
5A8416:  LDRH            R2, [R1]
5A8418:  MOV             R3, R0
5A841A:  CBZ             R2, loc_5A8440
5A841C:  ADD.W           LR, R1, #2
5A8420:  MOVW            R12, #0xFFE0
5A8424:  MOV             R3, R0
5A8426:  SUB.W           R1, R2, #0x61 ; 'a'
5A842A:  UXTH            R1, R1
5A842C:  CMP             R1, #0x19
5A842E:  IT LS
5A8430:  UXTAHLS.W       R2, R12, R2
5A8434:  STRH.W          R2, [R3],#2
5A8438:  LDRH.W          R2, [LR],#2
5A843C:  CMP             R2, #0
5A843E:  BNE             loc_5A8426
5A8440:  MOVS            R1, #0
5A8442:  STRH            R1, [R3]
5A8444:  POP             {R7,PC}
