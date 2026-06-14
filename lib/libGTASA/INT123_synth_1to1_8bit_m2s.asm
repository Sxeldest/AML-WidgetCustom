; =========================================================
; Game Engine Function: INT123_synth_1to1_8bit_m2s
; Address            : 0x23698C - 0x236AB8
; =========================================================

23698C:  PUSH            {R4-R7,LR}
23698E:  ADD             R7, SP, #0xC
236990:  PUSH.W          {R8,R9,R11}
236994:  MOV             R4, R1
236996:  MOVW            R1, #0xB2A0
23699A:  LDR             R6, [R4,R1]
23699C:  MOVW            R1, #0x9198
2369A0:  LDR             R5, [R4,R1]
2369A2:  MOVS            R1, #0
2369A4:  MOV             R2, R4
2369A6:  MOVS            R3, #1
2369A8:  BLX             R5
2369AA:  MOVW            R1, #0xB2A8
2369AE:  LDR             R1, [R4,R1]
2369B0:  ADD             R1, R6
2369B2:  LDRB.W          R2, [R1,#-0x40]
2369B6:  LDRB.W          R3, [R1,#-0x3E]
2369BA:  LDRB.W          R6, [R1,#-0x3C]
2369BE:  LDRB.W          R5, [R1,#-0x3A]
2369C2:  LDRB.W          R4, [R1,#-0x38]
2369C6:  LDRB.W          R12, [R1,#-0x36]
2369CA:  STRB.W          R2, [R1,#-0x3F]
2369CE:  LDRB.W          R2, [R1,#-0x34]
2369D2:  STRB.W          R3, [R1,#-0x3D]
2369D6:  LDRB.W          R3, [R1,#-0x32]
2369DA:  STRB.W          R6, [R1,#-0x3B]
2369DE:  LDRB.W          R6, [R1,#-0x30]
2369E2:  STRB.W          R5, [R1,#-0x39]
2369E6:  LDRB.W          R5, [R1,#-0x2E]
2369EA:  STRB.W          R4, [R1,#-0x37]
2369EE:  LDRB.W          R4, [R1,#-0x2C]
2369F2:  STRB.W          R12, [R1,#-0x35]
2369F6:  LDRB.W          R12, [R1,#-0x2A]
2369FA:  STRB.W          R2, [R1,#-0x33]
2369FE:  LDRB.W          R2, [R1,#-0x28]
236A02:  STRB.W          R3, [R1,#-0x31]
236A06:  LDRB.W          R3, [R1,#-0x26]
236A0A:  STRB.W          R6, [R1,#-0x2F]
236A0E:  LDRB.W          R6, [R1,#-0x24]
236A12:  STRB.W          R5, [R1,#-0x2D]
236A16:  LDRB.W          R5, [R1,#-0x22]
236A1A:  STRB.W          R4, [R1,#-0x2B]
236A1E:  LDRB.W          R4, [R1,#-0x20]
236A22:  STRB.W          R12, [R1,#-0x29]
236A26:  LDRB.W          R12, [R1,#-0x1E]
236A2A:  STRB.W          R2, [R1,#-0x27]
236A2E:  LDRB.W          R2, [R1,#-0x1C]
236A32:  STRB.W          R3, [R1,#-0x25]
236A36:  LDRB.W          R3, [R1,#-0x1A]
236A3A:  STRB.W          R6, [R1,#-0x23]
236A3E:  LDRB.W          R6, [R1,#-0x18]
236A42:  STRB.W          R5, [R1,#-0x21]
236A46:  LDRB.W          R5, [R1,#-0x16]
236A4A:  STRB.W          R4, [R1,#-0x1F]
236A4E:  LDRB.W          R4, [R1,#-0x14]
236A52:  STRB.W          R12, [R1,#-0x1D]
236A56:  LDRB.W          R12, [R1,#-0x12]
236A5A:  STRB.W          R2, [R1,#-0x1B]
236A5E:  LDRB.W          LR, [R1,#-0x10]
236A62:  STRB.W          R3, [R1,#-0x19]
236A66:  LDRB.W          R8, [R1,#-0xE]
236A6A:  STRB.W          R6, [R1,#-0x17]
236A6E:  LDRB.W          R9, [R1,#-0xC]
236A72:  STRB.W          R5, [R1,#-0x15]
236A76:  LDRB.W          R5, [R1,#-0xA]
236A7A:  STRB.W          R4, [R1,#-0x13]
236A7E:  LDRB.W          R4, [R1,#-8]
236A82:  STRB.W          R12, [R1,#-0x11]
236A86:  LDRB.W          R2, [R1,#-6]
236A8A:  STRB.W          LR, [R1,#-0xF]
236A8E:  LDRB.W          R3, [R1,#-4]
236A92:  STRB.W          R8, [R1,#-0xD]
236A96:  LDRB.W          R6, [R1,#-2]
236A9A:  STRB.W          R9, [R1,#-0xB]
236A9E:  STRB.W          R5, [R1,#-9]
236AA2:  STRB.W          R4, [R1,#-7]
236AA6:  STRB.W          R2, [R1,#-5]
236AAA:  STRB.W          R3, [R1,#-3]
236AAE:  STRB.W          R6, [R1,#-1]
236AB2:  POP.W           {R8,R9,R11}
236AB6:  POP             {R4-R7,PC}
