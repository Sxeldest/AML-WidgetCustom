; =========================================================
; Game Engine Function: sub_14BEC8
; Address            : 0x14BEC8 - 0x14BF18
; =========================================================

14BEC8:  PUSH            {R4,R6,R7,LR}
14BECA:  ADD             R7, SP, #8
14BECC:  SUB             SP, SP, #0x118
14BECE:  LDRD.W          R1, R0, [R0]; src
14BED2:  MOVS            R3, #0
14BED4:  ASRS            R2, R0, #0x1F
14BED6:  ADD.W           R0, R0, R2,LSR#29
14BEDA:  MOVS            R2, #1
14BEDC:  ADD.W           R2, R2, R0,ASR#3; size
14BEE0:  ADD             R0, SP, #0x120+var_11C; int
14BEE2:  BL              sub_17D4F2
14BEE6:  LDR             R0, =(off_23496C - 0x14BEEC)
14BEE8:  ADD             R0, PC; off_23496C
14BEEA:  LDR             R0, [R0]; dword_23DEF4
14BEEC:  LDR             R0, [R0]
14BEEE:  LDR.W           R0, [R0,#0x3B0]
14BEF2:  LDR             R4, [R0,#8]
14BEF4:  CBZ             R4, loc_14BF0E
14BEF6:  ADD             R0, SP, #0x120+var_11C; int
14BEF8:  ADD.W           R1, SP, #0x120+var_11E; int
14BEFC:  MOVS            R2, #0x10
14BEFE:  MOVS            R3, #1
14BF00:  BL              sub_17D786
14BF04:  LDRH.W          R1, [SP,#0x120+var_11E]
14BF08:  MOV             R0, R4
14BF0A:  BL              sub_13E7FC
14BF0E:  ADD             R0, SP, #0x120+var_11C
14BF10:  BL              sub_17D542
14BF14:  ADD             SP, SP, #0x118
14BF16:  POP             {R4,R6,R7,PC}
