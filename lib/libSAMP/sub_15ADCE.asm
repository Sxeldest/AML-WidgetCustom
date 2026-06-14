; =========================================================
; Game Engine Function: sub_15ADCE
; Address            : 0x15ADCE - 0x15AE00
; =========================================================

15ADCE:  PUSH            {R4,R6,R7,LR}
15ADD0:  ADD             R7, SP, #8
15ADD2:  SUB             SP, SP, #8
15ADD4:  MOV             R2, R1
15ADD6:  MOV             R4, R0
15ADD8:  MOVS            R0, #0
15ADDA:  SUB.W           R1, R7, #-var_A; int
15ADDE:  STRH.W          R0, [R7,#var_A]
15ADE2:  MOV             R0, R2; int
15ADE4:  MOVS            R2, #0x10
15ADE6:  MOVS            R3, #1
15ADE8:  BL              sub_17D786
15ADEC:  LDR             R0, [R4,#0x58]
15ADEE:  LDRH.W          R1, [R7,#var_A]
15ADF2:  BL              sub_152A9A
15ADF6:  CBZ             R0, loc_15ADFC
15ADF8:  BL              sub_150C24
15ADFC:  ADD             SP, SP, #8
15ADFE:  POP             {R4,R6,R7,PC}
