; =========================================================
; Game Engine Function: sub_188520
; Address            : 0x188520 - 0x18863A
; =========================================================

188520:  PUSH            {R4-R7,LR}
188522:  ADD             R7, SP, #0xC
188524:  PUSH.W          {R8-R11}
188528:  SUB             SP, SP, #0x14
18852A:  ADD.W           R5, R0, #0xA8
18852E:  ADD.W           R4, R1, #0x14
188532:  MOV             R9, R2
188534:  SUB.W           R2, R7, #-var_21
188538:  MOV             R11, R0
18853A:  MOV             R6, R1
18853C:  STR             R1, [SP,#0x30+var_20]
18853E:  MOV             R0, R5
188540:  MOV             R1, R4
188542:  MOV             R8, R3
188544:  BL              sub_189F4A
188548:  MOV             R10, R0
18854A:  LDRB.W          R0, [R7,#var_21]
18854E:  CBNZ            R0, loc_18856C
188550:  MOVS            R0, #0x18; unsigned int
188552:  BLX             j__Znwj; operator new(uint)
188556:  MOVS            R1, #0
188558:  ADD             R2, SP, #0x30+var_28
18855A:  STRD.W          R1, R1, [R0,#8]
18855E:  STR             R1, [R0,#0x10]
188560:  MOV             R1, R4
188562:  STR             R0, [SP,#0x30+var_28]
188564:  MOV             R0, R5
188566:  BL              sub_189F9A
18856A:  MOV             R10, R0
18856C:  LDR.W           R0, [R11,#0xA8]
188570:  ADD.W           R1, R6, #0x18
188574:  ADD             R2, SP, #0x30+var_20
188576:  LDR.W           R0, [R0,R10,LSL#2]
18857A:  ADDS            R0, #8
18857C:  BL              sub_189FE4
188580:  LDR.W           R0, [R11,#0xA8]
188584:  LDR.W           R1, [R11,#0x30]
188588:  LDR.W           R0, [R0,R10,LSL#2]
18858C:  CMP             R1, #0
18858E:  STRD.W          R9, R8, [R0]
188592:  BEQ             loc_188632
188594:  LDR             R2, [R0,#8]
188596:  LDR             R2, [R2]
188598:  LDR             R3, [R2,#0x18]
18859A:  CMP             R3, #0
18859C:  BNE             loc_188632
18859E:  LDR             R0, [R0,#0xC]
1885A0:  LDR             R2, [R2,#0x1C]
1885A2:  CMP             R0, R2
1885A4:  BEQ             loc_188632
1885A6:  BLX             sub_221798
1885AA:  CMP             R1, #0
1885AC:  BNE             loc_188632
1885AE:  ADD.W           R0, R11, #0x6A0
1885B2:  BL              sub_1889FC
1885B6:  LDR.W           R6, [R11,#0xA8]
1885BA:  MOV             R4, R0
1885BC:  STR             R0, [SP,#0x30+var_2C]
1885BE:  MOVS            R1, #0xD
1885C0:  LDR.W           R0, [R6,R10,LSL#2]
1885C4:  LDR             R0, [R0,#8]
1885C6:  LDR             R0, [R0]
1885C8:  LDR             R0, [R0,#0x30]
1885CA:  ADDS            R0, #7
1885CC:  ADD.W           R5, R1, R0,LSR#3
1885D0:  MOV             R0, R5; unsigned int
1885D2:  BLX             j__Znaj; operator new[](uint)
1885D6:  STR             R0, [R4,#0x34]
1885D8:  LSLS            R3, R5, #3
1885DA:  LDR.W           R1, [R6,R10,LSL#2]
1885DE:  LDR             R2, [SP,#0x30+var_20]
1885E0:  STR             R3, [R4,#0x30]
1885E2:  LDR             R1, [R1,#0xC]
1885E4:  STR.W           R1, [R0,#1]
1885E8:  LDR             R0, [R4,#0x34]
1885EA:  LDR             R1, [R2,#0x1C]
1885EC:  LDR             R2, [SP,#0x30+var_2C]
1885EE:  STR.W           R1, [R0,#5]
1885F2:  LDR.W           R0, [R11,#0xA8]
1885F6:  LDR             R1, [R2,#0x34]
1885F8:  LDR.W           R0, [R0,R10,LSL#2]
1885FC:  LDR             R0, [R0,#8]
1885FE:  LDR             R0, [R0]
188600:  LDR             R0, [R0,#0x30]
188602:  ADDS            R0, #7
188604:  LSRS            R0, R0, #3
188606:  STR.W           R0, [R1,#9]
18860A:  LDR.W           R0, [R11,#0xA8]
18860E:  LDR             R3, [R2,#0x34]
188610:  LDR.W           R0, [R0,R10,LSL#2]
188614:  LDR             R0, [R0,#8]
188616:  LDR             R0, [R0]
188618:  LDRD.W          R0, R1, [R0,#0x30]; src
18861C:  ADDS            R0, #7
18861E:  LSRS            R2, R0, #3; n
188620:  ADD.W           R0, R3, #0xD; dest
188624:  BLX             j_memcpy
188628:  ADD.W           R0, R11, #0xC
18862C:  ADD             R1, SP, #0x30+var_2C
18862E:  BL              sub_17E430
188632:  ADD             SP, SP, #0x14
188634:  POP.W           {R8-R11}
188638:  POP             {R4-R7,PC}
