; =========================================================
; Game Engine Function: sub_10E4D0
; Address            : 0x10E4D0 - 0x10E554
; =========================================================

10E4D0:  PUSH            {R4-R7,LR}
10E4D2:  ADD             R7, SP, #0xC
10E4D4:  PUSH.W          {R8-R11}
10E4D8:  SUB             SP, SP, #4
10E4DA:  MOV             R6, R1
10E4DC:  MOV             R9, R1
10E4DE:  LDR.W           R4, [R6,#4]!
10E4E2:  MOV             R8, R0
10E4E4:  CBZ             R4, loc_10E50C
10E4E6:  LDR             R0, [R2]
10E4E8:  ADD.W           R6, R9, #4
10E4EC:  LDR             R1, [R4,#0x10]
10E4EE:  CMP             R0, R1
10E4F0:  BGE             loc_10E4F8
10E4F2:  LDR             R1, [R4]
10E4F4:  CBNZ            R1, loc_10E506
10E4F6:  B               loc_10E510
10E4F8:  CMP             R1, R0
10E4FA:  BGE             loc_10E512
10E4FC:  MOV             R6, R4
10E4FE:  LDR.W           R1, [R6,#4]!
10E502:  CBZ             R1, loc_10E512
10E504:  MOV             R4, R6
10E506:  MOV             R6, R4
10E508:  MOV             R4, R1
10E50A:  B               loc_10E4EC
10E50C:  MOV             R4, R6
10E50E:  B               loc_10E512
10E510:  MOV             R6, R4
10E512:  LDR             R5, [R6]
10E514:  MOV.W           R10, #0
10E518:  CBNZ            R5, loc_10E544
10E51A:  MOVS            R0, #0x20 ; ' '; unsigned int
10E51C:  LDR.W           R11, [R7,#arg_0]
10E520:  BLX             j__Znwj; operator new(uint)
10E524:  MOV             R5, R0
10E526:  LDR.W           R0, [R11]
10E52A:  MOV             R1, R4
10E52C:  MOV             R2, R6
10E52E:  MOV             R3, R5
10E530:  LDR             R0, [R0]
10E532:  STRD.W          R0, R10, [R5,#0x10]
10E536:  MOV             R0, R9
10E538:  STRD.W          R10, R10, [R5,#0x18]
10E53C:  BL              sub_10E21C
10E540:  MOV.W           R10, #1
10E544:  STRB.W          R10, [R8,#4]
10E548:  STR.W           R5, [R8]
10E54C:  ADD             SP, SP, #4
10E54E:  POP.W           {R8-R11}
10E552:  POP             {R4-R7,PC}
