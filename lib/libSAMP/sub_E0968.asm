; =========================================================
; Game Engine Function: sub_E0968
; Address            : 0xE0968 - 0xE098C
; =========================================================

E0968:  PUSH            {R4,R6,R7,LR}
E096A:  ADD             R7, SP, #8
E096C:  SUB             SP, SP, #0x10
E096E:  MOV             R3, R2
E0970:  MOV             R2, R1
E0972:  LDR             R1, [R0,#8]
E0974:  MOV             R4, R0
E0976:  MOV             R0, SP
E0978:  BL              sub_E098C
E097C:  LDMFD.W         SP, {R0-R3}
E0980:  BL              sub_E08D0
E0984:  LDR             R1, [R4]
E0986:  STR             R0, [R1]
E0988:  ADD             SP, SP, #0x10
E098A:  POP             {R4,R6,R7,PC}
