; =========================================================
; Game Engine Function: sub_1090D0
; Address            : 0x1090D0 - 0x109114
; =========================================================

1090D0:  PUSH            {R4-R7,LR}
1090D4:  ADD             R7, SP, #0xC
1090D8:  EOR             R4, R0, R1
1090DC:  MOV             R5, R0
1090E0:  MOV             R6, R2
1090E4:  EOR             R12, R0, R0,ASR#31
1090E8:  EOR             LR, R1, R1,ASR#31
1090EC:  SUB             R0, R12, R0,ASR#31
1090F0:  SUB             R1, LR, R1,ASR#31
1090F4:  BL              sub_109114
1090F8:  LDR             R1, [R6]
1090FC:  EOR             R0, R0, R4,ASR#31
109100:  EOR             R1, R1, R5,ASR#31
109104:  SUB             R0, R0, R4,ASR#31
109108:  SUB             R1, R1, R5,ASR#31
10910C:  STR             R1, [R6]
109110:  POP             {R4-R7,PC}
