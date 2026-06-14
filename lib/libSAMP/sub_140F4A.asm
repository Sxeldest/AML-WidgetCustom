; =========================================================
; Game Engine Function: sub_140F4A
; Address            : 0x140F4A - 0x140F8C
; =========================================================

140F4A:  PUSH            {R4-R7,LR}
140F4C:  ADD             R7, SP, #0xC
140F4E:  PUSH.W          {R8}
140F52:  MOV             R8, R0
140F54:  LDR             R0, [R1,#0xC]
140F56:  LSLS            R2, R0, #0xE
140F58:  BMI             loc_140F6A
140F5A:  AND.W           R0, R0, #3
140F5E:  CMP             R0, #3
140F60:  BNE             loc_140F7E
140F62:  MOV             R0, R8
140F64:  BL              sub_140D58
140F68:  B               loc_140F84
140F6A:  LDM             R1!, {R2-R6}
140F6C:  MOV             R0, R8
140F6E:  STM             R0!, {R2-R6}
140F70:  LDM             R1!, {R2-R6}
140F72:  STM             R0!, {R2-R6}
140F74:  LDM.W           R1, {R2-R6,R12}
140F78:  STM.W           R0, {R2-R6,R12}
140F7C:  B               loc_140F84
140F7E:  MOV             R0, R8
140F80:  BL              sub_140DF6
140F84:  MOV             R0, R8
140F86:  POP.W           {R8}
140F8A:  POP             {R4-R7,PC}
