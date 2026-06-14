; =========================================================
; Game Engine Function: sub_152694
; Address            : 0x152694 - 0x1526B2
; =========================================================

152694:  PUSH            {R7,LR}
152696:  MOV             R7, SP
152698:  SUB             SP, SP, #8
15269A:  STRH.W          R1, [R7,#-2]
15269E:  ADDS            R0, #0x20 ; ' '
1526A0:  SUBS            R1, R7, #2
1526A2:  BL              sub_153102
1526A6:  CMP             R0, #0
1526A8:  ITE NE
1526AA:  LDRNE           R0, [R0,#0xC]
1526AC:  MOVEQ           R0, #0
1526AE:  ADD             SP, SP, #8
1526B0:  POP             {R7,PC}
