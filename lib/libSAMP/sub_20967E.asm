; =========================================================
; Game Engine Function: sub_20967E
; Address            : 0x20967E - 0x20971E
; =========================================================

20967E:  PUSH            {R4-R7,LR}
209680:  ADD             R7, SP, #0xC
209682:  PUSH.W          {R8-R10}
209686:  SUBS            R4, R1, R0
209688:  CMP             R4, #2
20968A:  MOV             R4, R0
20968C:  BLT             loc_2096AA
20968E:  LDR             R4, [R7,#arg_0]
209690:  ANDS.W          R4, R4, #4
209694:  MOV             R4, R0
209696:  BEQ             loc_2096AA
209698:  LDRB            R4, [R0]
20969A:  CMP             R4, #0xFF
20969C:  MOV             R4, R0
20969E:  BNE             loc_2096AA
2096A0:  LDRB            R4, [R0,#1]
2096A2:  CMP             R4, #0xFE
2096A4:  MOV             R4, R0
2096A6:  IT EQ
2096A8:  ADDEQ           R4, #2
2096AA:  SUB.W           LR, R1, #1
2096AE:  MOV.W           R8, #0
2096B2:  MOV.W           R12, #0xFC00
2096B6:  B               loc_20970E
2096B8:  LDRB            R6, [R4,#1]
2096BA:  LDRB.W          R10, [R4]
2096BE:  AND.W           R5, R12, R6,LSL#8
2096C2:  ORR.W           R9, R10, R6,LSL#8
2096C6:  CMP.W           R5, #0xD800
2096CA:  BEQ             loc_2096DA
2096CC:  CMP.W           R5, #0xDC00
2096D0:  BEQ             loc_209716
2096D2:  CMP             R9, R3
2096D4:  BHI             loc_209716
2096D6:  ADDS            R4, #2
2096D8:  B               loc_20970A
2096DA:  SUBS            R5, R1, R4
2096DC:  CMP             R5, #4
2096DE:  BLT             loc_209716
2096E0:  LDRB            R5, [R4,#3]
2096E2:  AND.W           R6, R5, #0xFC
2096E6:  CMP             R6, #0xDC
2096E8:  BNE             loc_209716
2096EA:  LDRB            R6, [R4,#2]
2096EC:  AND.W           R9, R9, #0x3C0
2096F0:  BFI.W           R6, R5, #8, #2
2096F4:  MOV.W           R5, R10,LSL#10
2096F8:  UXTH            R5, R5
2096FA:  ORR.W           R5, R5, R9,LSL#10
2096FE:  ADD             R5, R6
209700:  ADD.W           R5, R5, #0x10000
209704:  CMP             R5, R3
209706:  BHI             loc_209716
209708:  ADDS            R4, #4
20970A:  ADD.W           R8, R8, #1
20970E:  CMP             R4, LR
209710:  IT CC
209712:  CMPCC           R8, R2
209714:  BCC             loc_2096B8
209716:  SUBS            R0, R4, R0
209718:  POP.W           {R8-R10}
20971C:  POP             {R4-R7,PC}
