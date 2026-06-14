; =========================================================
; Game Engine Function: sub_15B1AC
; Address            : 0x15B1AC - 0x15B1D8
; =========================================================

15B1AC:  PUSH            {R4,R6,R7,LR}
15B1AE:  ADD             R7, SP, #8
15B1B0:  SUB             SP, SP, #8
15B1B2:  MOV             R2, R1
15B1B4:  MOV             R4, R0
15B1B6:  MOVS            R0, #0
15B1B8:  SUB.W           R1, R7, #-var_A; int
15B1BC:  STRH.W          R0, [R7,#var_A]
15B1C0:  MOV             R0, R2; int
15B1C2:  MOVS            R2, #0x10
15B1C4:  MOVS            R3, #1
15B1C6:  BL              sub_17D786
15B1CA:  LDRH.W          R1, [R7,#var_A]
15B1CE:  MOV             R0, R4
15B1D0:  BL              sub_155354
15B1D4:  ADD             SP, SP, #8
15B1D6:  POP             {R4,R6,R7,PC}
