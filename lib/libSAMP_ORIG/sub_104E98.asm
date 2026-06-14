; =========================================================
; Game Engine Function: sub_104E98
; Address            : 0x104E98 - 0x104EF0
; =========================================================

104E98:  PUSH            {R4,R5,R7,LR}
104E9A:  ADD             R7, SP, #8
104E9C:  MOV             R5, R0
104E9E:  LDRB            R0, [R0,#0x10]
104EA0:  MOV             R4, R1
104EA2:  CBZ             R0, loc_104EBE
104EA4:  MOV             R0, R4
104EA6:  MOVS            R1, #0x5B ; '['
104EA8:  BL              sub_FE09A
104EAC:  LDR             R0, [R5,#8]
104EAE:  MOV             R1, R4
104EB0:  BL              sub_FE074
104EB4:  MOV             R0, R4
104EB6:  MOVS            R1, #0x5D ; ']'
104EB8:  BL              sub_FE09A
104EBC:  B               loc_104ECE
104EBE:  MOV             R0, R4
104EC0:  MOVS            R1, #0x2E ; '.'
104EC2:  BL              sub_FE09A
104EC6:  LDR             R0, [R5,#8]
104EC8:  MOV             R1, R4
104ECA:  BL              sub_FE074
104ECE:  LDR             R0, [R5,#0xC]
104ED0:  LDRB            R1, [R0,#4]
104ED2:  SUBS            R1, #0x49 ; 'I'
104ED4:  CMP             R1, #2
104ED6:  BCC             loc_104EE6
104ED8:  LDR             R1, =(asc_4C60E - 0x104EE0); " = " ...
104EDA:  MOV             R0, R4
104EDC:  ADD             R1, PC; " = "
104EDE:  ADDS            R2, R1, #3
104EE0:  BL              sub_FFB40
104EE4:  LDR             R0, [R5,#0xC]
104EE6:  MOV             R1, R4
104EE8:  POP.W           {R4,R5,R7,LR}
104EEC:  B.W             sub_FE074
