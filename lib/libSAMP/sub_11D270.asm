; =========================================================
; Game Engine Function: sub_11D270
; Address            : 0x11D270 - 0x11D2FE
; =========================================================

11D270:  PUSH            {R4-R7,LR}
11D272:  ADD             R7, SP, #0xC
11D274:  PUSH.W          {R8,R9,R11}
11D278:  SUB             SP, SP, #0x38
11D27A:  MOV             R8, R0
11D27C:  ADD             R0, SP, #0x50+var_2C
11D27E:  MOV             R6, R3
11D280:  MOV             R5, R2
11D282:  MOV             R9, R1
11D284:  BL              sub_F06B2
11D288:  BL              sub_F0734
11D28C:  MOV             R4, R0
11D28E:  LDR             R0, [R7,#arg_0]
11D290:  LDRB            R1, [R4]
11D292:  LSLS            R1, R1, #0x1F
11D294:  BNE             loc_11D29C
11D296:  MOVS            R1, #0
11D298:  STRH            R1, [R4]
11D29A:  B               loc_11D2AC
11D29C:  LDR             R1, [R4,#8]
11D29E:  MOVS            R2, #0
11D2A0:  STRB            R2, [R1]
11D2A2:  LDRB            R3, [R4]
11D2A4:  LDR             R1, [R4]
11D2A6:  STR             R2, [R4,#4]
11D2A8:  LSLS            R2, R3, #0x1F
11D2AA:  BNE             loc_11D2B0
11D2AC:  MOVS            R2, #9
11D2AE:  B               loc_11D2B6
11D2B0:  SUBS            R1, #2
11D2B2:  BIC.W           R2, R1, #1
11D2B6:  LDR             R0, [R0]
11D2B8:  MOVS            R3, #0
11D2BA:  LDRH            R1, [R6]
11D2BC:  STRD.W          R1, R3, [SP,#0x50+var_28]
11D2C0:  STR             R0, [SP,#0x50+var_20]
11D2C2:  ADD             R0, SP, #0x50+var_28
11D2C4:  MOVS            R1, #0xC2
11D2C6:  STRD.W          R0, R3, [SP,#0x50+var_40]
11D2CA:  ADD             R0, SP, #0x50+var_34
11D2CC:  STRD.W          R1, R3, [SP,#0x50+var_48]
11D2D0:  MOV             R1, R4
11D2D2:  MOV             R3, R9
11D2D4:  STR             R5, [SP,#0x50+var_50]
11D2D6:  BL              sub_DCA40
11D2DA:  LDRB            R0, [R4]
11D2DC:  LDRD.W          R2, R1, [R4,#4]
11D2E0:  ANDS.W          R3, R0, #1
11D2E4:  ITT EQ
11D2E6:  ADDEQ           R1, R4, #1; text
11D2E8:  LSREQ           R2, R0, #1
11D2EA:  MOV             R0, R8; int
11D2EC:  BL              sub_ED4F8
11D2F0:  ADD             R0, SP, #0x50+var_2C
11D2F2:  BL              sub_F0720
11D2F6:  ADD             SP, SP, #0x38 ; '8'
11D2F8:  POP.W           {R8,R9,R11}
11D2FC:  POP             {R4-R7,PC}
