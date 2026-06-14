; =========================================================
; Game Engine Function: sub_147ED4
; Address            : 0x147ED4 - 0x147F2C
; =========================================================

147ED4:  PUSH            {R4,R5,R7,LR}
147ED6:  ADD             R7, SP, #8
147ED8:  MOV             R4, R0
147EDA:  LDR             R0, [R0]
147EDC:  CMP             R0, #1
147EDE:  BEQ             loc_147EEE
147EE0:  CMP             R0, #2
147EE2:  BNE             loc_147EF6
147EE4:  MOV             R0, R4
147EE6:  MOVS            R1, #0
147EE8:  BL              sub_147F30
147EEC:  B               loc_147EF6
147EEE:  MOV             R0, R4
147EF0:  MOVS            R1, #0
147EF2:  BL              sub_148084
147EF6:  LDR             R0, =(off_234A24 - 0x147F06)
147EF8:  MOVW            R1, #0xFFFF
147EFC:  STRH            R1, [R4,#8]
147EFE:  MOV.W           R1, #0xFFFFFFFF
147F02:  ADD             R0, PC; off_234A24
147F04:  STR             R1, [R4,#4]
147F06:  LDR             R0, [R0]; dword_23DEEC
147F08:  LDR             R0, [R0]
147F0A:  LDR.W           R5, [R0,#0x84]
147F0E:  MOVS            R0, #0
147F10:  STR             R0, [R4]
147F12:  LDRB.W          R0, [R5,#0x50]
147F16:  CMP             R0, #1
147F18:  BEQ             loc_147F24
147F1A:  LDR             R0, [R5]
147F1C:  MOVS            R1, #1
147F1E:  LDR             R2, [R0,#0x24]
147F20:  MOV             R0, R5
147F22:  BLX             R2
147F24:  MOVS            R0, #1
147F26:  STRB.W          R0, [R5,#0x50]
147F2A:  POP             {R4,R5,R7,PC}
