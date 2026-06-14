; =========================================================
; Game Engine Function: sub_E0ACC
; Address            : 0xE0ACC - 0xE0AEE
; =========================================================

E0ACC:  PUSH            {R4,R6,R7,LR}
E0ACE:  ADD             R7, SP, #8
E0AD0:  SUB             SP, SP, #0x10
E0AD2:  MOV             R4, R0
E0AD4:  MOV             R2, R1
E0AD6:  MOV             R0, SP
E0AD8:  MOV             R1, R4
E0ADA:  BL              sub_E093C
E0ADE:  LDMFD.W         SP, {R0-R3}
E0AE2:  BL              sub_E0AF0
E0AE6:  LDR             R1, [R4]
E0AE8:  STR             R0, [R1,#4]
E0AEA:  ADD             SP, SP, #0x10
E0AEC:  POP             {R4,R6,R7,PC}
