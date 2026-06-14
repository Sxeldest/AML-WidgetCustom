; =========================================================
; Game Engine Function: sub_20935E
; Address            : 0x20935E - 0x2093FE
; =========================================================

20935E:  PUSH            {R4-R7,LR}
209360:  ADD             R7, SP, #0xC
209362:  PUSH.W          {R8-R10}
209366:  SUBS            R4, R1, R0
209368:  CMP             R4, #2
20936A:  MOV             R4, R0
20936C:  BLT             loc_20938A
20936E:  LDR             R4, [R7,#arg_0]
209370:  ANDS.W          R4, R4, #4
209374:  MOV             R4, R0
209376:  BEQ             loc_20938A
209378:  LDRB            R4, [R0]
20937A:  CMP             R4, #0xFE
20937C:  MOV             R4, R0
20937E:  BNE             loc_20938A
209380:  LDRB            R4, [R0,#1]
209382:  CMP             R4, #0xFF
209384:  MOV             R4, R0
209386:  IT EQ
209388:  ADDEQ           R4, #2
20938A:  SUB.W           LR, R1, #1
20938E:  MOV.W           R8, #0
209392:  MOV.W           R12, #0xFC00
209396:  B               loc_2093EE
209398:  LDRB            R6, [R4]
20939A:  LDRB.W          R10, [R4,#1]
20939E:  AND.W           R5, R12, R6,LSL#8
2093A2:  ORR.W           R9, R10, R6,LSL#8
2093A6:  CMP.W           R5, #0xD800
2093AA:  BEQ             loc_2093BA
2093AC:  CMP.W           R5, #0xDC00
2093B0:  BEQ             loc_2093F6
2093B2:  CMP             R9, R3
2093B4:  BHI             loc_2093F6
2093B6:  ADDS            R4, #2
2093B8:  B               loc_2093EA
2093BA:  SUBS            R5, R1, R4
2093BC:  CMP             R5, #4
2093BE:  BLT             loc_2093F6
2093C0:  LDRB            R5, [R4,#2]
2093C2:  AND.W           R6, R5, #0xFC
2093C6:  CMP             R6, #0xDC
2093C8:  BNE             loc_2093F6
2093CA:  LDRB            R6, [R4,#3]
2093CC:  AND.W           R9, R9, #0x3C0
2093D0:  BFI.W           R6, R5, #8, #2
2093D4:  MOV.W           R5, R10,LSL#10
2093D8:  UXTH            R5, R5
2093DA:  ORR.W           R5, R5, R9,LSL#10
2093DE:  ADD             R5, R6
2093E0:  ADD.W           R5, R5, #0x10000
2093E4:  CMP             R5, R3
2093E6:  BHI             loc_2093F6
2093E8:  ADDS            R4, #4
2093EA:  ADD.W           R8, R8, #1
2093EE:  CMP             R4, LR
2093F0:  IT CC
2093F2:  CMPCC           R8, R2
2093F4:  BCC             loc_209398
2093F6:  SUBS            R0, R4, R0
2093F8:  POP.W           {R8-R10}
2093FC:  POP             {R4-R7,PC}
