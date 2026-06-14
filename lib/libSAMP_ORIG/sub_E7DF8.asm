; =========================================================
; Game Engine Function: sub_E7DF8
; Address            : 0xE7DF8 - 0xE7E0A
; =========================================================

E7DF8:  PUSH            {R7,LR}
E7DFA:  MOV             R7, SP
E7DFC:  MOV             R2, R0
E7DFE:  LDR             R0, [R0]
E7E00:  STR             R1, [R2]
E7E02:  CBZ             R0, locret_E7E08
E7E04:  LDR             R1, [R2,#4]
E7E06:  BLX             R1
E7E08:  POP             {R7,PC}
