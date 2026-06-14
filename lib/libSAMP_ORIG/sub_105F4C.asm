; =========================================================
; Game Engine Function: sub_105F4C
; Address            : 0x105F4C - 0x105F88
; =========================================================

105F4C:  PUSH            {R4-R7,LR}
105F4E:  ADD             R7, SP, #0xC
105F50:  PUSH.W          {R11}
105F54:  MOV             R5, R0
105F56:  LDR             R0, [R0,#8]
105F58:  MOV             R4, R1
105F5A:  BL              sub_FE074
105F5E:  LDR             R1, =(asc_4A928 - 0x105F68); "<" ...
105F60:  MOV             R0, R4
105F62:  LDR             R6, =(sub_FFB40+1 - 0x105F6C)
105F64:  ADD             R1, PC; "<"
105F66:  ADDS            R2, R1, #1
105F68:  ADD             R6, PC; sub_FFB40
105F6A:  BLX             R6; sub_FFB40
105F6C:  LDRD.W          R1, R2, [R5,#0xC]
105F70:  MOV             R0, R4
105F72:  BLX             R6; sub_FFB40
105F74:  LDR             R1, =(asc_4DB85 - 0x105F7E); ">" ...
105F76:  MOV             R0, R4
105F78:  MOV             R3, R6
105F7A:  ADD             R1, PC; ">"
105F7C:  ADDS            R2, R1, #1
105F7E:  POP.W           {R11}
105F82:  POP.W           {R4-R7,LR}
105F86:  BX              R3; sub_FFB40
