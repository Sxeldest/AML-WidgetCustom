; =========================================================
; Game Engine Function: sub_15AD8C
; Address            : 0x15AD8C - 0x15ADCE
; =========================================================

15AD8C:  PUSH            {R4,R5,R7,LR}
15AD8E:  ADD             R7, SP, #8
15AD90:  SUB             SP, SP, #8
15AD92:  MOV             R4, R1
15AD94:  MOV             R5, R0
15AD96:  MOVS            R0, #0
15AD98:  SUB.W           R1, R7, #-var_A; int
15AD9C:  STRH.W          R0, [R7,#var_A]
15ADA0:  MOV             R0, R4; int
15ADA2:  MOVS            R2, #0x10
15ADA4:  MOVS            R3, #1
15ADA6:  BL              sub_17D786
15ADAA:  ADD             R1, SP, #0x10+var_C; int
15ADAC:  MOV             R0, R4; int
15ADAE:  MOVS            R2, #0x10
15ADB0:  MOVS            R3, #1
15ADB2:  BL              sub_17D786
15ADB6:  LDR             R0, [R5,#0x58]
15ADB8:  LDRH.W          R1, [R7,#var_A]
15ADBC:  BL              sub_152A9A
15ADC0:  CBZ             R0, loc_15ADCA
15ADC2:  LDRH.W          R1, [SP,#0x10+var_C]
15ADC6:  BL              sub_150C2A
15ADCA:  ADD             SP, SP, #8
15ADCC:  POP             {R4,R5,R7,PC}
