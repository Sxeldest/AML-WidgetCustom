; =========================================================
; Game Engine Function: sub_160B2C
; Address            : 0x160B2C - 0x160BB8
; =========================================================

160B2C:  PUSH            {R4-R7,LR}
160B2E:  ADD             R7, SP, #0xC
160B30:  PUSH.W          {R8,R9,R11}
160B34:  SUB             SP, SP, #0x38
160B36:  MOV             R8, R0
160B38:  ADD             R0, SP, #0x50+var_2C
160B3A:  MOV             R6, R3
160B3C:  MOV             R5, R2
160B3E:  MOV             R9, R1
160B40:  BL              sub_F06B2
160B44:  BL              sub_F0734
160B48:  MOV             R4, R0
160B4A:  LDR             R0, [R7,#arg_0]
160B4C:  LDRB            R1, [R4]
160B4E:  LSLS            R1, R1, #0x1F
160B50:  BNE             loc_160B58
160B52:  MOVS            R1, #0
160B54:  STRH            R1, [R4]
160B56:  B               loc_160B68
160B58:  LDR             R1, [R4,#8]
160B5A:  MOVS            R2, #0
160B5C:  STRB            R2, [R1]
160B5E:  LDRB            R3, [R4]
160B60:  LDR             R1, [R4]
160B62:  STR             R2, [R4,#4]
160B64:  LSLS            R2, R3, #0x1F
160B66:  BNE             loc_160B6C
160B68:  MOVS            R2, #9
160B6A:  B               loc_160B72
160B6C:  SUBS            R1, #2
160B6E:  BIC.W           R2, R1, #1
160B72:  MOVS            R1, #0
160B74:  LDR             R3, [R6]
160B76:  STR             R1, [SP,#0x50+var_24]
160B78:  STR             R0, [SP,#0x50+var_20]
160B7A:  STR             R3, [SP,#0x50+var_28]
160B7C:  ADD             R0, SP, #0x50+var_28
160B7E:  MOVS            R3, #0xC1
160B80:  STRD.W          R0, R1, [SP,#0x50+var_40]
160B84:  ADD             R0, SP, #0x50+var_34
160B86:  STRD.W          R3, R1, [SP,#0x50+var_48]
160B8A:  MOV             R1, R4
160B8C:  MOV             R3, R9
160B8E:  STR             R5, [SP,#0x50+var_50]
160B90:  BL              sub_DCA40
160B94:  LDRB            R0, [R4]
160B96:  LDRD.W          R2, R1, [R4,#4]
160B9A:  ANDS.W          R3, R0, #1
160B9E:  ITT EQ
160BA0:  ADDEQ           R1, R4, #1; text
160BA2:  LSREQ           R2, R0, #1
160BA4:  MOV             R0, R8; int
160BA6:  BL              sub_ED4F8
160BAA:  ADD             R0, SP, #0x50+var_2C
160BAC:  BL              sub_F0720
160BB0:  ADD             SP, SP, #0x38 ; '8'
160BB2:  POP.W           {R8,R9,R11}
160BB6:  POP             {R4-R7,PC}
