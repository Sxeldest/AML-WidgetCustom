; =========================================================
; Game Engine Function: sub_1096C8
; Address            : 0x1096C8 - 0x109748
; =========================================================

1096C8:  PUSH            {R11,LR}
1096CC:  MOV             R11, SP
1096D0:  LDR             R12, [R0]
1096D4:  CMP             R12, #0
1096D8:  BMI             loc_1096FC
1096DC:  MOV             R3, #1
1096E0:  STR             R3, [R1]
1096E4:  MOV             R3, #4
1096E8:  LDR             R1, [R0,#4]!
1096EC:  MOV             R1, R1,LSR#24
1096F0:  ADD             R1, R3, R1,LSL#2
1096F4:  STR             R1, [R2]
1096F8:  B               loc_10973C
1096FC:  UBFX            LR, R12, #0x18, #4
109700:  CMP             LR, #0
109704:  BEQ             loc_10972C
109708:  CMP             LR, #3
10970C:  MOVNE           R3, #0
109710:  CMPNE           LR, #1
109714:  BNE             loc_109740
109718:  UBFX            R12, R12, #0x10, #8
10971C:  MOV             R3, #4
109720:  ADD             R3, R3, R12,LSL#2
109724:  MOV             R12, #2
109728:  B               loc_109734
10972C:  MOV             R12, #1
109730:  MOV             R3, #4
109734:  STR             R3, [R2]
109738:  STR             R12, [R1]
10973C:  MOV             R3, R0
109740:  MOV             R0, R3
109744:  POP             {R11,PC}
