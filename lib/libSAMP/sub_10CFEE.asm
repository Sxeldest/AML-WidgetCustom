; =========================================================
; Game Engine Function: sub_10CFEE
; Address            : 0x10CFEE - 0x10D00E
; =========================================================

10CFEE:  PUSH            {R4,R6,R7,LR}
10CFF0:  ADD             R7, SP, #8
10CFF2:  SUB             SP, SP, #0x10
10CFF4:  MOV             R4, R0
10CFF6:  MOVS            R0, #0
10CFF8:  STR             R0, [R4,#0x10]
10CFFA:  STR             R2, [SP,#0x18+var_C]
10CFFC:  STRD.W          R3, R1, [SP,#0x18+var_14]
10D000:  ADD             R1, SP, #0x18+var_14
10D002:  MOV             R0, R4
10D004:  BL              sub_10D21C
10D008:  MOV             R0, R4
10D00A:  ADD             SP, SP, #0x10
10D00C:  POP             {R4,R6,R7,PC}
