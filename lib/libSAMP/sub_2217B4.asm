; =========================================================
; Game Engine Function: sub_2217B4
; Address            : 0x2217B4 - 0x2217D8
; =========================================================

2217B4:  PUSH            {R6,LR}
2217B8:  SUB             SP, SP, #0x10
2217BC:  ADD             R6, SP, #0x18+var_10
2217C0:  STR             R6, [SP,#0x18+var_18]
2217C4:  BL              sub_2214A4
2217C8:  LDR             R2, [SP,#0x18+var_10]
2217CC:  LDR             R3, [SP,#0x18+var_C]
2217D0:  ADD             SP, SP, #0x10
2217D4:  POP             {R6,PC}
