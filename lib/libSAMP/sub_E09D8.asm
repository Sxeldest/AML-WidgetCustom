; =========================================================
; Game Engine Function: sub_E09D8
; Address            : 0xE09D8 - 0xE09F8
; =========================================================

E09D8:  PUSH            {R4,R6,R7,LR}
E09DA:  ADD             R7, SP, #8
E09DC:  SUB             SP, SP, #0x10
E09DE:  MOV             R4, R0
E09E0:  MOV             R0, SP
E09E2:  MOV             R1, R4
E09E4:  BL              sub_E09F8
E09E8:  LDMFD.W         SP, {R0-R3}
E09EC:  BL              sub_E08D0
E09F0:  LDR             R1, [R4]
E09F2:  STR             R0, [R1]
E09F4:  ADD             SP, SP, #0x10
E09F6:  POP             {R4,R6,R7,PC}
