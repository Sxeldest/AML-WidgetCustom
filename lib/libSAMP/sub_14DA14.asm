; =========================================================
; Game Engine Function: sub_14DA14
; Address            : 0x14DA14 - 0x14DA8C
; =========================================================

14DA14:  PUSH            {R4,R6,R7,LR}
14DA16:  ADD             R7, SP, #8
14DA18:  SUB             SP, SP, #0x120
14DA1A:  LDRD.W          R1, R0, [R0]; src
14DA1E:  MOVS            R3, #0
14DA20:  ASRS            R2, R0, #0x1F
14DA22:  ADD.W           R0, R0, R2,LSR#29
14DA26:  MOVS            R2, #1
14DA28:  ADD.W           R2, R2, R0,ASR#3; size
14DA2C:  MOV             R0, SP; int
14DA2E:  BL              sub_17D4F2
14DA32:  ADD             R4, SP, #0x128+var_14
14DA34:  MOVS            R2, #0x20 ; ' '
14DA36:  MOVS            R3, #1
14DA38:  MOV             R1, R4; int
14DA3A:  BL              sub_17D786
14DA3E:  ADDS            R1, R4, #4; int
14DA40:  MOV             R0, SP; int
14DA42:  MOVS            R2, #0x20 ; ' '
14DA44:  MOVS            R3, #1
14DA46:  BL              sub_17D786
14DA4A:  ADD.W           R1, R4, #8; int
14DA4E:  MOV             R0, SP; int
14DA50:  MOVS            R2, #0x20 ; ' '
14DA52:  MOVS            R3, #1
14DA54:  BL              sub_17D786
14DA58:  LDR             R0, =(off_23496C - 0x14DA5E)
14DA5A:  ADD             R0, PC; off_23496C
14DA5C:  LDR             R0, [R0]; dword_23DEF4
14DA5E:  LDR             R0, [R0]
14DA60:  LDR.W           R0, [R0,#0x3B0]
14DA64:  LDR             R0, [R0]
14DA66:  CBZ             R0, loc_14DA82
14DA68:  MOVW            R1, #0x13BC
14DA6C:  LDR             R4, [R0,R1]
14DA6E:  CBZ             R4, loc_14DA82
14DA70:  MOV             R0, R4
14DA72:  BL              sub_141418
14DA76:  LDR             R0, [R4,#0x1C]
14DA78:  ADD             R3, SP, #0x128+var_14
14DA7A:  LDM             R3, {R1-R3}
14DA7C:  LDR             R4, [R0]
14DA7E:  LDR             R4, [R4,#0x10]
14DA80:  BLX             R4
14DA82:  MOV             R0, SP
14DA84:  BL              sub_17D542
14DA88:  ADD             SP, SP, #0x120
14DA8A:  POP             {R4,R6,R7,PC}
