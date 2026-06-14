; =========================================================
; Game Engine Function: sub_13934C
; Address            : 0x13934C - 0x1393F2
; =========================================================

13934C:  PUSH            {R4-R7,LR}
13934E:  ADD             R7, SP, #0xC
139350:  PUSH.W          {R8-R10}
139354:  LDR             R4, [R0,#4]
139356:  CMP             R4, #0
139358:  BEQ             loc_1393E8
13935A:  MOV             R6, R0
13935C:  MOV.W           R0, #0x55555555
139360:  AND.W           R0, R0, R4,LSR#1
139364:  LDRB            R5, [R1]
139366:  SUBS            R0, R4, R0
139368:  MOV.W           R1, #0x33333333
13936C:  AND.W           R1, R1, R0,LSR#2
139370:  BIC.W           R0, R0, #0xCCCCCCCC
139374:  ADD             R0, R1
139376:  MOV.W           R1, #0x1010101
13937A:  ADD.W           R0, R0, R0,LSR#4
13937E:  BIC.W           R0, R0, #0xF0F0F0F0
139382:  MULS            R0, R1
139384:  MOV.W           R9, R0,LSR#24
139388:  CMP.W           R9, #1
13938C:  BHI             loc_139396
13938E:  SUBS            R0, R4, #1
139390:  AND.W           R8, R0, R5
139394:  B               loc_1393A8
139396:  CMP             R4, R5
139398:  BLS             loc_13939E
13939A:  MOV             R8, R5
13939C:  B               loc_1393A8
13939E:  MOV             R0, R5
1393A0:  MOV             R1, R4
1393A2:  BLX             sub_221798
1393A6:  MOV             R8, R1
1393A8:  LDR             R0, [R6]
1393AA:  LDR.W           R0, [R0,R8,LSL#2]
1393AE:  CBZ             R0, loc_1393E8
1393B0:  LDR             R6, [R0]
1393B2:  CBZ             R6, loc_1393E8
1393B4:  SUB.W           R10, R4, #1
1393B8:  LDR             R0, [R6,#4]
1393BA:  CMP             R0, R5
1393BC:  BNE             loc_1393C6
1393BE:  LDRB            R0, [R6,#8]
1393C0:  CMP             R0, R5
1393C2:  BNE             loc_1393E2
1393C4:  B               loc_1393EA
1393C6:  CMP.W           R9, #1
1393CA:  BHI             loc_1393D2
1393CC:  AND.W           R0, R0, R10
1393D0:  B               loc_1393DE
1393D2:  CMP             R0, R4
1393D4:  BCC             loc_1393DE
1393D6:  MOV             R1, R4
1393D8:  BLX             sub_221798
1393DC:  MOV             R0, R1
1393DE:  CMP             R0, R8
1393E0:  BNE             loc_1393E8
1393E2:  LDR             R6, [R6]
1393E4:  CMP             R6, #0
1393E6:  BNE             loc_1393B8
1393E8:  MOVS            R6, #0
1393EA:  MOV             R0, R6
1393EC:  POP.W           {R8-R10}
1393F0:  POP             {R4-R7,PC}
