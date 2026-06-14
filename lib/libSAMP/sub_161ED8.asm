; =========================================================
; Game Engine Function: sub_161ED8
; Address            : 0x161ED8 - 0x161F62
; =========================================================

161ED8:  PUSH            {R4-R7,LR}
161EDA:  ADD             R7, SP, #0xC
161EDC:  PUSH.W          {R8,R9,R11}
161EE0:  SUB             SP, SP, #0x38
161EE2:  MOV             R8, R0
161EE4:  ADD             R0, SP, #0x50+var_2C
161EE6:  MOV             R6, R3
161EE8:  MOV             R5, R2
161EEA:  MOV             R9, R1
161EEC:  BL              sub_F06B2
161EF0:  BL              sub_F0734
161EF4:  MOV             R4, R0
161EF6:  LDR             R0, [R7,#arg_0]
161EF8:  LDRB            R1, [R4]
161EFA:  LSLS            R1, R1, #0x1F
161EFC:  BNE             loc_161F04
161EFE:  MOVS            R1, #0
161F00:  STRH            R1, [R4]
161F02:  B               loc_161F14
161F04:  LDR             R1, [R4,#8]
161F06:  MOVS            R2, #0
161F08:  STRB            R2, [R1]
161F0A:  LDRB            R3, [R4]
161F0C:  LDR             R1, [R4]
161F0E:  STR             R2, [R4,#4]
161F10:  LSLS            R2, R3, #0x1F
161F12:  BNE             loc_161F18
161F14:  MOVS            R2, #9
161F16:  B               loc_161F1E
161F18:  SUBS            R1, #2
161F1A:  BIC.W           R2, R1, #1
161F1E:  LDR             R0, [R0]
161F20:  STR             R6, [SP,#0x50+var_28]
161F22:  STR             R0, [SP,#0x50+var_20]
161F24:  MOVS            R0, #0
161F26:  MOVS            R3, #0xCC
161F28:  ADD             R1, SP, #0x50+var_28
161F2A:  STRD.W          R3, R0, [SP,#0x50+var_48]
161F2E:  STRD.W          R1, R0, [SP,#0x50+var_40]
161F32:  ADD             R0, SP, #0x50+var_34
161F34:  MOV             R1, R4
161F36:  MOV             R3, R9
161F38:  STR             R5, [SP,#0x50+var_50]
161F3A:  BL              sub_DCA40
161F3E:  LDRB            R0, [R4]
161F40:  LDRD.W          R2, R1, [R4,#4]
161F44:  ANDS.W          R3, R0, #1
161F48:  ITT EQ
161F4A:  ADDEQ           R1, R4, #1; text
161F4C:  LSREQ           R2, R0, #1
161F4E:  MOV             R0, R8; int
161F50:  BL              sub_ED4F8
161F54:  ADD             R0, SP, #0x50+var_2C
161F56:  BL              sub_F0720
161F5A:  ADD             SP, SP, #0x38 ; '8'
161F5C:  POP.W           {R8,R9,R11}
161F60:  POP             {R4-R7,PC}
