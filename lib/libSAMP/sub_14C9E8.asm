; =========================================================
; Game Engine Function: sub_14C9E8
; Address            : 0x14C9E8 - 0x14CA36
; =========================================================

14C9E8:  PUSH            {R7,LR}
14C9EA:  MOV             R7, SP
14C9EC:  SUB             SP, SP, #0x118
14C9EE:  LDRD.W          R1, R0, [R0]; src
14C9F2:  MOVS            R3, #0
14C9F4:  ASRS            R2, R0, #0x1F
14C9F6:  ADD.W           R0, R0, R2,LSR#29
14C9FA:  MOVS            R2, #1
14C9FC:  ADD.W           R2, R2, R0,ASR#3; size
14CA00:  MOV             R0, SP; int
14CA02:  BL              sub_17D4F2
14CA06:  ADD             R1, SP, #0x120+var_C; int
14CA08:  MOVS            R2, #0x20 ; ' '
14CA0A:  MOVS            R3, #1
14CA0C:  BL              sub_17D786
14CA10:  LDR             R0, =(off_23496C - 0x14CA1A)
14CA12:  MOVW            R1, #0x13BC
14CA16:  ADD             R0, PC; off_23496C
14CA18:  LDR             R0, [R0]; dword_23DEF4
14CA1A:  LDR             R0, [R0]
14CA1C:  LDR.W           R0, [R0,#0x3B0]
14CA20:  LDR             R0, [R0]
14CA22:  LDR             R0, [R0,R1]
14CA24:  LDR             R1, [SP,#0x120+var_C]
14CA26:  LDR             R0, [R0,#0x1C]
14CA28:  BL              sub_1042F4
14CA2C:  MOV             R0, SP
14CA2E:  BL              sub_17D542
14CA32:  ADD             SP, SP, #0x118
14CA34:  POP             {R7,PC}
