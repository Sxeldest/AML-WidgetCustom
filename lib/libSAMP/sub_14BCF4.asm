; =========================================================
; Game Engine Function: sub_14BCF4
; Address            : 0x14BCF4 - 0x14BD3E
; =========================================================

14BCF4:  PUSH            {R7,LR}
14BCF6:  MOV             R7, SP
14BCF8:  SUB             SP, SP, #0x148
14BCFA:  LDRD.W          R1, R0, [R0]; src
14BCFE:  MOVS            R3, #0
14BD00:  ASRS            R2, R0, #0x1F
14BD02:  ADD.W           R0, R0, R2,LSR#29
14BD06:  MOVS            R2, #1
14BD08:  ADD.W           R2, R2, R0,ASR#3; size
14BD0C:  ADD             R0, SP, #0x150+var_14C; int
14BD0E:  BL              sub_17D4F2
14BD12:  ADD             R1, SP, #0x150+dest; dest
14BD14:  MOVS            R2, #0x2E ; '.'
14BD16:  BL              sub_17D744
14BD1A:  LDR             R0, =(off_23496C - 0x14BD24)
14BD1C:  MOVW            R1, #0x13BC
14BD20:  ADD             R0, PC; off_23496C
14BD22:  LDR             R0, [R0]; dword_23DEF4
14BD24:  LDR             R0, [R0]
14BD26:  LDR.W           R0, [R0,#0x3B0]
14BD2A:  LDR             R0, [R0]
14BD2C:  LDR             R0, [R0,R1]
14BD2E:  ADD             R1, SP, #0x150+dest
14BD30:  BL              sub_1413C0
14BD34:  ADD             R0, SP, #0x150+var_14C
14BD36:  BL              sub_17D542
14BD3A:  ADD             SP, SP, #0x148
14BD3C:  POP             {R7,PC}
