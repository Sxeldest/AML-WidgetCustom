; =========================================================
; Game Engine Function: sub_EF528
; Address            : 0xEF528 - 0xEF564
; =========================================================

EF528:  PUSH            {R4,R6,R7,LR}
EF52A:  ADD             R7, SP, #8
EF52C:  SUB             SP, SP, #8
EF52E:  MOV             R4, R0
EF530:  LDR             R0, [R0,#8]; int
EF532:  LDRB            R2, [R4,#4]
EF534:  LDR             R1, [R4,#0xC]
EF536:  CBZ             R2, loc_EF548
EF538:  LDR             R1, [R1,#0x10]
EF53A:  CMP             R1, #0xB
EF53C:  BHI             loc_EF556
EF53E:  LDR             R2, =(off_22AA50 - 0xEF544); "January" ...
EF540:  ADD             R2, PC; off_22AA50
EF542:  LDR.W           R1, [R2,R1,LSL#2]
EF546:  B               loc_EF55A
EF548:  LDR             R2, [R4]
EF54A:  MOVS            R3, #0
EF54C:  STR             R3, [SP,#0x10+var_10]
EF54E:  MOVS            R3, #0x42 ; 'B'
EF550:  BL              sub_EFCE0
EF554:  B               loc_EF55E
EF556:  LDR             R1, =(asc_887EB - 0xEF55C); "?" ...
EF558:  ADD             R1, PC; "?"
EF55A:  BL              sub_DFA8C
EF55E:  STR             R0, [R4,#8]
EF560:  ADD             SP, SP, #8
EF562:  POP             {R4,R6,R7,PC}
