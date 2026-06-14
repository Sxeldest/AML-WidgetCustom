; =========================================================
; Game Engine Function: sub_15AE00
; Address            : 0x15AE00 - 0x15AE58
; =========================================================

15AE00:  PUSH            {R4-R7,LR}
15AE02:  ADD             R7, SP, #0xC
15AE04:  PUSH.W          {R11}
15AE08:  SUB             SP, SP, #8
15AE0A:  MOV             R5, R1
15AE0C:  MOV             R4, R0
15AE0E:  MOVS            R0, #0
15AE10:  SUB.W           R1, R7, #-var_12; int
15AE14:  STRH.W          R0, [R7,#var_12]
15AE18:  MOVS            R2, #0x10
15AE1A:  STR             R0, [SP,#0x18+var_18]
15AE1C:  MOV             R0, R5; int
15AE1E:  MOVS            R3, #1
15AE20:  BL              sub_17D786
15AE24:  MOV             R1, SP; int
15AE26:  MOV             R0, R5; int
15AE28:  MOVS            R2, #0x20 ; ' '
15AE2A:  MOVS            R3, #1
15AE2C:  BL              sub_17D786
15AE30:  MOV             R0, R4
15AE32:  BL              sub_155B70
15AE36:  MOV             R5, R0
15AE38:  LDR             R0, [R4,#0x58]
15AE3A:  LDRH.W          R1, [R7,#var_12]
15AE3E:  LDR             R6, [SP,#0x18+var_18]
15AE40:  BL              sub_152A9A
15AE44:  CBZ             R0, loc_15AE50
15AE46:  SUBS            R1, R5, R6
15AE48:  BIC.W           R1, R1, R1,ASR#31
15AE4C:  BL              sub_150C40
15AE50:  ADD             SP, SP, #8
15AE52:  POP.W           {R11}
15AE56:  POP             {R4-R7,PC}
