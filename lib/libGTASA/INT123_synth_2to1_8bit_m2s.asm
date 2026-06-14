; =========================================================
; Game Engine Function: INT123_synth_2to1_8bit_m2s
; Address            : 0x237044 - 0x2370F0
; =========================================================

237044:  PUSH            {R4-R7,LR}
237046:  ADD             R7, SP, #0xC
237048:  PUSH.W          {R8,R9,R11}
23704C:  MOV             R4, R1
23704E:  MOVW            R1, #0xB2A0
237052:  LDR             R6, [R4,R1]
237054:  MOVW            R1, #0x91A8
237058:  LDR             R5, [R4,R1]
23705A:  MOVS            R1, #0
23705C:  MOV             R2, R4
23705E:  MOVS            R3, #1
237060:  BLX             R5
237062:  MOVW            R1, #0xB2A8
237066:  LDR             R1, [R4,R1]
237068:  ADD             R1, R6
23706A:  LDRB.W          R2, [R1,#-0x20]
23706E:  LDRB.W          R3, [R1,#-0x1E]
237072:  LDRB.W          R6, [R1,#-0x1C]
237076:  LDRB.W          R5, [R1,#-0x1A]
23707A:  LDRB.W          R4, [R1,#-0x18]
23707E:  LDRB.W          R12, [R1,#-0x16]
237082:  STRB.W          R2, [R1,#-0x1F]
237086:  LDRB.W          LR, [R1,#-0x14]
23708A:  STRB.W          R3, [R1,#-0x1D]
23708E:  LDRB.W          R8, [R1,#-0x12]
237092:  STRB.W          R6, [R1,#-0x1B]
237096:  LDRB.W          R6, [R1,#-0x10]
23709A:  STRB.W          R5, [R1,#-0x19]
23709E:  LDRB.W          R5, [R1,#-0xE]
2370A2:  STRB.W          R4, [R1,#-0x17]
2370A6:  LDRB.W          R9, [R1,#-0xC]
2370AA:  STRB.W          R12, [R1,#-0x15]
2370AE:  LDRB.W          R2, [R1,#-0xA]
2370B2:  STRB.W          LR, [R1,#-0x13]
2370B6:  LDRB.W          R3, [R1,#-8]
2370BA:  STRB.W          R8, [R1,#-0x11]
2370BE:  LDRB.W          R4, [R1,#-6]
2370C2:  STRB.W          R6, [R1,#-0xF]
2370C6:  LDRB.W          R6, [R1,#-4]
2370CA:  STRB.W          R5, [R1,#-0xD]
2370CE:  LDRB.W          R5, [R1,#-2]
2370D2:  STRB.W          R9, [R1,#-0xB]
2370D6:  STRB.W          R2, [R1,#-9]
2370DA:  STRB.W          R3, [R1,#-7]
2370DE:  STRB.W          R4, [R1,#-5]
2370E2:  STRB.W          R6, [R1,#-3]
2370E6:  STRB.W          R5, [R1,#-1]
2370EA:  POP.W           {R8,R9,R11}
2370EE:  POP             {R4-R7,PC}
