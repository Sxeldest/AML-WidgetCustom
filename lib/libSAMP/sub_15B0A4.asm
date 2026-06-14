; =========================================================
; Game Engine Function: sub_15B0A4
; Address            : 0x15B0A4 - 0x15B0DA
; =========================================================

15B0A4:  PUSH            {R4,R5,R7,LR}
15B0A6:  ADD             R7, SP, #8
15B0A8:  SUB             SP, SP, #8
15B0AA:  MOV             R4, R1
15B0AC:  MOV             R5, R0
15B0AE:  MOVS            R0, #0
15B0B0:  SUB.W           R1, R7, #-var_A; int
15B0B4:  STRH.W          R0, [R7,#var_A]
15B0B8:  MOV             R0, R4; int
15B0BA:  MOVS            R2, #0x10
15B0BC:  MOVS            R3, #1
15B0BE:  BL              sub_17D786
15B0C2:  LDR             R0, [R5,#0x58]
15B0C4:  LDRH.W          R1, [R7,#var_A]
15B0C8:  BL              sub_152A9A
15B0CC:  CBZ             R0, loc_15B0D6
15B0CE:  MOV             R1, R0
15B0D0:  MOV             R0, R4
15B0D2:  BL              sub_15B3F8
15B0D6:  ADD             SP, SP, #8
15B0D8:  POP             {R4,R5,R7,PC}
