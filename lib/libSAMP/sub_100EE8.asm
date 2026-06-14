; =========================================================
; Game Engine Function: sub_100EE8
; Address            : 0x100EE8 - 0x100F7C
; =========================================================

100EE8:  PUSH            {R4-R7,LR}
100EEA:  ADD             R7, SP, #0xC
100EEC:  PUSH.W          {R8,R9,R11}
100EF0:  MOV             R4, R0
100EF2:  LDR             R0, =(off_234A6C - 0x100EF8)
100EF4:  ADD             R0, PC; off_234A6C
100EF6:  LDR             R5, [R0]; dword_2402D0
100EF8:  LDR             R0, [R4,#4]
100EFA:  LDR             R1, [R5]
100EFC:  LDRB            R0, [R0]
100EFE:  LDRB.W          R8, [R1]
100F02:  BL              sub_F8224
100F06:  LDR             R1, =(off_234A70 - 0x100F0E)
100F08:  LDR             R2, [R5]
100F0A:  ADD             R1, PC; off_234A70
100F0C:  LDR             R6, [R1]; dword_2402DC
100F0E:  STRB            R0, [R2]
100F10:  LDR             R1, [R4,#4]
100F12:  LDR             R0, [R6]
100F14:  LDRH.W          R9, [R0]
100F18:  LDRB            R0, [R1]
100F1A:  BL              sub_F8224
100F1E:  LDR             R1, [R6]
100F20:  SUBS            R2, R0, #4
100F22:  IT NE
100F24:  MOVNE           R2, R0
100F26:  STRH            R2, [R1]
100F28:  BL              sub_F82C8
100F2C:  LDR             R0, [R4,#4]
100F2E:  LDRB            R0, [R0]
100F30:  BL              sub_F82F8
100F34:  BL              sub_F8280
100F38:  LDR             R0, [R4,#4]
100F3A:  LDRB            R0, [R0]
100F3C:  BL              sub_F8230
100F40:  BL              sub_F83C8
100F44:  LDR             R0, [R4,#4]
100F46:  LDRB            R0, [R0]
100F48:  BL              sub_F8400
100F4C:  LDR             R0, =(off_247510 - 0x100F56)
100F4E:  LDRD.W          R2, R1, [R4,#8]
100F52:  ADD             R0, PC; off_247510
100F54:  LDR             R1, [R1]
100F56:  LDR             R3, [R0]
100F58:  LDR             R0, [R2]
100F5A:  BLX             R3
100F5C:  LDR             R0, [R5]
100F5E:  STRB.W          R8, [R0]
100F62:  LDR             R0, [R6]
100F64:  STRH.W          R9, [R0]
100F68:  BL              sub_F8390
100F6C:  BL              sub_F8298
100F70:  POP.W           {R8,R9,R11}
100F74:  POP.W           {R4-R7,LR}
100F78:  B.W             sub_F8268
