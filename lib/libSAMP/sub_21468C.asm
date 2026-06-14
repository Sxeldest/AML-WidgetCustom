; =========================================================
; Game Engine Function: sub_21468C
; Address            : 0x21468C - 0x2146A6
; =========================================================

21468C:  PUSH            {R7,LR}
21468E:  MOV             R7, SP
214690:  CMP.W           R2, #0x1000
214694:  BLT             loc_2146A0
214696:  LDR             R1, =(aUnspecifiedGen - 0x21469C); "unspecified generic_category error" ...
214698:  ADD             R1, PC; "unspecified generic_category error"
21469A:  BL              sub_DC6DC
21469E:  POP             {R7,PC}
2146A0:  BL              sub_2145F4
2146A4:  POP             {R7,PC}
