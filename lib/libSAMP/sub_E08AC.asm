; =========================================================
; Game Engine Function: sub_E08AC
; Address            : 0xE08AC - 0xE08CE
; =========================================================

E08AC:  PUSH            {R4,R6,R7,LR}
E08AE:  ADD             R7, SP, #8
E08B0:  SUB             SP, SP, #0x10
E08B2:  MOV             R4, R0
E08B4:  MOV             R2, R1
E08B6:  MOV             R0, SP
E08B8:  MOV             R1, R4
E08BA:  BL              sub_E093C
E08BE:  LDMFD.W         SP, {R0-R3}
E08C2:  BL              sub_E08D0
E08C6:  LDR             R1, [R4]
E08C8:  STR             R0, [R1]
E08CA:  ADD             SP, SP, #0x10
E08CC:  POP             {R4,R6,R7,PC}
