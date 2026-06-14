; =========================================================
; Game Engine Function: sub_104EF8
; Address            : 0x104EF8 - 0x104F4E
; =========================================================

104EF8:  PUSH            {R4,R5,R7,LR}
104EFA:  ADD             R7, SP, #8
104EFC:  MOV             R5, R0
104EFE:  MOV             R4, R1
104F00:  MOV             R0, R1
104F02:  MOVS            R1, #0x5B ; '['
104F04:  BL              sub_FE09A
104F08:  LDR             R0, [R5,#8]
104F0A:  MOV             R1, R4
104F0C:  BL              sub_FE074
104F10:  LDR             R1, =(asc_4DCCC - 0x104F18); " ... " ...
104F12:  MOV             R0, R4
104F14:  ADD             R1, PC; " ... "
104F16:  ADDS            R2, R1, #5
104F18:  BL              sub_FFB40
104F1C:  LDR             R0, [R5,#0xC]
104F1E:  MOV             R1, R4
104F20:  BL              sub_FE074
104F24:  MOV             R0, R4
104F26:  MOVS            R1, #0x5D ; ']'
104F28:  BL              sub_FE09A
104F2C:  LDR             R0, [R5,#0x10]
104F2E:  LDRB            R1, [R0,#4]
104F30:  SUBS            R1, #0x49 ; 'I'
104F32:  CMP             R1, #2
104F34:  BCC             loc_104F44
104F36:  LDR             R1, =(asc_4C60E - 0x104F3E); " = " ...
104F38:  MOV             R0, R4
104F3A:  ADD             R1, PC; " = "
104F3C:  ADDS            R2, R1, #3
104F3E:  BL              sub_FFB40
104F42:  LDR             R0, [R5,#0x10]
104F44:  MOV             R1, R4
104F46:  POP.W           {R4,R5,R7,LR}
104F4A:  B.W             sub_FE074
