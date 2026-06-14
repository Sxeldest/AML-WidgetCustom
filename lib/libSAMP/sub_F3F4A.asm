; =========================================================
; Game Engine Function: sub_F3F4A
; Address            : 0xF3F4A - 0xF3F74
; =========================================================

F3F4A:  PUSH            {R4,R6,R7,LR}
F3F4C:  ADD             R7, SP, #8
F3F4E:  LDR             R4, [R0,#0xC]
F3F50:  LDRD.W          LR, R12, [R0,#4]
F3F54:  LDRB            R3, [R3]
F3F56:  ADD.W           R0, LR, R4,ASR#1
F3F5A:  LDR             R2, [R2]
F3F5C:  LDR             R1, [R1]
F3F5E:  LSLS            R4, R4, #0x1F
F3F60:  ITT NE
F3F62:  LDRNE           R4, [R0]
F3F64:  LDRNE.W         R12, [R4,R12]
F3F68:  CMP             R3, #0
F3F6A:  IT NE
F3F6C:  MOVNE           R3, #1
F3F6E:  POP.W           {R4,R6,R7,LR}
F3F72:  BX              R12
