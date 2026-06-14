; =========================================================
; Game Engine Function: sub_142BA4
; Address            : 0x142BA4 - 0x142C22
; =========================================================

142BA4:  PUSH            {R4,R5,R7,LR}
142BA6:  ADD             R7, SP, #8
142BA8:  SUB             SP, SP, #0x140
142BAA:  LDR             R2, [R1,#0xC]; size
142BAC:  MOV             R4, R0
142BAE:  LDR             R1, [R1,#0x14]; src
142BB0:  ADD             R0, SP, #0x148+var_11C; int
142BB2:  MOVS            R3, #0
142BB4:  MOVS            R5, #0
142BB6:  BL              sub_17D4F2
142BBA:  LDR.W           R0, [R4,#0x218]
142BBE:  CMP             R0, #5
142BC0:  BNE             loc_142C18
142BC2:  STRB.W          R5, [SP,#0x148+var_145]
142BC6:  STRH.W          R5, [SP,#0x148+var_148]
142BCA:  ADD             R0, SP, #0x148+var_11C; int
142BCC:  ADD.W           R1, SP, #0x148+var_145; int
142BD0:  MOVS            R2, #8
142BD2:  MOVS            R3, #1
142BD4:  BL              sub_17D786
142BD8:  ADD             R0, SP, #0x148+var_11C; int
142BDA:  MOV             R1, SP; int
142BDC:  MOVS            R2, #0x10
142BDE:  MOVS            R3, #1
142BE0:  BL              sub_17D786
142BE4:  ADD             R0, SP, #0x148+var_11C; int
142BE6:  ADD             R1, SP, #0x148+dest; dest
142BE8:  MOVS            R2, #0x28 ; '('
142BEA:  BL              sub_17D744
142BEE:  LDRH.W          R0, [SP,#0x148+var_148]
142BF2:  CMP.W           R0, #0x3EC
142BF6:  BHI             loc_142C18
142BF8:  LDR.W           R1, [R4,#0x3B0]
142BFC:  LDR             R1, [R1]
142BFE:  ADDS            R2, R1, R0
142C00:  LDRB.W          R2, [R2,#0xFB4]
142C04:  CBZ             R2, loc_142C18
142C06:  ADD.W           R0, R1, R0,LSL#2
142C0A:  LDR             R0, [R0,#4]
142C0C:  CBZ             R0, loc_142C18
142C0E:  LDR             R0, [R0]
142C10:  CBZ             R0, loc_142C18
142C12:  ADD             R1, SP, #0x148+dest
142C14:  BL              sub_14AC7C
142C18:  ADD             R0, SP, #0x148+var_11C
142C1A:  BL              sub_17D542
142C1E:  ADD             SP, SP, #0x140
142C20:  POP             {R4,R5,R7,PC}
