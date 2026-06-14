; =========================================================
; Game Engine Function: sub_14CD3C
; Address            : 0x14CD3C - 0x14CD9E
; =========================================================

14CD3C:  PUSH            {R4,R6,R7,LR}
14CD3E:  ADD             R7, SP, #8
14CD40:  SUB             SP, SP, #0x118
14CD42:  LDR             R1, =(off_23496C - 0x14CD4C)
14CD44:  MOVW            R4, #0x13BC
14CD48:  ADD             R1, PC; off_23496C
14CD4A:  LDR             R1, [R1]; dword_23DEF4
14CD4C:  LDR             R1, [R1]
14CD4E:  LDR.W           R2, [R1,#0x3B0]
14CD52:  LDRD.W          R1, R0, [R0]; src
14CD56:  ASRS            R3, R0, #0x1F
14CD58:  LDR             R2, [R2]
14CD5A:  ADD.W           R0, R0, R3,LSR#29
14CD5E:  MOVS            R3, #0
14CD60:  LDR             R4, [R2,R4]
14CD62:  MOVS            R2, #1
14CD64:  ADD.W           R2, R2, R0,ASR#3; size
14CD68:  MOV             R0, SP; int
14CD6A:  BL              sub_17D4F2
14CD6E:  SUB.W           R1, R7, #-var_9; int
14CD72:  MOVS            R2, #8
14CD74:  MOVS            R3, #1
14CD76:  BL              sub_17D786
14CD7A:  ADD             R1, SP, #0x120+var_C; int
14CD7C:  MOV             R0, SP; int
14CD7E:  MOVS            R2, #0x10
14CD80:  MOVS            R3, #1
14CD82:  BL              sub_17D786
14CD86:  LDRB.W          R1, [R7,#var_9]
14CD8A:  LDR             R0, [R4,#0x1C]
14CD8C:  LDRH.W          R2, [SP,#0x120+var_C]
14CD90:  BL              sub_105486
14CD94:  MOV             R0, SP
14CD96:  BL              sub_17D542
14CD9A:  ADD             SP, SP, #0x118
14CD9C:  POP             {R4,R6,R7,PC}
