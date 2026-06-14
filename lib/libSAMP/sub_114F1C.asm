; =========================================================
; Game Engine Function: sub_114F1C
; Address            : 0x114F1C - 0x114F44
; =========================================================

114F1C:  PUSH            {R4-R7,LR}
114F1E:  ADD             R7, SP, #0xC
114F20:  PUSH.W          {R11}
114F24:  MOV             R4, R2
114F26:  MOV             R5, R1
114F28:  MOV             R6, R0
114F2A:  BL              sub_1157C8
114F2E:  LDR             R0, =(unk_263498 - 0x114F3A)
114F30:  MOV             R1, R6
114F32:  MOV             R2, R5
114F34:  MOV             R3, R4
114F36:  ADD             R0, PC; unk_263498
114F38:  POP.W           {R11}
114F3C:  POP.W           {R4-R7,LR}
114F40:  B.W             sub_115908
