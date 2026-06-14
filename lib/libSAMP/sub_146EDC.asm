; =========================================================
; Game Engine Function: sub_146EDC
; Address            : 0x146EDC - 0x146F5C
; =========================================================

146EDC:  PUSH            {R4,R6,R7,LR}
146EDE:  ADD             R7, SP, #8
146EE0:  SUB             SP, SP, #0x130
146EE2:  LDRD.W          R1, R0, [R0]; src
146EE6:  MOVS            R3, #0
146EE8:  ASRS            R2, R0, #0x1F
146EEA:  ADD.W           R0, R0, R2,LSR#29
146EEE:  MOVS            R2, #1
146EF0:  ADD.W           R2, R2, R0,ASR#3; size
146EF4:  ADD             R0, SP, #0x138+var_12C; int
146EF6:  BL              sub_17D4F2
146EFA:  ADD             R4, SP, #0x138+var_14
146EFC:  MOVS            R2, #0x20 ; ' '
146EFE:  MOVS            R3, #1
146F00:  MOV             R1, R4; int
146F02:  BL              sub_17D786
146F06:  ADDS            R1, R4, #4; int
146F08:  ADD             R0, SP, #0x138+var_12C; int
146F0A:  MOVS            R2, #0x20 ; ' '
146F0C:  MOVS            R3, #1
146F0E:  BL              sub_17D786
146F12:  ADD.W           R1, R4, #8; int
146F16:  ADD             R0, SP, #0x138+var_12C; int
146F18:  MOVS            R2, #0x20 ; ' '
146F1A:  MOVS            R3, #1
146F1C:  BL              sub_17D786
146F20:  ADD             R0, SP, #0x138+var_12C; int
146F22:  ADD             R1, SP, #0x138+var_18; int
146F24:  MOVS            R2, #0x20 ; ' '
146F26:  MOVS            R3, #1
146F28:  BL              sub_17D786
146F2C:  LDR             R0, =(off_234970 - 0x146F36)
146F2E:  VLDR            S0, [SP,#0x138+var_18]
146F32:  ADD             R0, PC; off_234970
146F34:  VSTR            S0, [SP,#0x138+var_130]
146F38:  LDR             R4, [R0]; dword_23DEF0
146F3A:  VSTR            S0, [SP,#0x138+var_134]
146F3E:  VSTR            S0, [SP,#0x138+var_138]
146F42:  LDR             R0, [R4]
146F44:  ADD             R1, SP, #0x138+var_14
146F46:  MOV             R2, SP
146F48:  BL              sub_FA038
146F4C:  LDR             R0, [R4]
146F4E:  MOVS            R1, #1
146F50:  STRB            R1, [R0]
146F52:  ADD             R0, SP, #0x138+var_12C
146F54:  BL              sub_17D542
146F58:  ADD             SP, SP, #0x130
146F5A:  POP             {R4,R6,R7,PC}
