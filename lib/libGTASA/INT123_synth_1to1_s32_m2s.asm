; =========================================================
; Game Engine Function: INT123_synth_1to1_s32_m2s
; Address            : 0x239A28 - 0x239B56
; =========================================================

239A28:  PUSH            {R4-R7,LR}
239A2A:  ADD             R7, SP, #0xC
239A2C:  PUSH.W          {R8,R9,R11}
239A30:  MOV             R4, R1
239A32:  MOVW            R1, #0xB2A0
239A36:  LDR             R6, [R4,R1]
239A38:  MOVW            R1, #0x91A0
239A3C:  LDR             R5, [R4,R1]
239A3E:  MOVS            R1, #0
239A40:  MOV             R2, R4
239A42:  MOVS            R3, #1
239A44:  BLX             R5
239A46:  MOVW            R1, #0xB2A8
239A4A:  MOV             R2, #0xFFFFFF00
239A4E:  LDR             R1, [R4,R1]
239A50:  ADD             R1, R6
239A52:  LDR             R2, [R1,R2]
239A54:  LDR.W           R3, [R1,#-0xF8]
239A58:  LDR.W           R6, [R1,#-0xF0]
239A5C:  LDR.W           R5, [R1,#-0xE8]
239A60:  LDR.W           R4, [R1,#-0xE0]
239A64:  LDR.W           R12, [R1,#-0xD8]
239A68:  STR.W           R2, [R1,#-0xFC]
239A6C:  LDR.W           R2, [R1,#-0xD0]
239A70:  STR.W           R3, [R1,#-0xF4]
239A74:  LDR.W           R3, [R1,#-0xC8]
239A78:  STR.W           R6, [R1,#-0xEC]
239A7C:  LDR.W           R6, [R1,#-0xC0]
239A80:  STR.W           R5, [R1,#-0xE4]
239A84:  LDR.W           R5, [R1,#-0xB8]
239A88:  STR.W           R4, [R1,#-0xDC]
239A8C:  LDR.W           R4, [R1,#-0xB0]
239A90:  STR.W           R12, [R1,#-0xD4]
239A94:  LDR.W           R12, [R1,#-0xA8]
239A98:  STR.W           R2, [R1,#-0xCC]
239A9C:  LDR.W           R2, [R1,#-0xA0]
239AA0:  STR.W           R3, [R1,#-0xC4]
239AA4:  LDR.W           R3, [R1,#-0x98]
239AA8:  STR.W           R6, [R1,#-0xBC]
239AAC:  LDR.W           R6, [R1,#-0x90]
239AB0:  STR.W           R5, [R1,#-0xB4]
239AB4:  LDR.W           R5, [R1,#-0x88]
239AB8:  STR.W           R4, [R1,#-0xAC]
239ABC:  LDR.W           R4, [R1,#-0x80]
239AC0:  STR.W           R12, [R1,#-0xA4]
239AC4:  LDR.W           R12, [R1,#-0x78]
239AC8:  STR.W           R2, [R1,#-0x9C]
239ACC:  LDR.W           R2, [R1,#-0x70]
239AD0:  STR.W           R3, [R1,#-0x94]
239AD4:  LDR.W           R3, [R1,#-0x68]
239AD8:  STR.W           R6, [R1,#-0x8C]
239ADC:  LDR.W           R6, [R1,#-0x60]
239AE0:  STR.W           R5, [R1,#-0x84]
239AE4:  LDR.W           R5, [R1,#-0x58]
239AE8:  STR.W           R4, [R1,#-0x7C]
239AEC:  LDR.W           R4, [R1,#-0x50]
239AF0:  STR.W           R12, [R1,#-0x74]
239AF4:  LDR.W           R12, [R1,#-0x48]
239AF8:  STR.W           R2, [R1,#-0x6C]
239AFC:  LDR.W           LR, [R1,#-0x40]
239B00:  STR.W           R3, [R1,#-0x64]
239B04:  LDR.W           R8, [R1,#-0x38]
239B08:  STR.W           R6, [R1,#-0x5C]
239B0C:  LDR.W           R9, [R1,#-0x30]
239B10:  STR.W           R5, [R1,#-0x54]
239B14:  LDR.W           R5, [R1,#-0x28]
239B18:  STR.W           R4, [R1,#-0x4C]
239B1C:  LDR.W           R4, [R1,#-0x20]
239B20:  STR.W           R12, [R1,#-0x44]
239B24:  LDR.W           R2, [R1,#-0x18]
239B28:  STR.W           LR, [R1,#-0x3C]
239B2C:  LDR.W           R3, [R1,#-0x10]
239B30:  STR.W           R8, [R1,#-0x34]
239B34:  LDR.W           R6, [R1,#-8]
239B38:  STR.W           R9, [R1,#-0x2C]
239B3C:  STR.W           R5, [R1,#-0x24]
239B40:  STR.W           R4, [R1,#-0x1C]
239B44:  STR.W           R2, [R1,#-0x14]
239B48:  STR.W           R3, [R1,#-0xC]
239B4C:  STR.W           R6, [R1,#-4]
239B50:  POP.W           {R8,R9,R11}
239B54:  POP             {R4-R7,PC}
