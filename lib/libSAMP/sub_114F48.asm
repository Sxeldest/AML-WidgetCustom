; =========================================================
; Game Engine Function: sub_114F48
; Address            : 0x114F48 - 0x114F70
; =========================================================

114F48:  PUSH            {R4-R7,LR}
114F4A:  ADD             R7, SP, #0xC
114F4C:  PUSH.W          {R11}
114F50:  MOV             R4, R2
114F52:  MOV             R5, R1
114F54:  MOV             R6, R0
114F56:  BL              sub_115930
114F5A:  LDR             R0, =(unk_2634B8 - 0x114F66)
114F5C:  MOV             R1, R6
114F5E:  MOV             R2, R5
114F60:  MOV             R3, R4
114F62:  ADD             R0, PC; unk_2634B8
114F64:  POP.W           {R11}
114F68:  POP.W           {R4-R7,LR}
114F6C:  B.W             sub_115A70
