; =========================================================
; Game Engine Function: sub_14E108
; Address            : 0x14E108 - 0x14E156
; =========================================================

14E108:  PUSH            {R4,R6,R7,LR}
14E10A:  ADD             R7, SP, #8
14E10C:  SUB             SP, SP, #0x118
14E10E:  LDR             R1, =(off_23496C - 0x14E118)
14E110:  MOVW            R4, #0x13BC
14E114:  ADD             R1, PC; off_23496C
14E116:  LDR             R1, [R1]; dword_23DEF4
14E118:  LDR             R1, [R1]
14E11A:  LDR.W           R2, [R1,#0x3B0]
14E11E:  LDRD.W          R1, R0, [R0]; src
14E122:  ASRS            R3, R0, #0x1F
14E124:  LDR             R2, [R2]
14E126:  ADD.W           R0, R0, R3,LSR#29
14E12A:  MOVS            R3, #0
14E12C:  LDR             R4, [R2,R4]
14E12E:  MOVS            R2, #1
14E130:  ADD.W           R2, R2, R0,ASR#3; size
14E134:  MOV             R0, SP; int
14E136:  BL              sub_17D4F2
14E13A:  ADD             R1, SP, #0x120+var_C; int
14E13C:  MOVS            R2, #0x20 ; ' '
14E13E:  MOVS            R3, #1
14E140:  BL              sub_17D786
14E144:  LDR             R1, [SP,#0x120+var_C]
14E146:  LDR             R0, [R4,#0x1C]
14E148:  BL              sub_10431C
14E14C:  MOV             R0, SP
14E14E:  BL              sub_17D542
14E152:  ADD             SP, SP, #0x118
14E154:  POP             {R4,R6,R7,PC}
