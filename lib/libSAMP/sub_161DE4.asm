; =========================================================
; Game Engine Function: sub_161DE4
; Address            : 0x161DE4 - 0x161E8E
; =========================================================

161DE4:  PUSH            {R4-R7,LR}
161DE6:  ADD             R7, SP, #0xC
161DE8:  PUSH.W          {R8-R10}
161DEC:  SUB             SP, SP, #0x38
161DEE:  MOV             R8, R0
161DF0:  ADD             R0, SP, #0x50+var_2C
161DF2:  MOV             R6, R3
161DF4:  MOV             R10, R2
161DF6:  MOV             R9, R1
161DF8:  BL              sub_F06B2
161DFC:  BL              sub_F0734
161E00:  LDRB            R1, [R0]
161E02:  MOV             R4, R0
161E04:  LDR.W           R12, [R7,#arg_0]
161E08:  LSLS            R1, R1, #0x1F
161E0A:  BNE             loc_161E12
161E0C:  MOVS            R1, #0
161E0E:  STRH            R1, [R4]
161E10:  B               loc_161E22
161E12:  LDR             R1, [R4,#8]
161E14:  MOVS            R2, #0
161E16:  STRB            R2, [R1]
161E18:  LDRB            R3, [R4]
161E1A:  LDR             R1, [R4]
161E1C:  STR             R2, [R4,#4]
161E1E:  LSLS            R2, R3, #0x1F
161E20:  BNE             loc_161E26
161E22:  MOVS            R2, #9
161E24:  B               loc_161E2C
161E26:  SUBS            R1, #2
161E28:  BIC.W           R2, R1, #1
161E2C:  LDRB            R5, [R6]
161E2E:  MOV.W           LR, #0
161E32:  LDR.W           R0, [R12]
161E36:  STR             R0, [SP,#0x50+var_20]
161E38:  ANDS.W          R0, R5, #1
161E3C:  LDRD.W          R1, R3, [R6,#4]
161E40:  STR.W           LR, [SP,#0x50+var_1C]
161E44:  IT EQ
161E46:  LSREQ           R1, R5, #1
161E48:  STR             R1, [SP,#0x50+var_24]
161E4A:  IT EQ
161E4C:  ADDEQ           R3, R6, #1
161E4E:  STR             R3, [SP,#0x50+var_28]
161E50:  ADD             R0, SP, #0x50+var_28
161E52:  MOVS            R1, #0x2D ; '-'
161E54:  STRD.W          R0, LR, [SP,#0x50+var_40]
161E58:  ADD             R0, SP, #0x50+var_34
161E5A:  STRD.W          R1, LR, [SP,#0x50+var_48]
161E5E:  MOV             R1, R4
161E60:  MOV             R3, R9
161E62:  STR.W           R10, [SP,#0x50+var_50]
161E66:  BL              sub_DCA40
161E6A:  LDRB            R0, [R4]
161E6C:  LDRD.W          R2, R1, [R4,#4]
161E70:  ANDS.W          R3, R0, #1
161E74:  ITT EQ
161E76:  ADDEQ           R1, R4, #1; text
161E78:  LSREQ           R2, R0, #1
161E7A:  MOV             R0, R8; int
161E7C:  BL              sub_ED4F8
161E80:  ADD             R0, SP, #0x50+var_2C
161E82:  BL              sub_F0720
161E86:  ADD             SP, SP, #0x38 ; '8'
161E88:  POP.W           {R8-R10}
161E8C:  POP             {R4-R7,PC}
