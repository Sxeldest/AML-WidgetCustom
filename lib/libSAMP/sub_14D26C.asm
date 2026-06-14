; =========================================================
; Game Engine Function: sub_14D26C
; Address            : 0x14D26C - 0x14D2E0
; =========================================================

14D26C:  PUSH            {R7,LR}
14D26E:  MOV             R7, SP
14D270:  SUB             SP, SP, #0x118
14D272:  LDRD.W          R1, R0, [R0]; src
14D276:  MOVS            R3, #0
14D278:  ASRS            R2, R0, #0x1F
14D27A:  ADD.W           R0, R0, R2,LSR#29
14D27E:  MOVS            R2, #1
14D280:  ADD.W           R2, R2, R0,ASR#3; size
14D284:  MOV             R0, SP; int
14D286:  BL              sub_17D4F2
14D28A:  SUBS            R1, R7, #2; int
14D28C:  MOVS            R2, #0x10
14D28E:  MOVS            R3, #1
14D290:  BL              sub_17D786
14D294:  SUBS            R1, R7, #3; int
14D296:  MOV             R0, SP; int
14D298:  MOVS            R2, #8
14D29A:  MOVS            R3, #1
14D29C:  BL              sub_17D786
14D2A0:  LDRB.W          R0, [R7,#-3]
14D2A4:  CMP             R0, #2
14D2A6:  BEQ             loc_14D2B2
14D2A8:  CMP             R0, #3
14D2AA:  ITE NE
14D2AC:  MOVNE           R2, #3
14D2AE:  MOVEQ           R2, #0xE
14D2B0:  B               loc_14D2B4
14D2B2:  MOVS            R2, #0xF
14D2B4:  STRB.W          R2, [R7,#-3]
14D2B8:  MOVW            R1, #0x13BC
14D2BC:  LDR             R0, =(off_23496C - 0x14D2C2)
14D2BE:  ADD             R0, PC; off_23496C
14D2C0:  LDR             R0, [R0]; dword_23DEF4
14D2C2:  LDR             R0, [R0]
14D2C4:  LDR.W           R0, [R0,#0x3B0]
14D2C8:  LDR             R0, [R0]
14D2CA:  LDR             R0, [R0,R1]
14D2CC:  LDRH.W          R1, [R7,#-2]
14D2D0:  STRB            R2, [R0,#0x10]
14D2D2:  BL              sub_141468
14D2D6:  MOV             R0, SP
14D2D8:  BL              sub_17D542
14D2DC:  ADD             SP, SP, #0x118
14D2DE:  POP             {R7,PC}
