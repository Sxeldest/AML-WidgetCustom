; =========================================================
; Game Engine Function: sub_14DF48
; Address            : 0x14DF48 - 0x14DFBA
; =========================================================

14DF48:  PUSH            {R4,R6,R7,LR}
14DF4A:  ADD             R7, SP, #8
14DF4C:  SUB             SP, SP, #0x128
14DF4E:  LDRD.W          R1, R0, [R0]; src
14DF52:  MOVS            R3, #0
14DF54:  ASRS            R2, R0, #0x1F
14DF56:  ADD.W           R0, R0, R2,LSR#29
14DF5A:  MOVS            R2, #1
14DF5C:  ADD.W           R2, R2, R0,ASR#3; size
14DF60:  ADD             R0, SP, #0x130+var_12C; int
14DF62:  BL              sub_17D4F2
14DF66:  ADD             R4, SP, #0x130+var_18
14DF68:  MOVS            R2, #0x20 ; ' '
14DF6A:  MOVS            R3, #1
14DF6C:  MOV             R1, R4; int
14DF6E:  BL              sub_17D786
14DF72:  ADDS            R1, R4, #4; int
14DF74:  ADD             R0, SP, #0x130+var_12C; int
14DF76:  MOVS            R2, #0x20 ; ' '
14DF78:  MOVS            R3, #1
14DF7A:  BL              sub_17D786
14DF7E:  ADD.W           R1, R4, #8; int
14DF82:  ADD             R0, SP, #0x130+var_12C; int
14DF84:  MOVS            R2, #0x20 ; ' '
14DF86:  MOVS            R3, #1
14DF88:  BL              sub_17D786
14DF8C:  ADD.W           R1, R4, #0xC; int
14DF90:  ADD             R0, SP, #0x130+var_12C; int
14DF92:  MOVS            R2, #0x20 ; ' '
14DF94:  MOVS            R3, #1
14DF96:  BL              sub_17D786
14DF9A:  LDR             R0, =(off_23496C - 0x14DFA4)
14DF9C:  VLD1.64         {D16-D17}, [R4]
14DFA0:  ADD             R0, PC; off_23496C
14DFA2:  LDR             R0, [R0]; dword_23DEF4
14DFA4:  LDR             R0, [R0]
14DFA6:  LDR.W           R0, [R0,#0x20C]
14DFAA:  ADDS            R0, #0x38 ; '8'
14DFAC:  VST1.32         {D16-D17}, [R0]
14DFB0:  ADD             R0, SP, #0x130+var_12C
14DFB2:  BL              sub_17D542
14DFB6:  ADD             SP, SP, #0x128
14DFB8:  POP             {R4,R6,R7,PC}
