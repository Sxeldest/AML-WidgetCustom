; =========================================================
; Game Engine Function: sub_14DFC8
; Address            : 0x14DFC8 - 0x14E008
; =========================================================

14DFC8:  PUSH            {R7,LR}
14DFCA:  MOV             R7, SP
14DFCC:  SUB             SP, SP, #0x118
14DFCE:  LDRD.W          R1, R0, [R0]; src
14DFD2:  MOVS            R3, #0
14DFD4:  ASRS            R2, R0, #0x1F
14DFD6:  ADD.W           R0, R0, R2,LSR#29
14DFDA:  MOVS            R2, #1
14DFDC:  ADD.W           R2, R2, R0,ASR#3; size
14DFE0:  MOV             R0, SP; int
14DFE2:  BL              sub_17D4F2
14DFE6:  ADD             R1, SP, #0x120+var_C; int
14DFE8:  MOVS            R2, #0x20 ; ' '
14DFEA:  MOVS            R3, #1
14DFEC:  BL              sub_17D786
14DFF0:  LDR             R0, =(off_234970 - 0x14DFF8)
14DFF2:  LDR             R1, [SP,#0x120+var_C]
14DFF4:  ADD             R0, PC; off_234970
14DFF6:  LDR             R0, [R0]; dword_23DEF0
14DFF8:  LDR             R0, [R0]
14DFFA:  BL              sub_FA318
14DFFE:  MOV             R0, SP
14E000:  BL              sub_17D542
14E004:  ADD             SP, SP, #0x118
14E006:  POP             {R7,PC}
