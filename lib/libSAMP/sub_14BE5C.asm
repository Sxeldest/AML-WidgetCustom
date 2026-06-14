; =========================================================
; Game Engine Function: sub_14BE5C
; Address            : 0x14BE5C - 0x14BEBA
; =========================================================

14BE5C:  PUSH            {R4,R6,R7,LR}
14BE5E:  ADD             R7, SP, #8
14BE60:  SUB             SP, SP, #0x120
14BE62:  LDRD.W          R1, R0, [R0]; src
14BE66:  MOVS            R3, #0
14BE68:  ASRS            R2, R0, #0x1F
14BE6A:  ADD.W           R0, R0, R2,LSR#29
14BE6E:  MOVS            R2, #1
14BE70:  ADD.W           R2, R2, R0,ASR#3; size
14BE74:  ADD             R0, SP, #0x128+var_11C; int
14BE76:  BL              sub_17D4F2
14BE7A:  LDR             R0, =(off_23496C - 0x14BE80)
14BE7C:  ADD             R0, PC; off_23496C
14BE7E:  LDR             R0, [R0]; dword_23DEF4
14BE80:  LDR             R0, [R0]
14BE82:  LDR.W           R0, [R0,#0x3B0]
14BE86:  LDR             R4, [R0,#8]
14BE88:  CBZ             R4, loc_14BEB0
14BE8A:  ADD             R0, SP, #0x128+var_11C; int
14BE8C:  ADD.W           R1, SP, #0x128+var_11E; int
14BE90:  MOVS            R2, #0x10
14BE92:  MOVS            R3, #1
14BE94:  BL              sub_17D786
14BE98:  ADD             R0, SP, #0x128+var_11C; int
14BE9A:  ADD             R1, SP, #0x128+var_124; int
14BE9C:  MOVS            R2, #0x20 ; ' '
14BE9E:  MOVS            R3, #1
14BEA0:  BL              sub_17D786
14BEA4:  LDRH.W          R1, [SP,#0x128+var_11E]
14BEA8:  LDR             R2, [SP,#0x128+var_124]
14BEAA:  MOV             R0, R4
14BEAC:  BL              sub_13E7F2
14BEB0:  ADD             R0, SP, #0x128+var_11C
14BEB2:  BL              sub_17D542
14BEB6:  ADD             SP, SP, #0x120
14BEB8:  POP             {R4,R6,R7,PC}
