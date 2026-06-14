; =========================================================
; Game Engine Function: sub_E0B5C
; Address            : 0xE0B5C - 0xE0B80
; =========================================================

E0B5C:  PUSH            {R4,R6,R7,LR}
E0B5E:  ADD             R7, SP, #8
E0B60:  SUB             SP, SP, #0x10
E0B62:  MOV             R3, R2
E0B64:  MOV             R2, R1
E0B66:  LDR             R1, [R0,#8]
E0B68:  MOV             R4, R0
E0B6A:  MOV             R0, SP
E0B6C:  BL              sub_E098C
E0B70:  LDMFD.W         SP, {R0-R3}
E0B74:  BL              sub_E0AF0
E0B78:  LDR             R1, [R4]
E0B7A:  STR             R0, [R1,#4]
E0B7C:  ADD             SP, SP, #0x10
E0B7E:  POP             {R4,R6,R7,PC}
