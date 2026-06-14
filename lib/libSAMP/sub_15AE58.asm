; =========================================================
; Game Engine Function: sub_15AE58
; Address            : 0x15AE58 - 0x15AEB0
; =========================================================

15AE58:  PUSH            {R4-R7,LR}
15AE5A:  ADD             R7, SP, #0xC
15AE5C:  PUSH.W          {R11}
15AE60:  SUB             SP, SP, #8
15AE62:  MOV             R5, R1
15AE64:  MOV             R4, R0
15AE66:  MOVS            R0, #0
15AE68:  SUB.W           R1, R7, #-var_12; int
15AE6C:  STRH.W          R0, [R7,#var_12]
15AE70:  MOVS            R2, #0x10
15AE72:  STR             R0, [SP,#0x18+var_18]
15AE74:  MOV             R0, R5; int
15AE76:  MOVS            R3, #1
15AE78:  BL              sub_17D786
15AE7C:  MOV             R1, SP; int
15AE7E:  MOV             R0, R5; int
15AE80:  MOVS            R2, #0x20 ; ' '
15AE82:  MOVS            R3, #1
15AE84:  BL              sub_17D786
15AE88:  MOV             R0, R4
15AE8A:  BL              sub_155B70
15AE8E:  MOV             R5, R0
15AE90:  LDR             R0, [R4,#0x58]
15AE92:  LDRH.W          R1, [R7,#var_12]
15AE96:  LDR             R6, [SP,#0x18+var_18]
15AE98:  BL              sub_152A9A
15AE9C:  CBZ             R0, loc_15AEA8
15AE9E:  SUBS            R1, R5, R6
15AEA0:  BIC.W           R1, R1, R1,ASR#31
15AEA4:  BL              sub_150C66
15AEA8:  ADD             SP, SP, #8
15AEAA:  POP.W           {R11}
15AEAE:  POP             {R4-R7,PC}
