; =========================================================
; Game Engine Function: sub_103E18
; Address            : 0x103E18 - 0x103E4A
; =========================================================

103E18:  PUSH            {R4-R7,LR}
103E1A:  ADD             R7, SP, #0xC
103E1C:  PUSH.W          {R8,R9,R11}
103E20:  SUBS            R6, R3, R2
103E22:  MOV             R8, R0
103E24:  ADD.W           R0, R1, #0x198
103E28:  MOV             R9, R3
103E2A:  MOV             R1, R6
103E2C:  MOV             R5, R2
103E2E:  BL              sub_FFA98
103E32:  MOV             R4, R0
103E34:  MOV             R0, R5; src
103E36:  MOV             R1, R9; int
103E38:  MOV             R2, R4; dest
103E3A:  BL              sub_10370C
103E3E:  ASRS            R0, R6, #2
103E40:  STRD.W          R4, R0, [R8]
103E44:  POP.W           {R8,R9,R11}
103E48:  POP             {R4-R7,PC}
