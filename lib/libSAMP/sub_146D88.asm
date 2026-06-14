; =========================================================
; Game Engine Function: sub_146D88
; Address            : 0x146D88 - 0x146DE8
; =========================================================

146D88:  PUSH            {R4,R5,R7,LR}
146D8A:  ADD             R7, SP, #8
146D8C:  SUB             SP, SP, #0x118
146D8E:  LDR             R1, =(off_23496C - 0x146D94)
146D90:  ADD             R1, PC; off_23496C
146D92:  LDR             R1, [R1]; dword_23DEF4
146D94:  LDR             R1, [R1]
146D96:  LDR.W           R1, [R1,#0x3B0]
146D9A:  LDR             R4, [R1,#0x14]
146D9C:  CBZ             R4, loc_146DE4
146D9E:  LDRD.W          R1, R0, [R0]; src
146DA2:  MOVS            R3, #0
146DA4:  ASRS            R2, R0, #0x1F
146DA6:  MOVS            R5, #0
146DA8:  ADD.W           R0, R0, R2,LSR#29
146DAC:  MOVS            R2, #1
146DAE:  ADD.W           R2, R2, R0,ASR#3; size
146DB2:  MOV             R0, SP; int
146DB4:  BL              sub_17D4F2
146DB8:  SUB.W           R1, R7, #-var_A; int
146DBC:  MOVS            R2, #0x10
146DBE:  MOVS            R3, #1
146DC0:  BL              sub_17D786
146DC4:  LDRH.W          R1, [R7,#var_A]
146DC8:  CMP.W           R5, R1,LSR#11
146DCC:  BNE             loc_146DDE
146DCE:  ADDS            R0, R4, R1
146DD0:  MOV.W           R2, #0x14000
146DD4:  LDRB            R0, [R0,R2]
146DD6:  CBZ             R0, loc_146DDE
146DD8:  MOV             R0, R4
146DDA:  BL              sub_14F844
146DDE:  MOV             R0, SP
146DE0:  BL              sub_17D542
146DE4:  ADD             SP, SP, #0x118
146DE6:  POP             {R4,R5,R7,PC}
