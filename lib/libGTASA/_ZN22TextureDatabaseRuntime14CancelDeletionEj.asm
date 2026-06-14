; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime14CancelDeletionEj
; Address            : 0x1E94F4 - 0x1E9532
; =========================================================

1E94F4:  PUSH            {R7,LR}
1E94F6:  MOV             R7, SP
1E94F8:  LDR.W           R12, [R0,#0xA0]
1E94FC:  CMP.W           R12, #0
1E9500:  IT EQ
1E9502:  POPEQ           {R7,PC}
1E9504:  LDR.W           LR, [R0,#0xA4]
1E9508:  MOVS            R2, #0
1E950A:  LDR.W           R3, [LR,R2,LSL#2]
1E950E:  CMP             R3, R1
1E9510:  BEQ             loc_1E951A
1E9512:  ADDS            R2, #1
1E9514:  CMP             R2, R12
1E9516:  BCC             loc_1E950A
1E9518:  POP             {R7,PC}
1E951A:  ADD.W           R1, LR, R12,LSL#2
1E951E:  LDR.W           R1, [R1,#-4]
1E9522:  STR.W           R1, [LR,R2,LSL#2]
1E9526:  LDR.W           R1, [R0,#0xA0]
1E952A:  SUBS            R1, #1
1E952C:  STR.W           R1, [R0,#0xA0]
1E9530:  POP             {R7,PC}
