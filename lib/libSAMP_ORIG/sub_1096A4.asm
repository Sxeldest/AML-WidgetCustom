; =========================================================
; Game Engine Function: sub_1096A4
; Address            : 0x1096A4 - 0x1096C8
; =========================================================

1096A4:  PUSH            {R6,LR}
1096A8:  SUB             SP, SP, #0x10
1096AC:  ADD             R6, SP, #0x18+var_10
1096B0:  STR             R6, [SP,#0x18+var_18]
1096B4:  BL              sub_109394
1096B8:  LDR             R2, [SP,#0x18+var_10]
1096BC:  LDR             R3, [SP,#0x18+var_C]
1096C0:  ADD             SP, SP, #0x10
1096C4:  POP             {R6,PC}
