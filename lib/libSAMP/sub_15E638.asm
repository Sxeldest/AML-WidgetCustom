; =========================================================
; Game Engine Function: sub_15E638
; Address            : 0x15E638 - 0x15E66A
; =========================================================

15E638:  PUSH            {R4,R5,R7,LR}
15E63A:  ADD             R7, SP, #8
15E63C:  MOV             R4, R0
15E63E:  LDR             R0, =(off_23496C - 0x15E644)
15E640:  ADD             R0, PC; off_23496C
15E642:  LDR             R0, [R0]; dword_23DEF4
15E644:  LDR             R0, [R0]
15E646:  CBZ             R0, loc_15E666
15E648:  LDR.W           R0, [R0,#0x3B0]
15E64C:  LDR             R5, [R0,#4]
15E64E:  CBZ             R5, loc_15E666
15E650:  LSRS            R0, R4, #4
15E652:  CMP             R0, #0x7C ; '|'
15E654:  BHI             loc_15E666
15E656:  MOV             R0, R5
15E658:  MOV             R1, R4
15E65A:  BL              sub_F2396
15E65E:  CBZ             R0, loc_15E666
15E660:  LDR.W           R0, [R5,R4,LSL#2]
15E664:  POP             {R4,R5,R7,PC}
15E666:  MOVS            R0, #0
15E668:  POP             {R4,R5,R7,PC}
