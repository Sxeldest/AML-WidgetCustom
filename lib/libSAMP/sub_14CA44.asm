; =========================================================
; Game Engine Function: sub_14CA44
; Address            : 0x14CA44 - 0x14CAA0
; =========================================================

14CA44:  PUSH            {R7,LR}
14CA46:  MOV             R7, SP
14CA48:  SUB             SP, SP, #0x120
14CA4A:  LDRD.W          R1, R0, [R0]; src
14CA4E:  MOVS            R3, #0
14CA50:  ASRS            R2, R0, #0x1F
14CA52:  ADD.W           R0, R0, R2,LSR#29
14CA56:  MOVS            R2, #1
14CA58:  ADD.W           R2, R2, R0,ASR#3; size
14CA5C:  ADD             R0, SP, #0x128+var_124; int
14CA5E:  BL              sub_17D4F2
14CA62:  ADD             R1, SP, #0x128+var_C; int
14CA64:  MOVS            R2, #0x20 ; ' '
14CA66:  MOVS            R3, #1
14CA68:  BL              sub_17D786
14CA6C:  ADD             R0, SP, #0x128+var_124; int
14CA6E:  ADD             R1, SP, #0x128+var_10; int
14CA70:  MOVS            R2, #0x20 ; ' '
14CA72:  MOVS            R3, #1
14CA74:  BL              sub_17D786
14CA78:  LDR             R0, =(off_23496C - 0x14CA82)
14CA7A:  MOVW            R1, #0x13BC
14CA7E:  ADD             R0, PC; off_23496C
14CA80:  LDR             R0, [R0]; dword_23DEF4
14CA82:  LDR             R0, [R0]
14CA84:  LDR.W           R0, [R0,#0x3B0]
14CA88:  LDR             R0, [R0]
14CA8A:  LDR             R0, [R0,R1]
14CA8C:  LDRD.W          R2, R1, [SP,#0x128+var_10]
14CA90:  LDR             R0, [R0,#0x1C]
14CA92:  BL              sub_104950
14CA96:  ADD             R0, SP, #0x128+var_124
14CA98:  BL              sub_17D542
14CA9C:  ADD             SP, SP, #0x120
14CA9E:  POP             {R7,PC}
