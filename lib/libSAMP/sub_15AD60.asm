; =========================================================
; Game Engine Function: sub_15AD60
; Address            : 0x15AD60 - 0x15AD8C
; =========================================================

15AD60:  PUSH            {R4,R6,R7,LR}
15AD62:  ADD             R7, SP, #8
15AD64:  SUB             SP, SP, #8
15AD66:  MOV             R2, R1
15AD68:  MOV             R4, R0
15AD6A:  MOVS            R0, #0
15AD6C:  SUB.W           R1, R7, #-var_A; int
15AD70:  STRH.W          R0, [R7,#var_A]
15AD74:  MOV             R0, R2; int
15AD76:  MOVS            R2, #0x10
15AD78:  MOVS            R3, #1
15AD7A:  BL              sub_17D786
15AD7E:  LDR             R0, [R4,#0x58]
15AD80:  LDRH.W          R1, [R7,#var_A]
15AD84:  BL              sub_152A84
15AD88:  ADD             SP, SP, #8
15AD8A:  POP             {R4,R6,R7,PC}
