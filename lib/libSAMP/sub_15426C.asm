; =========================================================
; Game Engine Function: sub_15426C
; Address            : 0x15426C - 0x154312
; =========================================================

15426C:  PUSH            {R4-R7,LR}
15426E:  ADD             R7, SP, #0xC
154270:  PUSH.W          {R8-R10}
154274:  LDR             R4, [R0,#4]
154276:  CMP             R4, #0
154278:  BEQ             loc_154308
15427A:  MOV             R6, R0
15427C:  MOV.W           R0, #0x55555555
154280:  AND.W           R0, R0, R4,LSR#1
154284:  LDRH            R5, [R1]
154286:  SUBS            R0, R4, R0
154288:  MOV.W           R1, #0x33333333
15428C:  AND.W           R1, R1, R0,LSR#2
154290:  BIC.W           R0, R0, #0xCCCCCCCC
154294:  ADD             R0, R1
154296:  MOV.W           R1, #0x1010101
15429A:  ADD.W           R0, R0, R0,LSR#4
15429E:  BIC.W           R0, R0, #0xF0F0F0F0
1542A2:  MULS            R0, R1
1542A4:  MOV.W           R9, R0,LSR#24
1542A8:  CMP.W           R9, #1
1542AC:  BHI             loc_1542B6
1542AE:  SUBS            R0, R4, #1
1542B0:  AND.W           R8, R0, R5
1542B4:  B               loc_1542C8
1542B6:  CMP             R4, R5
1542B8:  BLS             loc_1542BE
1542BA:  MOV             R8, R5
1542BC:  B               loc_1542C8
1542BE:  MOV             R0, R5
1542C0:  MOV             R1, R4
1542C2:  BLX             sub_221798
1542C6:  MOV             R8, R1
1542C8:  LDR             R0, [R6]
1542CA:  LDR.W           R0, [R0,R8,LSL#2]
1542CE:  CBZ             R0, loc_154308
1542D0:  LDR             R6, [R0]
1542D2:  CBZ             R6, loc_154308
1542D4:  SUB.W           R10, R4, #1
1542D8:  LDR             R0, [R6,#4]
1542DA:  CMP             R0, R5
1542DC:  BNE             loc_1542E6
1542DE:  LDRH            R0, [R6,#8]
1542E0:  CMP             R0, R5
1542E2:  BNE             loc_154302
1542E4:  B               loc_15430A
1542E6:  CMP.W           R9, #1
1542EA:  BHI             loc_1542F2
1542EC:  AND.W           R0, R0, R10
1542F0:  B               loc_1542FE
1542F2:  CMP             R0, R4
1542F4:  BCC             loc_1542FE
1542F6:  MOV             R1, R4
1542F8:  BLX             sub_221798
1542FC:  MOV             R0, R1
1542FE:  CMP             R0, R8
154300:  BNE             loc_154308
154302:  LDR             R6, [R6]
154304:  CMP             R6, #0
154306:  BNE             loc_1542D8
154308:  MOVS            R6, #0
15430A:  MOV             R0, R6
15430C:  POP.W           {R8-R10}
154310:  POP             {R4-R7,PC}
