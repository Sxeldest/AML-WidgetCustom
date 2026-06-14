; =========================================================
; Game Engine Function: sub_E0B80
; Address            : 0xE0B80 - 0xE0BA0
; =========================================================

E0B80:  PUSH            {R4,R6,R7,LR}
E0B82:  ADD             R7, SP, #8
E0B84:  SUB             SP, SP, #0x10
E0B86:  MOV             R4, R0
E0B88:  MOV             R0, SP
E0B8A:  MOV             R1, R4
E0B8C:  BL              sub_E09F8
E0B90:  LDMFD.W         SP, {R0-R3}
E0B94:  BL              sub_E0AF0
E0B98:  LDR             R1, [R4]
E0B9A:  STR             R0, [R1,#4]
E0B9C:  ADD             SP, SP, #0x10
E0B9E:  POP             {R4,R6,R7,PC}
