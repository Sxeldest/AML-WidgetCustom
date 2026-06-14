; =========================================================
; Game Engine Function: sub_1F1B40
; Address            : 0x1F1B40 - 0x1F1BDA
; =========================================================

1F1B40:  PUSH            {R4-R7,LR}
1F1B42:  ADD             R7, SP, #0xC
1F1B44:  PUSH.W          {R8,R9,R11}
1F1B48:  MOV             R4, R0
1F1B4A:  LDR             R5, [R0]
1F1B4C:  LDRB            R0, [R0,#0x10]
1F1B4E:  SUBS            R1, R0, #3
1F1B50:  CMP             R1, #3
1F1B52:  BCS             loc_1F1B58
1F1B54:  LDR             R6, [R4,#8]
1F1B56:  B               loc_1F1B62
1F1B58:  SUBS            R1, R0, #1
1F1B5A:  CMP             R1, #2
1F1B5C:  BCC             loc_1F1B8C
1F1B5E:  LDR             R1, [R4,#4]
1F1B60:  ADDS            R6, R5, R1
1F1B62:  CMP             R6, R5
1F1B64:  BEQ             loc_1F1B8C
1F1B66:  SUB.W           R8, R5, #1
1F1B6A:  SUB.W           R9, R6, #1
1F1B6E:  CMP             R0, #4
1F1B70:  BEQ             loc_1F1BA6
1F1B72:  CMP             R0, #5
1F1B74:  BEQ             loc_1F1B96
1F1B76:  CMP             R0, #6
1F1B78:  BNE             loc_1F1BD2
1F1B7A:  MOV             R0, R9
1F1B7C:  MOV             R1, R8
1F1B7E:  BL              sub_1F2F20
1F1B82:  CBZ             R0, loc_1F1B96
1F1B84:  CMP             R0, R8
1F1B86:  BEQ             loc_1F1BC8
1F1B88:  MOVS            R1, #5
1F1B8A:  B               loc_1F1BA0
1F1B8C:  MOVS            R0, #1
1F1B8E:  MOVS            R5, #0
1F1B90:  STRB            R0, [R4,#0x10]
1F1B92:  MOVS            R0, #0
1F1B94:  B               loc_1F1BCE
1F1B96:  MOV             R0, R9
1F1B98:  MOV             R1, R8
1F1B9A:  BL              sub_1F2F4C
1F1B9E:  MOVS            R1, #4
1F1BA0:  ADDS            R5, R0, #1
1F1BA2:  STRB            R1, [R4,#0x10]
1F1BA4:  B               loc_1F1BCC
1F1BA6:  MOV             R0, R9
1F1BA8:  MOV             R1, R8
1F1BAA:  BL              sub_1F2F20
1F1BAE:  CMP             R0, R8
1F1BB0:  BEQ             loc_1F1BC8
1F1BB2:  MOV             R1, R8
1F1BB4:  MOV             R9, R0
1F1BB6:  BL              sub_1F2F4C
1F1BBA:  ADDS            R5, R0, #1
1F1BBC:  MOVS            R1, #4
1F1BBE:  SUB.W           R0, R9, R5
1F1BC2:  STRB            R1, [R4,#0x10]
1F1BC4:  ADDS            R0, #1
1F1BC6:  B               loc_1F1BCE
1F1BC8:  MOVS            R0, #3
1F1BCA:  STRB            R0, [R4,#0x10]
1F1BCC:  SUBS            R0, R6, R5
1F1BCE:  STRD.W          R5, R0, [R4,#8]
1F1BD2:  MOV             R0, R4
1F1BD4:  POP.W           {R8,R9,R11}
1F1BD8:  POP             {R4-R7,PC}
