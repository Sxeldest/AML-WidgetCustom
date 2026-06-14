; =========================================================
; Game Engine Function: sub_123AA4
; Address            : 0x123AA4 - 0x123AC8
; =========================================================

123AA4:  PUSH            {R4,R6,R7,LR}
123AA6:  ADD             R7, SP, #8
123AA8:  MOV             R4, R0
123AAA:  LDR             R0, =(off_23494C - 0x123AB6)
123AAC:  MOVW            R2, #0xD6D0
123AB0:  LDR             R1, [R4]
123AB2:  ADD             R0, PC; off_23494C
123AB4:  MOVT            R2, #0x66 ; 'f'
123AB8:  LDR             R0, [R0]; dword_23DF24
123ABA:  LDR             R0, [R0]
123ABC:  ADD             R0, R2
123ABE:  MOVS            R2, #0
123AC0:  BL              sub_164196
123AC4:  MOV             R0, R4
123AC6:  POP             {R4,R6,R7,PC}
