; =========================================================
; Game Engine Function: sub_109B90
; Address            : 0x109B90 - 0x109BC2
; =========================================================

109B90:  PUSH            {R4,R5,R7,LR}
109B92:  ADD             R7, SP, #8
109B94:  MOV             R5, R0
109B96:  LDR             R0, [R0,#0xC]
109B98:  CBZ             R0, locret_109BC0
109B9A:  LDR             R0, [R5,#8]
109B9C:  MOV             R4, R1
109B9E:  BL              sub_108354
109BA2:  CBZ             R0, locret_109BC0
109BA4:  LDR             R0, [R5,#0xC]
109BA6:  CBZ             R0, locret_109BC0
109BA8:  BL              sub_10837C
109BAC:  CMP             R4, #3
109BAE:  BHI             locret_109BC0
109BB0:  CMP             R0, #1
109BB2:  BNE             locret_109BC0
109BB4:  LDR             R0, =(unk_B3DE6 - 0x109BBE)
109BB6:  MOV             R2, R4
109BB8:  LDR             R1, [R5,#8]
109BBA:  ADD             R0, PC; unk_B3DE6
109BBC:  BL              sub_107188
109BC0:  POP             {R4,R5,R7,PC}
