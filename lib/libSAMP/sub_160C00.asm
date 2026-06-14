; =========================================================
; Game Engine Function: sub_160C00
; Address            : 0x160C00 - 0x160C90
; =========================================================

160C00:  PUSH            {R4-R7,LR}
160C02:  ADD             R7, SP, #0xC
160C04:  PUSH.W          {R8,R9,R11}
160C08:  SUB             SP, SP, #0x38
160C0A:  MOV             R8, R0
160C0C:  ADD             R0, SP, #0x50+var_2C
160C0E:  MOV             R6, R3
160C10:  MOV             R5, R2
160C12:  MOV             R9, R1
160C14:  BL              sub_F06B2
160C18:  BL              sub_F0734
160C1C:  MOV             R4, R0
160C1E:  LDR             R0, [R7,#arg_0]
160C20:  LDRB            R1, [R4]
160C22:  LSLS            R1, R1, #0x1F
160C24:  BNE             loc_160C2C
160C26:  MOVS            R1, #0
160C28:  STRH            R1, [R4]
160C2A:  B               loc_160C3C
160C2C:  LDR             R1, [R4,#8]
160C2E:  MOVS            R2, #0
160C30:  STRB            R2, [R1]
160C32:  LDRB            R3, [R4]
160C34:  LDR             R1, [R4]
160C36:  STR             R2, [R4,#4]
160C38:  LSLS            R2, R3, #0x1F
160C3A:  BNE             loc_160C40
160C3C:  MOVS            R2, #9
160C3E:  B               loc_160C46
160C40:  SUBS            R1, #2
160C42:  BIC.W           R2, R1, #1
160C46:  LDR             R1, [R6]
160C48:  MOVS            R3, #0
160C4A:  LDR             R0, [R0]
160C4C:  STRD.W          R0, R3, [SP,#0x50+var_20]
160C50:  STRD.W          R1, R3, [SP,#0x50+var_28]
160C54:  ADD             R0, SP, #0x50+var_28
160C56:  MOVS            R1, #0x21 ; '!'
160C58:  STRD.W          R0, R3, [SP,#0x50+var_40]
160C5C:  ADD             R0, SP, #0x50+var_34
160C5E:  STRD.W          R1, R3, [SP,#0x50+var_48]
160C62:  MOV             R1, R4
160C64:  MOV             R3, R9
160C66:  STR             R5, [SP,#0x50+var_50]
160C68:  BL              sub_DCA40
160C6C:  LDRB            R0, [R4]
160C6E:  LDRD.W          R2, R1, [R4,#4]
160C72:  ANDS.W          R3, R0, #1
160C76:  ITT EQ
160C78:  ADDEQ           R1, R4, #1; text
160C7A:  LSREQ           R2, R0, #1
160C7C:  MOV             R0, R8; int
160C7E:  BL              sub_ED4F8
160C82:  ADD             R0, SP, #0x50+var_2C
160C84:  BL              sub_F0720
160C88:  ADD             SP, SP, #0x38 ; '8'
160C8A:  POP.W           {R8,R9,R11}
160C8E:  POP             {R4-R7,PC}
