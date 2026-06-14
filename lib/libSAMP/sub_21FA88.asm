; =========================================================
; Game Engine Function: sub_21FA88
; Address            : 0x21FA88 - 0x21FABC
; =========================================================

21FA88:  PUSH            {R4-R7,LR}
21FA8A:  ADD             R7, SP, #0xC
21FA8C:  PUSH.W          {R11}
21FA90:  MOV             R5, R2
21FA92:  MOV             R6, R1
21FA94:  LDR             R1, [R1,#8]
21FA96:  MOV             R4, R3
21FA98:  LDR             R2, [R7,#arg_4]
21FA9A:  BL              sub_21EEBC
21FA9E:  CBZ             R0, loc_21FAB6
21FAA0:  LDR             R0, [R7,#arg_0]
21FAA2:  MOV             R1, R6
21FAA4:  STR             R0, [R7,#arg_0]
21FAA6:  MOV             R2, R5
21FAA8:  MOV             R3, R4
21FAAA:  POP.W           {R11}
21FAAE:  POP.W           {R4-R7,LR}
21FAB2:  B.W             sub_21F590
21FAB6:  POP.W           {R11}
21FABA:  POP             {R4-R7,PC}
