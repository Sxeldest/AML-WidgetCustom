; =========================================================
; Game Engine Function: sub_F2EE4
; Address            : 0xF2EE4 - 0xF2F2C
; =========================================================

F2EE4:  PUSH            {R4,R5,R7,LR}
F2EE6:  ADD             R7, SP, #8
F2EE8:  MOV             R4, R0
F2EEA:  LDR             R0, [R0,#0x10]
F2EEC:  MOV             R5, R1
F2EEE:  MOVS            R1, #0
F2EF0:  CMP             R4, R0
F2EF2:  STR             R1, [R4,#0x10]
F2EF4:  BEQ             loc_F2EFC
F2EF6:  CBZ             R0, loc_F2F06
F2EF8:  MOVS            R1, #5
F2EFA:  B               loc_F2EFE
F2EFC:  MOVS            R1, #4
F2EFE:  LDR             R2, [R0]
F2F00:  LDR.W           R1, [R2,R1,LSL#2]
F2F04:  BLX             R1
F2F06:  LDR             R0, [R5,#0x10]
F2F08:  CBZ             R0, loc_F2F16
F2F0A:  CMP             R5, R0
F2F0C:  BEQ             loc_F2F1C
F2F0E:  STR             R0, [R4,#0x10]
F2F10:  MOVS            R0, #0
F2F12:  STR             R0, [R5,#0x10]
F2F14:  B               loc_F2F28
F2F16:  MOVS            R0, #0
F2F18:  STR             R0, [R4,#0x10]
F2F1A:  B               loc_F2F28
F2F1C:  STR             R4, [R4,#0x10]
F2F1E:  LDR             R0, [R5,#0x10]
F2F20:  LDR             R1, [R0]
F2F22:  LDR             R2, [R1,#0xC]
F2F24:  MOV             R1, R4
F2F26:  BLX             R2
F2F28:  MOV             R0, R4
F2F2A:  POP             {R4,R5,R7,PC}
