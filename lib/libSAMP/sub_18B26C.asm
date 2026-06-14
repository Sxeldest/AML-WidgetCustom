; =========================================================
; Game Engine Function: sub_18B26C
; Address            : 0x18B26C - 0x18B304
; =========================================================

18B26C:  PUSH            {R4-R7,LR}
18B26E:  ADD             R7, SP, #0xC
18B270:  PUSH.W          {R8,R9,R11}
18B274:  SUB             SP, SP, #0x40
18B276:  MOV             R8, R0
18B278:  ADD             R0, SP, #0x58+var_34
18B27A:  MOV             R6, R3
18B27C:  MOV             R5, R2
18B27E:  MOV             R9, R1
18B280:  BL              sub_F06B2
18B284:  BL              sub_F0734
18B288:  LDRB            R2, [R0]
18B28A:  MOV             R4, R0
18B28C:  LDRD.W          R1, R12, [R7,#arg_0]
18B290:  LSLS            R2, R2, #0x1F
18B292:  BNE             loc_18B29A
18B294:  MOVS            R2, #0
18B296:  STRH            R2, [R4]
18B298:  B               loc_18B2AA
18B29A:  LDR             R2, [R4,#8]
18B29C:  MOVS            R3, #0
18B29E:  STRB            R3, [R2]
18B2A0:  LDRB            R0, [R4]
18B2A2:  LDR             R2, [R4]
18B2A4:  STR             R3, [R4,#4]
18B2A6:  LSLS            R0, R0, #0x1F
18B2A8:  BNE             loc_18B2AE
18B2AA:  MOVS            R2, #9
18B2AC:  B               loc_18B2B4
18B2AE:  SUBS            R0, R2, #2
18B2B0:  BIC.W           R2, R0, #1
18B2B4:  LDR             R1, [R1]
18B2B6:  MOVS            R0, #0
18B2B8:  LDR.W           R3, [R12]
18B2BC:  STR             R0, [SP,#0x58+var_1C]
18B2BE:  STR             R0, [SP,#0x58+var_24]
18B2C0:  STR             R6, [SP,#0x58+var_30]
18B2C2:  STR             R3, [SP,#0x58+var_20]
18B2C4:  STR             R1, [SP,#0x58+var_28]
18B2C6:  MOV.W           R3, #0x22C
18B2CA:  ADD             R1, SP, #0x58+var_30
18B2CC:  STRD.W          R3, R0, [SP,#0x58+var_50]
18B2D0:  MOV             R3, R9
18B2D2:  STRD.W          R1, R0, [SP,#0x58+var_48]
18B2D6:  ADD             R0, SP, #0x58+var_3C
18B2D8:  MOV             R1, R4
18B2DA:  STR             R5, [SP,#0x58+var_58]
18B2DC:  BL              sub_DCA40
18B2E0:  LDRB            R0, [R4]
18B2E2:  LDRD.W          R2, R1, [R4,#4]
18B2E6:  ANDS.W          R3, R0, #1
18B2EA:  ITT EQ
18B2EC:  ADDEQ           R1, R4, #1; text
18B2EE:  LSREQ           R2, R0, #1
18B2F0:  MOV             R0, R8; int
18B2F2:  BL              sub_ED4F8
18B2F6:  ADD             R0, SP, #0x58+var_34
18B2F8:  BL              sub_F0720
18B2FC:  ADD             SP, SP, #0x40 ; '@'
18B2FE:  POP.W           {R8,R9,R11}
18B302:  POP             {R4-R7,PC}
