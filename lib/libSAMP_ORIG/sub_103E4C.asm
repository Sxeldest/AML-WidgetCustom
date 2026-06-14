; =========================================================
; Game Engine Function: sub_103E4C
; Address            : 0x103E4C - 0x103E96
; =========================================================

103E4C:  PUSH            {R4-R7,LR}
103E4E:  ADD             R7, SP, #0xC
103E50:  PUSH.W          {R11}
103E54:  MOV             R4, R1
103E56:  LDR             R1, =(asc_4F675 - 0x103E60); "(" ...
103E58:  LDR             R6, =(sub_FFB40+1 - 0x103E66)
103E5A:  MOV             R5, R0
103E5C:  ADD             R1, PC; "("
103E5E:  MOV             R0, R4
103E60:  ADDS            R2, R1, #1
103E62:  ADD             R6, PC; sub_FFB40
103E64:  BLX             R6; sub_FFB40
103E66:  LDR             R0, [R5,#8]
103E68:  MOV             R1, R4
103E6A:  BL              sub_FE074
103E6E:  LDR             R1, =(asc_4DCC9 - 0x103E76); ")(" ...
103E70:  MOV             R0, R4
103E72:  ADD             R1, PC; ")("
103E74:  ADDS            R2, R1, #2
103E76:  BLX             R6; sub_FFB40
103E78:  ADD.W           R0, R5, #0xC
103E7C:  MOV             R1, R4
103E7E:  BL              sub_1037E0
103E82:  LDR             R1, =(asc_50037 - 0x103E8C); ")" ...
103E84:  MOV             R0, R4
103E86:  MOV             R3, R6
103E88:  ADD             R1, PC; ")"
103E8A:  ADDS            R2, R1, #1
103E8C:  POP.W           {R11}
103E90:  POP.W           {R4-R7,LR}
103E94:  BX              R3; sub_FFB40
