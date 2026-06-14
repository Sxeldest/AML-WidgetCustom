; =========================================================
; Game Engine Function: sub_160CD8
; Address            : 0x160CD8 - 0x160D84
; =========================================================

160CD8:  PUSH            {R4-R7,LR}
160CDA:  ADD             R7, SP, #0xC
160CDC:  PUSH.W          {R8-R10}
160CE0:  SUB             SP, SP, #0x48
160CE2:  MOV             R8, R0
160CE4:  ADD             R0, SP, #0x60+var_3C
160CE6:  MOV             R6, R3
160CE8:  MOV             R10, R2
160CEA:  MOV             R9, R1
160CEC:  BL              sub_F06B2
160CF0:  BL              sub_F0734
160CF4:  LDRB            R2, [R0]
160CF6:  MOV             R4, R0
160CF8:  LDR.W           R12, [R7,#arg_8]
160CFC:  LDRD.W          R3, LR, [R7,#arg_0]
160D00:  LSLS            R2, R2, #0x1F
160D02:  BNE             loc_160D0A
160D04:  MOVS            R2, #0
160D06:  STRH            R2, [R4]
160D08:  B               loc_160D1A
160D0A:  LDR             R2, [R4,#8]
160D0C:  MOVS            R0, #0
160D0E:  STRB            R0, [R2]
160D10:  LDRB            R1, [R4]
160D12:  LDR             R2, [R4]
160D14:  STR             R0, [R4,#4]
160D16:  LSLS            R0, R1, #0x1F
160D18:  BNE             loc_160D1E
160D1A:  MOVS            R2, #9
160D1C:  B               loc_160D24
160D1E:  SUBS            R0, R2, #2
160D20:  BIC.W           R2, R0, #1
160D24:  LDR             R0, [R6]
160D26:  MOVS            R5, #0
160D28:  LDR             R1, [R3]
160D2A:  LDR.W           R3, [LR]
160D2E:  LDR.W           R6, [R12]
160D32:  ADD.W           R12, SP, #0x60+var_28
160D36:  STR             R5, [SP,#0x60+var_1C]
160D38:  STM.W           R12, {R3,R5,R6}
160D3C:  STRD.W          R1, R5, [SP,#0x60+var_30]
160D40:  STRD.W          R0, R5, [SP,#0x60+var_38]
160D44:  ADD             R0, SP, #0x60+var_38
160D46:  MOVW            R1, #0x2121
160D4A:  STRD.W          R0, R5, [SP,#0x60+var_50]
160D4E:  ADD             R0, SP, #0x60+var_44
160D50:  STRD.W          R1, R5, [SP,#0x60+var_58]
160D54:  MOV             R1, R4
160D56:  MOV             R3, R9
160D58:  STR.W           R10, [SP,#0x60+var_60]
160D5C:  BL              sub_DCA40
160D60:  LDRB            R0, [R4]
160D62:  LDRD.W          R2, R1, [R4,#4]
160D66:  ANDS.W          R3, R0, #1
160D6A:  ITT EQ
160D6C:  ADDEQ           R1, R4, #1; text
160D6E:  LSREQ           R2, R0, #1
160D70:  MOV             R0, R8; int
160D72:  BL              sub_ED4F8
160D76:  ADD             R0, SP, #0x60+var_3C
160D78:  BL              sub_F0720
160D7C:  ADD             SP, SP, #0x48 ; 'H'
160D7E:  POP.W           {R8-R10}
160D82:  POP             {R4-R7,PC}
