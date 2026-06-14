; =========================================================
; Game Engine Function: sub_1ABC9C
; Address            : 0x1ABC9C - 0x1ABD82
; =========================================================

1ABC9C:  PUSH            {R4-R7,LR}
1ABC9E:  ADD             R7, SP, #0xC
1ABCA0:  PUSH.W          {R11}
1ABCA4:  MOV             R4, R0
1ABCA6:  CMP             R4, #0
1ABCA8:  BEQ             loc_1ABD72
1ABCAA:  CMP             R1, #1
1ABCAC:  BLT             loc_1ABD7A
1ABCAE:  SUBS            R5, R1, #1
1ABCB0:  LDR             R0, [R4]
1ABCB2:  MOV             R1, R5
1ABCB4:  BL              sub_1ABC9C
1ABCB8:  MOV             R6, R0
1ABCBA:  LDR             R0, [R4,#4]
1ABCBC:  MOV             R1, R5
1ABCBE:  BL              sub_1ABC9C
1ABCC2:  LDR             R1, [R4,#8]
1ABCC4:  ADD             R6, R0
1ABCC6:  MOV             R0, R1
1ABCC8:  MOV             R1, R5
1ABCCA:  BL              sub_1ABC9C
1ABCCE:  LDR             R1, [R4,#0xC]
1ABCD0:  ADD             R6, R0
1ABCD2:  MOV             R0, R1
1ABCD4:  MOV             R1, R5
1ABCD6:  BL              sub_1ABC9C
1ABCDA:  LDR             R1, [R4,#0x10]
1ABCDC:  ADD             R6, R0
1ABCDE:  MOV             R0, R1
1ABCE0:  MOV             R1, R5
1ABCE2:  BL              sub_1ABC9C
1ABCE6:  LDR             R1, [R4,#0x14]
1ABCE8:  ADD             R6, R0
1ABCEA:  MOV             R0, R1
1ABCEC:  MOV             R1, R5
1ABCEE:  BL              sub_1ABC9C
1ABCF2:  LDR             R1, [R4,#0x18]
1ABCF4:  ADD             R6, R0
1ABCF6:  MOV             R0, R1
1ABCF8:  MOV             R1, R5
1ABCFA:  BL              sub_1ABC9C
1ABCFE:  LDR             R1, [R4,#0x1C]
1ABD00:  ADD             R6, R0
1ABD02:  MOV             R0, R1
1ABD04:  MOV             R1, R5
1ABD06:  BL              sub_1ABC9C
1ABD0A:  LDR             R1, [R4,#0x20]
1ABD0C:  ADD             R6, R0
1ABD0E:  MOV             R0, R1
1ABD10:  MOV             R1, R5
1ABD12:  BL              sub_1ABC9C
1ABD16:  LDR             R1, [R4,#0x24]
1ABD18:  ADD             R6, R0
1ABD1A:  MOV             R0, R1
1ABD1C:  MOV             R1, R5
1ABD1E:  BL              sub_1ABC9C
1ABD22:  LDR             R1, [R4,#0x28]
1ABD24:  ADD             R6, R0
1ABD26:  MOV             R0, R1
1ABD28:  MOV             R1, R5
1ABD2A:  BL              sub_1ABC9C
1ABD2E:  LDR             R1, [R4,#0x2C]
1ABD30:  ADD             R6, R0
1ABD32:  MOV             R0, R1
1ABD34:  MOV             R1, R5
1ABD36:  BL              sub_1ABC9C
1ABD3A:  LDR             R1, [R4,#0x30]
1ABD3C:  ADD             R6, R0
1ABD3E:  MOV             R0, R1
1ABD40:  MOV             R1, R5
1ABD42:  BL              sub_1ABC9C
1ABD46:  LDR             R1, [R4,#0x34]
1ABD48:  ADD             R6, R0
1ABD4A:  MOV             R0, R1
1ABD4C:  MOV             R1, R5
1ABD4E:  BL              sub_1ABC9C
1ABD52:  LDR             R1, [R4,#0x38]
1ABD54:  ADD             R6, R0
1ABD56:  MOV             R0, R1
1ABD58:  MOV             R1, R5
1ABD5A:  BL              sub_1ABC9C
1ABD5E:  LDR             R1, [R4,#0x3C]
1ABD60:  ADDS            R4, R0, R6
1ABD62:  MOV             R0, R1
1ABD64:  MOV             R1, R5
1ABD66:  BL              sub_1ABC9C
1ABD6A:  ADD             R0, R4
1ABD6C:  POP.W           {R11}
1ABD70:  POP             {R4-R7,PC}
1ABD72:  MOVS            R0, #0
1ABD74:  POP.W           {R11}
1ABD78:  POP             {R4-R7,PC}
1ABD7A:  MOVS            R0, #1
1ABD7C:  POP.W           {R11}
1ABD80:  POP             {R4-R7,PC}
