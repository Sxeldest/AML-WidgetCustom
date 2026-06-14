; =========================================================
; Game Engine Function: sub_14BDFC
; Address            : 0x14BDFC - 0x14BE4C
; =========================================================

14BDFC:  PUSH            {R4,R6,R7,LR}
14BDFE:  ADD             R7, SP, #8
14BE00:  SUB             SP, SP, #0x118
14BE02:  LDRD.W          R1, R0, [R0]; src
14BE06:  MOVS            R3, #0
14BE08:  ASRS            R2, R0, #0x1F
14BE0A:  ADD.W           R0, R0, R2,LSR#29
14BE0E:  MOVS            R2, #1
14BE10:  ADD.W           R2, R2, R0,ASR#3; size
14BE14:  ADD             R0, SP, #0x120+var_11C; int
14BE16:  BL              sub_17D4F2
14BE1A:  LDR             R0, =(off_23496C - 0x14BE20)
14BE1C:  ADD             R0, PC; off_23496C
14BE1E:  LDR             R0, [R0]; dword_23DEF4
14BE20:  LDR             R0, [R0]
14BE22:  LDR.W           R0, [R0,#0x3B0]
14BE26:  LDR             R4, [R0,#8]
14BE28:  CBZ             R4, loc_14BE42
14BE2A:  ADD             R0, SP, #0x120+var_11C; int
14BE2C:  ADD.W           R1, SP, #0x120+var_11E; int
14BE30:  MOVS            R2, #0x10
14BE32:  MOVS            R3, #1
14BE34:  BL              sub_17D786
14BE38:  LDRH.W          R1, [SP,#0x120+var_11E]
14BE3C:  MOV             R0, R4
14BE3E:  BL              sub_13E7D0
14BE42:  ADD             R0, SP, #0x120+var_11C
14BE44:  BL              sub_17D542
14BE48:  ADD             SP, SP, #0x118
14BE4A:  POP             {R4,R6,R7,PC}
