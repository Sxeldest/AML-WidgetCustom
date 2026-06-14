; =========================================================
; Game Engine Function: sub_161D0C
; Address            : 0x161D0C - 0x161D9C
; =========================================================

161D0C:  PUSH            {R4-R7,LR}
161D0E:  ADD             R7, SP, #0xC
161D10:  PUSH.W          {R8,R9,R11}
161D14:  SUB             SP, SP, #0x38
161D16:  MOV             R8, R0
161D18:  ADD             R0, SP, #0x50+var_2C
161D1A:  MOV             R6, R3
161D1C:  MOV             R5, R2
161D1E:  MOV             R9, R1
161D20:  BL              sub_F06B2
161D24:  BL              sub_F0734
161D28:  MOV             R4, R0
161D2A:  LDR             R0, [R7,#arg_0]
161D2C:  LDRB            R1, [R4]
161D2E:  LSLS            R1, R1, #0x1F
161D30:  BNE             loc_161D38
161D32:  MOVS            R1, #0
161D34:  STRH            R1, [R4]
161D36:  B               loc_161D48
161D38:  LDR             R1, [R4,#8]
161D3A:  MOVS            R2, #0
161D3C:  STRB            R2, [R1]
161D3E:  LDRB            R3, [R4]
161D40:  LDR             R1, [R4]
161D42:  STR             R2, [R4,#4]
161D44:  LSLS            R2, R3, #0x1F
161D46:  BNE             loc_161D4C
161D48:  MOVS            R2, #9
161D4A:  B               loc_161D52
161D4C:  SUBS            R1, #2
161D4E:  BIC.W           R2, R1, #1
161D52:  LDRH            R1, [R6]
161D54:  MOVS            R3, #0
161D56:  LDRB            R0, [R0]
161D58:  STRD.W          R0, R3, [SP,#0x50+var_20]
161D5C:  STRD.W          R1, R3, [SP,#0x50+var_28]
161D60:  ADD             R0, SP, #0x50+var_28
161D62:  MOVS            R1, #0x22 ; '"'
161D64:  STRD.W          R0, R3, [SP,#0x50+var_40]
161D68:  ADD             R0, SP, #0x50+var_34
161D6A:  STRD.W          R1, R3, [SP,#0x50+var_48]
161D6E:  MOV             R1, R4
161D70:  MOV             R3, R9
161D72:  STR             R5, [SP,#0x50+var_50]
161D74:  BL              sub_DCA40
161D78:  LDRB            R0, [R4]
161D7A:  LDRD.W          R2, R1, [R4,#4]
161D7E:  ANDS.W          R3, R0, #1
161D82:  ITT EQ
161D84:  ADDEQ           R1, R4, #1; text
161D86:  LSREQ           R2, R0, #1
161D88:  MOV             R0, R8; int
161D8A:  BL              sub_ED4F8
161D8E:  ADD             R0, SP, #0x50+var_2C
161D90:  BL              sub_F0720
161D94:  ADD             SP, SP, #0x38 ; '8'
161D96:  POP.W           {R8,R9,R11}
161D9A:  POP             {R4-R7,PC}
