; =========================================================
; Game Engine Function: sub_160DCC
; Address            : 0x160DCC - 0x160EA6
; =========================================================

160DCC:  PUSH            {R4-R7,LR}
160DCE:  ADD             R7, SP, #0xC
160DD0:  PUSH.W          {R8-R11}
160DD4:  SUB             SP, SP, #0x6C
160DD6:  MOV             R10, R0
160DD8:  ADD             R0, SP, #0x88+var_64
160DDA:  MOV             R6, R3
160DDC:  MOV             R8, R2
160DDE:  MOV             R9, R1
160DE0:  BL              sub_F06B2
160DE4:  BL              sub_F0734
160DE8:  MOV             R4, R0
160DEA:  LDRD.W          R11, R1, [R7,#arg_C]
160DEE:  LDRB            R2, [R4]
160DF0:  LDR             R0, [R7,#arg_4]
160DF2:  LSLS            R2, R2, #0x1F
160DF4:  BNE             loc_160DFC
160DF6:  MOVS            R2, #0
160DF8:  STRH            R2, [R4]
160DFA:  B               loc_160E1A
160DFC:  LDR             R2, [R4,#8]
160DFE:  MOV.W           R12, #0
160E02:  MOV             R3, R1
160E04:  STRB.W          R12, [R2]
160E08:  LDRB.W          LR, [R4]
160E0C:  LDR             R2, [R4]
160E0E:  STR.W           R12, [R4,#4]
160E12:  MOVS.W          R1, LR,LSL#31
160E16:  MOV             R1, R3
160E18:  BNE             loc_160E1E
160E1A:  MOVS            R2, #9
160E1C:  B               loc_160E26
160E1E:  SUBS            R1, R2, #2
160E20:  BIC.W           R2, R1, #1
160E24:  MOV             R1, R3
160E26:  LDR.W           R12, [R0]
160E2A:  LDR             R0, [R7,#arg_18]
160E2C:  LDR.W           LR, [R11]
160E30:  LDR             R3, [R7,#arg_14]
160E32:  LDR.W           R11, [R0]
160E36:  LDR             R0, [R7,#arg_0]
160E38:  LDR             R3, [R3]
160E3A:  STR             R3, [SP,#0x88+var_30]
160E3C:  MOVS            R3, #0
160E3E:  LDR             R5, [R0]
160E40:  LDR             R0, [R7,#arg_8]
160E42:  LDR             R1, [R1]
160E44:  STRD.W          R1, R3, [SP,#0x88+var_38]
160E48:  ADD             R1, SP, #0x88+var_48
160E4A:  LDR             R0, [R0]
160E4C:  LDR             R6, [R6]
160E4E:  STRD.W          R5, R3, [SP,#0x88+var_58]
160E52:  STRD.W          R6, R3, [SP,#0x88+var_60]
160E56:  STRD.W          R3, R11, [SP,#0x88+var_2C]
160E5A:  STM.W           R1, {R0,R3,LR}
160E5E:  STR.W           R12, [SP,#0x88+var_50]
160E62:  MOVW            R1, #0x2C22
160E66:  ADD             R0, SP, #0x88+var_60
160E68:  MOVT            R1, #0xC22C
160E6C:  STRD.W          R0, R3, [SP,#0x88+var_78]
160E70:  ADD             R0, SP, #0x88+var_6C
160E72:  STRD.W          R1, R3, [SP,#0x88+var_80]
160E76:  MOV             R1, R4
160E78:  MOV             R3, R9
160E7A:  STR.W           R8, [SP,#0x88+var_88]
160E7E:  BL              sub_DCA40
160E82:  MOV             R0, R10; int
160E84:  LDRB            R6, [R4]
160E86:  LDRD.W          R2, R1, [R4,#4]
160E8A:  ANDS.W          R3, R6, #1
160E8E:  ITT EQ
160E90:  ADDEQ           R1, R4, #1; text
160E92:  LSREQ           R2, R6, #1
160E94:  BL              sub_ED4F8
160E98:  ADD             R0, SP, #0x88+var_64
160E9A:  BL              sub_F0720
160E9E:  ADD             SP, SP, #0x6C ; 'l'
160EA0:  POP.W           {R8-R11}
160EA4:  POP             {R4-R7,PC}
