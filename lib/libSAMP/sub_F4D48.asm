; =========================================================
; Game Engine Function: sub_F4D48
; Address            : 0xF4D48 - 0xF4D7A
; =========================================================

F4D48:  PUSH            {R4-R7,LR}
F4D4A:  ADD             R7, SP, #0xC
F4D4C:  PUSH.W          {R11}
F4D50:  MOV             R4, R0
F4D52:  LDRD.W          R5, R0, [R0]
F4D56:  CMP             R0, R5
F4D58:  BEQ             loc_F4D72
F4D5A:  MOV             R6, R0
F4D5C:  LDRB.W          R1, [R6,#-0xC]!
F4D60:  LSLS            R1, R1, #0x1F
F4D62:  ITT NE
F4D64:  LDRNE.W         R0, [R0,#-4]; void *
F4D68:  BLXNE           j__ZdlPv; operator delete(void *)
F4D6C:  CMP             R6, R5
F4D6E:  MOV             R0, R6
F4D70:  BNE             loc_F4D5C
F4D72:  STR             R5, [R4,#4]
F4D74:  POP.W           {R11}
F4D78:  POP             {R4-R7,PC}
