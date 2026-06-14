; =========================================================
; Game Engine Function: sub_125F2C
; Address            : 0x125F2C - 0x125F5E
; =========================================================

125F2C:  PUSH            {R4-R7,LR}
125F2E:  ADD             R7, SP, #0xC
125F30:  PUSH.W          {R11}
125F34:  MOV             R5, R0
125F36:  LDR             R0, [R0,#4]
125F38:  MOV             R4, R1
125F3A:  CMP             R0, R1
125F3C:  BEQ             loc_125F56
125F3E:  MOV             R6, R0
125F40:  LDRB.W          R1, [R6,#-0xC]!
125F44:  LSLS            R1, R1, #0x1F
125F46:  ITT NE
125F48:  LDRNE.W         R0, [R0,#-4]; void *
125F4C:  BLXNE           j__ZdlPv; operator delete(void *)
125F50:  CMP             R6, R4
125F52:  MOV             R0, R6
125F54:  BNE             loc_125F40
125F56:  STR             R4, [R5,#4]
125F58:  POP.W           {R11}
125F5C:  POP             {R4-R7,PC}
