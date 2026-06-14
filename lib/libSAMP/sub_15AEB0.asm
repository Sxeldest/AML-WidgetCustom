; =========================================================
; Game Engine Function: sub_15AEB0
; Address            : 0x15AEB0 - 0x15AEE2
; =========================================================

15AEB0:  PUSH            {R4,R6,R7,LR}
15AEB2:  ADD             R7, SP, #8
15AEB4:  SUB             SP, SP, #8
15AEB6:  MOV             R2, R1
15AEB8:  MOV             R4, R0
15AEBA:  MOVS            R0, #0
15AEBC:  SUB.W           R1, R7, #-var_A; int
15AEC0:  STRH.W          R0, [R7,#var_A]
15AEC4:  MOV             R0, R2; int
15AEC6:  MOVS            R2, #0x10
15AEC8:  MOVS            R3, #1
15AECA:  BL              sub_17D786
15AECE:  LDR             R0, [R4,#0x58]
15AED0:  LDRH.W          R1, [R7,#var_A]
15AED4:  BL              sub_152A9A
15AED8:  CBZ             R0, loc_15AEDE
15AEDA:  BL              sub_150BA8
15AEDE:  ADD             SP, SP, #8
15AEE0:  POP             {R4,R6,R7,PC}
