; =========================================================
; Game Engine Function: sub_DE834
; Address            : 0xDE834 - 0xDE870
; =========================================================

DE834:  PUSH            {R4-R7,LR}
DE836:  ADD             R7, SP, #0xC
DE838:  PUSH.W          {R11}
DE83C:  MOV             R5, R0
DE83E:  CMP             R1, #1
DE840:  BLT             loc_DE868
DE842:  MOV             R4, R2
DE844:  MOV             R6, R1
DE846:  LDRD.W          R0, R2, [R5,#8]
DE84A:  ADDS            R1, R0, #1
DE84C:  CMP             R2, R1
DE84E:  BCS             loc_DE85C
DE850:  LDR             R0, [R5]
DE852:  LDR             R2, [R0]
DE854:  MOV             R0, R5
DE856:  BLX             R2
DE858:  LDR             R0, [R5,#8]
DE85A:  ADDS            R1, R0, #1
DE85C:  LDR             R2, [R5,#4]
DE85E:  SUBS            R6, #1
DE860:  LDRB            R3, [R4]
DE862:  STR             R1, [R5,#8]
DE864:  STRB            R3, [R2,R0]
DE866:  BNE             loc_DE846
DE868:  MOV             R0, R5
DE86A:  POP.W           {R11}
DE86E:  POP             {R4-R7,PC}
