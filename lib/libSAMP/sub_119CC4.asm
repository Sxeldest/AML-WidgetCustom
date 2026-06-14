; =========================================================
; Game Engine Function: sub_119CC4
; Address            : 0x119CC4 - 0x119CF2
; =========================================================

119CC4:  PUSH            {R4-R7,LR}
119CC6:  ADD             R7, SP, #0xC
119CC8:  PUSH.W          {R8}
119CCC:  SUB             SP, SP, #8
119CCE:  MOV             R4, R3
119CD0:  MOV             R8, R2
119CD2:  MOV             R6, R1
119CD4:  MOV             R5, R0
119CD6:  BL              sub_11ACF8
119CDA:  LDR             R0, =(unk_263590 - 0x119CE6)
119CDC:  MOV             R1, R5
119CDE:  MOV             R2, R6
119CE0:  MOV             R3, R8
119CE2:  ADD             R0, PC; unk_263590
119CE4:  STR             R4, [SP,#0x18+var_18]
119CE6:  BL              sub_11AE5E
119CEA:  ADD             SP, SP, #8
119CEC:  POP.W           {R8}
119CF0:  POP             {R4-R7,PC}
