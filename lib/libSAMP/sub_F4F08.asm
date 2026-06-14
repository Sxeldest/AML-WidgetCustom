; =========================================================
; Game Engine Function: sub_F4F08
; Address            : 0xF4F08 - 0xF4F34
; =========================================================

F4F08:  PUSH            {R4,R6,R7,LR}
F4F0A:  ADD             R7, SP, #8
F4F0C:  MOV             R4, R0
F4F0E:  LDR             R0, [R1,#0x10]
F4F10:  CBZ             R0, loc_F4F1E
F4F12:  CMP             R1, R0
F4F14:  BEQ             loc_F4F24
F4F16:  LDR             R1, [R0]
F4F18:  LDR             R1, [R1,#8]
F4F1A:  BLX             R1
F4F1C:  B               loc_F4F20
F4F1E:  MOVS            R0, #0
F4F20:  STR             R0, [R4,#0x10]
F4F22:  B               loc_F4F30
F4F24:  STR             R4, [R4,#0x10]
F4F26:  LDR             R0, [R1,#0x10]
F4F28:  LDR             R1, [R0]
F4F2A:  LDR             R2, [R1,#0xC]
F4F2C:  MOV             R1, R4
F4F2E:  BLX             R2
F4F30:  MOV             R0, R4
F4F32:  POP             {R4,R6,R7,PC}
