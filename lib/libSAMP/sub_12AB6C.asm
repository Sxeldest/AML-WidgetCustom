; =========================================================
; Game Engine Function: sub_12AB6C
; Address            : 0x12AB6C - 0x12AB98
; =========================================================

12AB6C:  PUSH            {R4-R7,LR}
12AB6E:  ADD             R7, SP, #0xC
12AB70:  PUSH.W          {R11}
12AB74:  LDR             R6, [R0,#4]
12AB76:  MOV             R0, R3
12AB78:  MOV             R4, R2
12AB7A:  MOV             R5, R1
12AB7C:  BL              sub_165778
12AB80:  MOV             R3, R0; int
12AB82:  LDR             R0, [R7,#arg_0]
12AB84:  STR             R0, [R7,#arg_0]
12AB86:  MOV             R0, R6; int
12AB88:  MOV             R1, R5; int
12AB8A:  MOV             R2, R4; int
12AB8C:  POP.W           {R11}
12AB90:  POP.W           {R4-R7,LR}
12AB94:  B.W             sub_173FCC
