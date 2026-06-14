; =========================================================
; Game Engine Function: sub_14E018
; Address            : 0x14E018 - 0x14E05C
; =========================================================

14E018:  PUSH            {R7,LR}
14E01A:  MOV             R7, SP
14E01C:  SUB             SP, SP, #0x118
14E01E:  LDRD.W          R1, R0, [R0]; src
14E022:  MOVS            R3, #0
14E024:  ASRS            R2, R0, #0x1F
14E026:  ADD.W           R0, R0, R2,LSR#29
14E02A:  MOVS            R2, #1
14E02C:  ADD.W           R2, R2, R0,ASR#3; size
14E030:  MOV             R0, SP; int
14E032:  BL              sub_17D4F2
14E036:  ADD             R1, SP, #0x120+var_C; int
14E038:  MOVS            R2, #0x20 ; ' '
14E03A:  MOVS            R3, #1
14E03C:  BL              sub_17D786
14E040:  LDR             R0, =(off_234970 - 0x14E046)
14E042:  ADD             R0, PC; off_234970
14E044:  LDR             R0, [R0]; dword_23DEF0
14E046:  LDR             R0, [R0]
14E048:  BL              sub_E35A0
14E04C:  LDR             R1, [SP,#0x120+var_C]
14E04E:  BL              sub_104A28
14E052:  MOV             R0, SP
14E054:  BL              sub_17D542
14E058:  ADD             SP, SP, #0x118
14E05A:  POP             {R7,PC}
