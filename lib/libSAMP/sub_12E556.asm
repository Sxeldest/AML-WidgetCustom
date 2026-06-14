; =========================================================
; Game Engine Function: sub_12E556
; Address            : 0x12E556 - 0x12E574
; =========================================================

12E556:  PUSH            {R7,LR}
12E558:  MOV             R7, SP
12E55A:  SUB             SP, SP, #8
12E55C:  LDR             R0, [R0,#0x20]
12E55E:  STR             R2, [SP,#0x10+var_C]
12E560:  STR             R1, [SP,#0x10+var_10]
12E562:  CBZ             R0, loc_12E570
12E564:  LDR             R1, [R0]
12E566:  LDR             R2, [R1,#0x18]
12E568:  MOV             R1, SP
12E56A:  BLX             R2
12E56C:  ADD             SP, SP, #8
12E56E:  POP             {R7,PC}
12E570:  BL              sub_DC92C
