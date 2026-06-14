; =========================================================
; Game Engine Function: sub_1085E4
; Address            : 0x1085E4 - 0x108630
; =========================================================

1085E4:  PUSH            {R4-R7,LR}
1085E6:  ADD             R7, SP, #0xC
1085E8:  PUSH.W          {R6-R9,R11}
1085EC:  LDR             R4, [R7,#arg_4]
1085EE:  MOV             R6, R1
1085F0:  LDR             R1, [R1,#8]
1085F2:  MOV             R9, R2
1085F4:  MOV             R8, R3
1085F6:  MOV             R5, R0
1085F8:  MOV             R2, R4
1085FA:  BL              sub_107A64
1085FE:  LDR             R1, [R7,#arg_0]
108600:  CBZ             R0, loc_108618
108602:  STR             R1, [R7,#arg_0]
108604:  MOV             R1, R6
108606:  MOV             R2, R9
108608:  MOV             R3, R8
10860A:  ADD             SP, SP, #8
10860C:  POP.W           {R8,R9,R11}
108610:  POP.W           {R4-R7,LR}
108614:  B.W             sub_108138
108618:  LDR             R0, [R5,#8]
10861A:  MOV             R3, R8
10861C:  LDR             R2, [R0]
10861E:  LDR             R5, [R2,#0x14]
108620:  MOV             R2, R9
108622:  STRD.W          R1, R4, [SP,#0x20+var_20]
108626:  MOV             R1, R6
108628:  BLX             R5
10862A:  POP.W           {R2,R3,R8,R9,R11}
10862E:  POP             {R4-R7,PC}
