; =========================================================
; Game Engine Function: _ZNK20CEventHandlerHistory19IsRespondingToEventEi
; Address            : 0x37B254 - 0x37B2A8
; =========================================================

37B254:  PUSH            {R4-R7,LR}
37B256:  ADD             R7, SP, #0xC
37B258:  PUSH.W          {R11}
37B25C:  MOV             R6, R0
37B25E:  MOV             R5, R1
37B260:  LDR             R0, [R6,#4]
37B262:  ADDS            R1, R5, #1
37B264:  BEQ             loc_37B292
37B266:  MOVS            R4, #0
37B268:  CBZ             R0, loc_37B276
37B26A:  LDR             R1, [R0]
37B26C:  LDR             R1, [R1,#8]
37B26E:  BLX             R1
37B270:  CMP             R0, R5
37B272:  IT EQ
37B274:  MOVEQ           R4, #1
37B276:  LDR             R0, [R6,#0xC]
37B278:  CBZ             R0, loc_37B2A0
37B27A:  LDR             R1, [R0]
37B27C:  LDR             R1, [R1,#8]
37B27E:  BLX             R1
37B280:  MOVS            R1, #0
37B282:  CMP             R0, R5
37B284:  IT EQ
37B286:  MOVEQ           R1, #1
37B288:  ORR.W           R0, R4, R1
37B28C:  POP.W           {R11}
37B290:  POP             {R4-R7,PC}
37B292:  CBZ             R0, loc_37B298
37B294:  MOVS            R4, #1
37B296:  B               loc_37B2A0
37B298:  LDR             R4, [R6,#0xC]
37B29A:  CMP             R4, #0
37B29C:  IT NE
37B29E:  MOVNE           R4, #1
37B2A0:  MOV             R0, R4
37B2A2:  POP.W           {R11}
37B2A6:  POP             {R4-R7,PC}
